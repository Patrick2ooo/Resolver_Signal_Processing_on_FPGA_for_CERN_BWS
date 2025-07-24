/*********************************************************************************
*
* File      : 	demod.vhd
* Description:  Reference for the quadrature demodulator module.
*
*
* Author    : 	Patrick Maillard
* Date      : 	08.07.2025
* Version   : 	1.0
*
**| Modifications |***************************************************************
* Version    Auteur 		    Date               Description
* 1.0 		 Patrick Maillard	08.07.2025        Initial version
**********************************************************************************/
`timescale 1ns / 1ps
module demod #(parameter ADC_RESOLUTION = 12, parameter NCO_RESOLUTION = 16, parameter VECTOR_TRANSLATE_RESOLUTION = 14, parameter R_MAX = 2000, parameter N = 3, parameter M = 3, parameter R = 1) 
			(input logic                clk,
			input logic                 reset,
            input logic signed [15:0] cic_compensation_factor,
			input logic signed [ADC_RESOLUTION - 1:0]   modulated_signal,
			output logic signed [VECTOR_TRANSLATE_RESOLUTION-1:0]  demodulated_signal
            );

    parameter MUL_RESOLUTION = ADC_RESOLUTION + NCO_RESOLUTION;
    localparam lut_size = 65536;
    logic signed [15:0] sine;
    logic signed [15:0] cosine;
    logic signed [15:0] cos_table [0:lut_size-1];
    logic signed [15:0] sin_table [0:lut_size-1];

    parameter real PI = 3.14159265358979323846;

    logic signed [MUL_RESOLUTION-1:0] I_cic_out, Q_cic_out;
    logic decimation_en_I, decimation_en_Q;
    logic signed [MUL_RESOLUTION-1:0]  I_filt, Q_filt;

    /***********************************************/
    // NCO sine and cosine generation
    /***********************************************/
    initial begin
        integer i;
        for (i = 0; i < lut_size; i++) begin
            sin_table[i] = $rtoi(((1 << (NCO_RESOLUTION-1)) - 1) * $sin(2 * PI * i / lut_size));
            cos_table[i] = $rtoi(((1 << (NCO_RESOLUTION-1)) - 1) * $cos(2 * PI * i / lut_size));
        end
    end

    logic [15:0] phase_acc;
    // Phase increment based on the NCO formula
    localparam int phase_inc = 10000 * (1 << 16) / 40000000;
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            phase_acc <= 0;
        else
            phase_acc <= phase_acc + phase_inc;
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            sine <= 0;
            cosine <= 0;
        end else begin
            sine <= sin_table[phase_acc[15:0]];
            cosine <= cos_table[phase_acc[15:0]];
        end
    end

    /***********************************************/
    // Quadrature demodulation multiplication
    /***********************************************/
    logic signed [MUL_RESOLUTION-1:0] I, Q;
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            I = 0;
            Q = 0;
        end else begin
            I = (modulated_signal * cosine) >>> (NCO_RESOLUTION-1);
            Q = (modulated_signal * sine) >>> (NCO_RESOLUTION-1);
        end
    end


    /***********************************************/
    // CIC decimation for I and Q channels
    /***********************************************/
    cic_decimator_ref #(
        .WIDTH(MUL_RESOLUTION),
        .R_MAX(R_MAX),
        .N(N),
        .M(M),
        .R(R)
    ) cic_I (
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .inData(I),
        .outData(I_cic_out),
        .decimation_en(decimation_en_I)
    );

    cic_decimator_ref #(
        .WIDTH(MUL_RESOLUTION),
        .R_MAX(R_MAX),
        .N(N),
        .M(M),
        .R(R)
    ) cic_Q (
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .inData(Q),
        .outData(Q_cic_out),
        .decimation_en(decimation_en_Q)
    );

    /***********************************************/
    // Demodulated signal calculation
    /***********************************************/
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            I_filt <= 0;
            Q_filt <= 0;
            demodulated_signal <= 0;
        end else begin
            if (decimation_en_I) begin
            I_filt <= I_cic_out;
            end else begin
            I_filt <= I_filt;
            end
            if (decimation_en_Q) begin
            Q_filt <= Q_cic_out;
            end else begin
            Q_filt <= Q_filt;
            end
            demodulated_signal <= $hypot(I_filt, Q_filt) * (Q_filt >= 0 ? 1 : -1);
        end
    end

endmodule