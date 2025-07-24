/*********************************************************************************
*
* File      : 	rvdt_simulator.vhd
* Description:  This module simulates a rotary variable differential transformer (RVDT) by generating
*              the corresponding output signals based on the input rotor angle and noise level.
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
module rvdt_simulator #(
    parameter ADC_RESOLUTION = 14
)(
    input  logic clk,
    input  logic reset,
    input  logic signed [15:0] rotor_angle_deg,
    input  integer noise_percentage,
    output logic signed [ADC_RESOLUTION-1:0] s1_output,
    output logic signed [ADC_RESOLUTION-1:0] s2_output
);

    logic signed [ADC_RESOLUTION-1:0] carrier;
    logic signed [ADC_RESOLUTION-1:0] s1_amplitude; // cos
    logic signed [ADC_RESOLUTION-1:0] s2_amplitude; // sin

    // PTP (Peak-to-Peak) values for the sine wave
    logic unsigned [ADC_RESOLUTION:0] s1_ptp, s2_ptp;

    // Noise level calculation
    logic signed [ADC_RESOLUTION-1:0] noise_level_s1, noise_level_s2;
    
    // Temporary variables for calculations
    logic signed [31:0] s1_tmp, s2_tmp, s1_tmp_2, s2_tmp_2;

    // Precomputed cosine and sine values for 0 to 359 degrees (LUT)
    logic signed [ADC_RESOLUTION-1:0] cos_table [0:359];
    logic signed [ADC_RESOLUTION-1:0] sin_table [0:359];
    parameter PI = 3.14159265358979323846;
    
    /***********************************************/
    // Carrier signal generation
    /***********************************************/
    sine_wave_generator #(
        .WIDTH(ADC_RESOLUTION),
        .SINE_FREQUENCY(10000),  // 10kHz frequency
        .SAMPLING_RATE(10000000) //10MHz sampling rate
    ) carrier_gen (
        .clk(clk),
        .reset(reset),
        .noise_percentage(0),
        .sine(carrier)
    );
    
    /***********************************************/
    // Precomputed cosine and sine values for 0 to 359 degrees
    /***********************************************/
    initial begin
        integer i;
        for (i = 0; i < 360; i++) begin
            cos_table[i] = $rtoi(((1 << (ADC_RESOLUTION-2)) - 1) * $cos(2.0 * PI * i / 360.0));
            sin_table[i] = $rtoi(((1 << (ADC_RESOLUTION-2)) - 1) * $sin(2.0 * PI * i / 360.0));
        end
    end
    
    /***********************************************/
    // Ensure the angle is within the range of 0 to 359 degrees
    /***********************************************/
    logic [15:0] angle_index;
    always_comb begin
        if (rotor_angle_deg < 0) begin
            angle_index = 360 + (rotor_angle_deg % 360);
        end else begin
            angle_index = rotor_angle_deg % 360;
        end
    end

    /***********************************************/
    // Main output generation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            s1_output <= 0;
            s2_output <= 0;
            s1_ptp <= 2**ADC_RESOLUTION;
            s2_ptp <= 2**ADC_RESOLUTION;
            s1_amplitude <= 0;
            s2_amplitude <= 0;
            s1_tmp <= 0;
            s2_tmp <= 0;
            s1_tmp_2 <= 0;
            s2_tmp_2 <= 0;
            noise_level_s1 <= 0;
            noise_level_s2 <= 0;
        end else begin
            // Get cos and sin values for current angle
            s1_amplitude <= cos_table[angle_index]; // cos(angle) for S1
            s2_amplitude <= sin_table[angle_index]; // sin(angle) for S2
            
            s1_tmp = carrier * s1_amplitude;            
            s2_tmp = carrier * s2_amplitude;
            
            noise_level_s1 <= (s1_ptp * noise_percentage) / 100;
            noise_level_s2 <= (s2_ptp * noise_percentage) / 100;

            s1_tmp_2 <= (s1_tmp >>> (ADC_RESOLUTION - 1));
            s2_tmp_2 <= (s2_tmp >>> (ADC_RESOLUTION - 1));

            //add noise 
            if(noise_percentage > 0) begin
                if((s1_tmp_2 + noise_level_s1) < (2**(ADC_RESOLUTION-1))) begin
                    s1_output <= s1_tmp_2 + $urandom_range(0, noise_level_s1);
                end else begin
                    s1_output <= s1_tmp_2;
                end

                if((s2_tmp_2 + noise_level_s2) < (2**(ADC_RESOLUTION-1))) begin
                    s2_output <= s2_tmp_2 + $urandom_range(0, noise_level_s2);
                end else begin
                    s2_output <= s2_tmp_2;
                end
                
            end else begin
                s1_output <= s1_tmp_2;
                s2_output <= s2_tmp_2;
            end
        
        end
    end

endmodule