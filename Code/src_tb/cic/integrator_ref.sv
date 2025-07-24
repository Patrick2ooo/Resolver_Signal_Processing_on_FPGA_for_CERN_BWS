/*********************************************************************************
*
* File      : 	integrator.vhd
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
module integrator_ref #(parameter WIDTH = 16) (
    input  logic clk,
    input  logic reset,
    input  logic signed [WIDTH-1:0] inData,
    output logic signed [WIDTH-1:0] outData
);

    logic signed [WIDTH-1:0] delay_reg;
    logic signed [WIDTH-1:0] tmp;

    /***********************************************/
    // Integrator logic
    /***********************************************/
    assign tmp = delay_reg + inData;

    always_ff @(posedge clk) begin
        if (reset) begin
            delay_reg <= '0;
        end else begin
            delay_reg <= tmp;
        end
    end

    assign outData = tmp;

endmodule