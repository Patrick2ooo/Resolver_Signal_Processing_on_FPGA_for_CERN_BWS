/*********************************************************************************
*
* File      : 	sine_wave_generator.vhd
* Description:  This module generates a sine wave signal based on the input frequency and sampling rate.
*
*
* Author    : 	Patrick Maillard
* Date      : 	20.06.2025
* Version   : 	1.0
*
**| Modifications |***************************************************************
* Version    Auteur 		    Date               Description
* 1.0 		 Patrick Maillard	20.06.2025        Initial version
**********************************************************************************/
`timescale 1ns / 1ps
// Here is a Verilog code that generates a sine wave with a 16-bit amplitude at 440Hz using a 8-bit lookup table (https://www.chipverify.com/verilog/verilog-interview-questions-set-2#:~:text=Generating%20a%20sine%20wave%20using,frequency%20and%20the%20sampling%20frequency.):
module sine_wave_generator#(WIDTH = 14, parameter SINE_FREQUENCY = 10000, parameter SAMPLING_RATE = 10000000)(
    input logic clk,
    input logic reset,
    input integer noise_percentage,
    output logic signed [WIDTH-1:0] sine
);
    localparam peak_to_peak = (1 << (WIDTH-1));
    localparam lut_size = 1024;
    logic signed [WIDTH-1:0] sin_table [0:lut_size-1];
    logic signed [WIDTH-1:0] noise_level;
    logic signed [WIDTH-1:0] clean_sine;
    parameter PI = 3.14159265358979323846;

    /***********************************************/
    // Sine wave generation using a lookup table
    /***********************************************/
    initial begin
        integer i;
        for (i = 0; i < lut_size; i++) begin
            sin_table[i] = $rtoi(((1 << (WIDTH-2)) - 1) * $sin(2 * PI * i / lut_size));
        end
    end
    logic [15:0] phase_acc;
    logic [15:0] phase_inc = 16;

    /***********************************************/
    // Phase accumulator for sine wave generation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            phase_acc <= 0;
            sine <= 0;
            noise_level <= 0;
            clean_sine <= 0;
        end else begin
            phase_acc <= phase_acc + phase_inc;
            clean_sine <= sin_table[phase_acc[15:6]];
            noise_level <= (peak_to_peak * noise_percentage) / 100;
            if ((noise_level + clean_sine) < (2**(WIDTH-1))) begin
                sine <= clean_sine + $urandom_range(0, noise_level);
            end else begin
                sine <= clean_sine;
            end
        end

    end
    
endmodule