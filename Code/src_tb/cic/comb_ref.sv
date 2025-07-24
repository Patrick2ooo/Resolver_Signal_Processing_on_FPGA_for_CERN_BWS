/*********************************************************************************
*
* File      : 	comb.vhd
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
module comb_ref #(parameter D = 1, parameter WIDTH = 16) (
    input  logic clk,
    input  logic reset,
    input  logic signed [WIDTH-1:0] inData,
    output logic signed [WIDTH-1:0] outData,
    input  logic enable = 1'b1
);

    logic signed [WIDTH-1:0] output_reg;
    logic signed [WIDTH-1:0] delay_array[D-1:0];

    /***********************************************/
    // Delay line implementation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            delay_array[0] <= '0;
        end else begin
            if (enable) begin
                delay_array[0] <= inData; 
            end
        end
    end

    /***********************************************/
    // Delay line generation if delay > 1
    /***********************************************/
    generate
        for (genvar i = 1; i < D; i++) begin : gen_delay
            always_ff @(posedge clk) begin
                if (reset) begin
                    delay_array[i] <= '0;
                end else if (enable) begin
                    delay_array[i] <= delay_array[i-1];
                end
            end
        end
    endgenerate

    /***********************************************/
    // Output calculation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            output_reg <= '0;
        end else begin
            if (enable) begin
                output_reg <= inData - delay_array[D-1];
            end
        end
    end

    assign outData = output_reg;
endmodule