/*********************************************************************************
*
* File      : 	cic_decimator.vhd
* Description:  Reference for the CIC decimator module.
*
*
* Author    : 	Patrick Maillard
* Date      : 	07.07.2025
* Version   : 	1.0
*
**| Modifications |***************************************************************
* Version    Auteur 		    Date               Description
* 1.0 		 Patrick Maillard	07.07.2025        Initial version
**********************************************************************************/
`timescale 1ns / 1ps

module cic_decimator_ref#(parameter WIDTH = 16, parameter R_MAX, parameter N, parameter M, parameter R) (
    input  logic clk,
    input  logic reset,
    input  logic signed [15:0] cic_compensation_factor,
    input  logic signed [WIDTH-1:0] inData,
    output logic signed [WIDTH-1:0] outData,
    output logic decimation_en
);

    // Warning : $clog2 is not working with huge values like (R*M) ** N
    localparam real log2_gain = $ln(R_MAX * M) / $ln(2.0);
    localparam Bmax = WIDTH-1 + int'($ceil(N * log2_gain));
    localparam RM = R * M;
    longint Gain = RM ** N;
    logic signed [Bmax-1:0] integ_ref[N-1:0];
    logic signed [Bmax-1:0] comb_ref[N-1:0];
    logic signed [Bmax-1:0] comb_delay[N-1:0];
    logic signed [Bmax-1:0] sign_ext_carrier;
    logic signed [Bmax-1:0] decimated_ref;
    logic signed [WIDTH-1:0] ref_out_signal;
    logic [WIDTH-1:0] decim_cnt = 0;
    logic signed [Bmax-1:0] shifted_comb;

    /***********************************************/
    // Sign extension of the input data
    /***********************************************/
    always_comb begin
        sign_ext_carrier[WIDTH-1:0] = inData;
        for (int k = WIDTH; k < Bmax; k++) begin
            sign_ext_carrier[k] = inData[WIDTH-1];
        end
    end

    /***********************************************/
    // Reference integrator
    /***********************************************/
    integrator_ref #(.WIDTH(Bmax)) integ_ref_inst (
        .clk(clk),
        .reset(reset),
        .inData(sign_ext_carrier),
        .outData(integ_ref[0])
    );

    generate
        for (genvar i = 1; i < N; i++) begin : gen_integrator
            integrator_ref #(.WIDTH(Bmax)) integ_ref_inst (
                .clk(clk),
                .reset(reset),
                .inData(integ_ref[i-1]),
                .outData(integ_ref[i])
            );
        end
    endgenerate

    /***********************************************/
    // Reference decimation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            decimation_en <= 0;
            decimated_ref <= 0;
        end else begin
            if (decim_cnt == R-1) begin
                decim_cnt <= 0;
                decimation_en <= 1;
                decimated_ref <= integ_ref[N-1];
            end else begin
                decimation_en <= 0;
                decim_cnt <= decim_cnt + 1;
            end
        end
    end

    /***********************************************/
    // Reference comb filter
    /***********************************************/
    comb_ref #(.D(M), .WIDTH(Bmax)) comb_0 (
        .clk(clk),
        .reset(reset),
        .inData(decimated_ref),
        .outData(comb_ref[0]),
        .enable(decimation_en)
    );

    generate
        for (genvar i = 1; i < N; i++) begin : gen_comb
            comb_ref #(.D(M), .WIDTH(Bmax)) comb_inst (
                .clk(clk),
                .reset(reset),
                .inData(comb_ref[i-1]),
                .outData(comb_ref[i]),
                .enable(decimation_en)
            );
        end
    endgenerate
    /***********************************************/
    // Reference output signal corrected by gain
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            ref_out_signal <= 0;
        end else begin
            shifted_comb = (comb_ref[N-1] / signed'(Gain)) * $signed(cic_compensation_factor);
            outData <= shifted_comb[WIDTH-1:0];
        end
    end

    endmodule