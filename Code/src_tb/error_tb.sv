/*********************************************************************************
*
* File      : 	error_tb.vhd
* Description:  Testbench for the error detection module.
*
*
* Author    : 	Patrick Maillard
* Date      : 	17.07.2025
* Version   : 	1.0
*
**| Modifications |***************************************************************
* Version    Auteur 		    Date               Description
* 1.0 		 Patrick Maillard	17.07.2025        Initial version
**********************************************************************************/
`timescale 1ns / 1ps

module error_tb();

    // Parameters
    localparam CLK_PERIOD = 25; // 40MHz clock
    localparam ADC_RESOLUTION = 14;
    localparam VECTOR_TRANSLATE_RESOLUTION = 16;
    localparam OUTPUT_WIDTH = 16;
    localparam DATA_WIDTH = 32;
    localparam ADDR_WIDTH = 8;
    
    // Register addresses
    localparam ADDR_ID = 8'h00;
    localparam ADDR_LOS_THRESHOLD = 8'h01;
    localparam ADDR_DOS_OVERRANGE_THRESH = 8'h02;
    localparam ADDR_DOS_MISMATCH_THRESH = 8'h03;
    localparam ADDR_DOS_MAX_THRESH = 8'h04;
    localparam ADDR_DOS_MIN_THRESH = 8'h05;
    localparam ADDR_ERROR_ENABLE_MASK = 8'h06;
    localparam ADDR_ERROR_CLEAR = 8'h07;
    
    // Test signals
    logic clk = 0;
    logic reset = 1;
    logic [15:0] excitation_frequency = 16'd10000; // 10kHz
    logic [ADC_RESOLUTION-1:0] offset_modulated_signal = 0;
    logic [15:0] decimation_factor = 900;
    logic [ADC_RESOLUTION-1:0] sin_signal;
    logic [ADC_RESOLUTION-1:0] cos_signal;
    logic [OUTPUT_WIDTH:0] angle_out;
    logic [7:0] error_out;
    
    // Register interface
    logic [ADDR_WIDTH-1:0] reg_addr;
    logic [DATA_WIDTH-1:0] reg_data_in;
    logic [DATA_WIDTH-1:0] reg_data_out;
    logic reg_write;
    logic reg_read;
    
    // Test control
    integer test_case = 0;
    logic test_passed = 0;
    logic test_failed = 0;

    logic use_rvdt_sim = 0;
    logic [15:0] test_angle = 0;
    logic [15:0] test_amplitude_sin = 0;
    logic [15:0] test_amplitude_cos = 0;
    logic [ADC_RESOLUTION-1:0] manual_sin_signal = 0;
    logic [ADC_RESOLUTION-1:0] manual_cos_signal = 0;
    logic [ADC_RESOLUTION-1:0] rvdt_sin_signal;
    logic [ADC_RESOLUTION-1:0] rvdt_cos_signal;

    logic [15:0] cic_compensation_factor = 2;
    logic [15:0] phi_inc = 16;

    real angle_rad = 0.0;
    
    // DUT instantiation
    rdc_top #(
        .CLK_FREQUENCY(40000000),
        .ADC_RESOLUTION(ADC_RESOLUTION),
        .NCO_RESOLUTION(16),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .SINCOS_RESOLUTION(15),
        .ATAN2_RESOLUTION(16),
        .DIVISION_RESOLUTION(64),
        .ATAN2_LATENCY(3),
        .SINCOS_LATENCY(2),
        .VECTOR_TRANSLATE_LATENCY(2),
        .DIVISION_LATENCY(32),
        .OUTPUT_WIDTH(17),
        .R_MAX(1000),
        .N(3),
        .M(2),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk_i(clk),
        .reset_i(reset),
        .offset_modulated_signal_i(offset_modulated_signal),
        .cic_compensation_factor_i(cic_compensation_factor),
        .decimation_factor_i(decimation_factor),
        .phi_inc_i(phi_inc),
        .sin_signal_i(sin_signal),
        .cos_signal_i(cos_signal),
        .angle_o(angle_out),
        .error_o(error_out),
        .valid_o(),
        .reg_addr_i(reg_addr),
        .reg_data_i(reg_data_in),
        .reg_data_o(reg_data_out),
        .reg_write_i(reg_write),
        .reg_read_i(reg_read),
        .sinus_generator_o(),
        .sinus_generator_valid_o()
    );

    /***********************************************/
    // Angle conversion
    /***********************************************/
    always_ff @(posedge clk) begin
        if (!reset) begin
            angle_rad = $itor($signed(angle_out)) / 8192.0; // 2^13 = 8192
        end
    end
    
    /***********************************************/
    // Clock generation
    /***********************************************/
    always #(CLK_PERIOD/2) clk = ~clk;
    
    /***********************************************/
    // Register write task
    /***********************************************/
    task write_register(input [ADDR_WIDTH-1:0] addr, input [DATA_WIDTH-1:0] data);
        begin
            @(posedge clk);
            reg_addr = addr;
            reg_data_in = data;
            reg_write = 1;
            @(posedge clk);
            reg_write = 0;
            @(posedge clk);
        end
    endtask
    
    /***********************************************/
    // Register read task
    /***********************************************/
    task read_register(input [ADDR_WIDTH-1:0] addr, output [DATA_WIDTH-1:0] data);
        begin
            @(posedge clk);
            reg_addr = addr;
            reg_read = 1;
            @(posedge clk);
            data = reg_data_out;
            reg_read = 0;
            @(posedge clk);
        end
    endtask
    
    /***********************************************/
    // Testbench initialization
    /***********************************************/
    initial begin
        // Initialize signals
        reg_addr = 0;
        reg_data_in = 0;
        reg_write = 0;
        reg_read = 0;
        
        // Reset sequence
        #100;
        reset = 0;
        #100;
        
        write_register(ADDR_ERROR_ENABLE_MASK, 32'hFF);      // Enable all errors
        
        test_angle = 45;                // Fixed angle (45 degrees)

        // Run tests
        id_verification();
        // wait for monitor to stabilize
        test_d7_clipping();
        test_d6_los();
        test_d5_overrange();
        test_d4_mismatch();
        
        $display("---- ERROR DETECTION TESTS COMPLETED ----");
        $stop;
    end

    /***********************************************/
    // RVDT simulator instantiation
    /***********************************************/
    rvdt_simulator #(
        .ADC_RESOLUTION(ADC_RESOLUTION)
    ) rvdt_sim (
        .clk(clk),
        .reset(reset),
        .rotor_angle_deg(test_angle),
        .noise_percentage(0),
        .s1_output(rvdt_cos_signal),
        .s2_output(rvdt_sin_signal)
    );

    /***********************************************/
    // Choose between manual and RVDT simulator
    /***********************************************/
    always_comb begin
        if (use_rvdt_sim) begin
            sin_signal = rvdt_sin_signal;
            cos_signal = rvdt_cos_signal;
        end else begin
            sin_signal = manual_sin_signal;
            cos_signal = manual_cos_signal;
        end
    end

    /***********************************************/
    // ID verification task
    /***********************************************/
    task id_verification();
        logic [DATA_WIDTH-1:0] id_data;
        begin
            test_case = 0;
            $display("---- ID Verification ----");
            read_register(ADDR_ID, id_data);
            if (id_data == 32'h12345678) begin
                $display("ID Verification PASSED: ID = %h", id_data);
            end else begin
                $display("ID Verification FAILED: Expected 12345678, got %h", id_data);
            end
        end
    endtask
    
    /***********************************************/
    // Test D7: Clipping detection
    /***********************************************/
    task test_d7_clipping();
        begin
            $display("---- Testing D7: Clipping Detection ----");
            test_case = 1;
            use_rvdt_sim = 0;
            
            // Clear any previous errors
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #1000;
            
            manual_sin_signal = 14'h1000;
            manual_cos_signal = 14'h1000;
            #5000;
            
            if (error_out[0] == 1'b0) begin
                $display("PASS: No clipping detected for normal signals");
            end else begin
                $display("FAIL: False clipping detection");
            end

            // Should not be needed, but just to ensure for the next test
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #1000;
            
            manual_sin_signal = 14'h1FFF; // Max positive value
            manual_cos_signal = 14'h1000;
            #1000;
            
            if (error_out[0] == 1'b1) begin
                $display("PASS: Clipping detected for positive sin saturation");
            end else begin
                $display("FAIL: Clipping not detected for positive sin saturation");
            end

            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #1000;

            manual_sin_signal = 14'h1000;
            manual_cos_signal = 14'h2000; // Max negative value
            #1000;
            
            if (error_out[0] == 1'b1) begin
                $display("PASS: Clipping detected for negative cos saturation");
            end else begin
                $display("FAIL: Clipping not detected for negative cos saturation");
            end
            
            // Clear and return to normal
            write_register(ADDR_ERROR_CLEAR, 32'h01);
            manual_sin_signal = 14'h1000;
            manual_cos_signal = 14'h1000;
            #1000;
        end
    endtask
    
    /***********************************************/
    // Test D6: Loss of Signal detection
    /***********************************************/
    task test_d6_los();
        begin
            $display("---- Testing D6: Loss of Signal Detection ----");
            test_case = 2;
            use_rvdt_sim = 1;
                
            // Set LOS threshold - this will be compared against abs(peak_max) of monitor signal
            write_register(ADDR_LOS_THRESHOLD, 32'h0100); 
                
            // Clear any previous errors
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;
                
            // should not trigger LOS
            $display("Test 1: should not trigger LOS");
                
            #1000000;
                
            if (error_out[1] == 1'b0) begin
                $display("PASS: No LOS detected");
            end else begin
                $display("FAIL: False LOS detection - error_out[1] = %b", error_out[1]);
            end

            // increase LOS threshold to trigger LOS
            $display("Test 2: Increasing LOS threshold to trigger LOS");
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;

            write_register(ADDR_LOS_THRESHOLD, 32'h1FFF);

            #1000000;

            if (error_out[1] == 1'b1) begin
                $display("PASS: LOS detected ");
            end else begin
                $display("FAIL: LOS not detected - error_out[1] = %b", error_out[1]);
            end

            // Clear
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            test_amplitude_sin = 16'h8000;
            test_amplitude_cos = 16'h8000;
            #1000;
        end
    endtask
    
    /***********************************************/
    // Test D5: Overrange detection
    /***********************************************/
    task test_d5_overrange();
        begin
            $display("---- Testing D5: Overrange Detection ----");
            test_case = 3;
            use_rvdt_sim = 1;

            // Set LOS threshold - this will be compared against abs(peak_max) of monitor signal
            write_register(ADDR_DOS_OVERRANGE_THRESH, 32'h1FFF); 
                
            // Clear any previous errors
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;
                
            // should not trigger DOS
            $display("Test 1: should not trigger DOS");
                
            #1000000;
            
            if (error_out[2] == 1'b0) begin
                $display("PASS: No DOS detected");
            end else begin
                $display("FAIL: False DOS detection - error_out[2] = %b", error_out[2]);
            end

            // increase LOS threshold to trigger LOS
            $display("Test 2: Increasing DOS threshold to trigger DOS");
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;

            write_register(ADDR_DOS_OVERRANGE_THRESH, 32'h0100);

            #1000000;

            if (error_out[2] == 1'b1) begin
                $display("PASS: DOS detected after increasing DOS threshold");
            end else begin
                $display("FAIL: DOS not detected after increasing DOS threshold - error_out[1] = %b", error_out[2]);
            end

            // Clear
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            test_amplitude_sin = 16'h8000;
            test_amplitude_cos = 16'h8000;
            #1000;
            
        end
    endtask
    
    /***********************************************/
    // Test D4: Mismatch detection
    /***********************************************/
    task test_d4_mismatch();
        begin
            $display("---- Testing D4: Mismatch Detection ----");
            test_case = 4;
            use_rvdt_sim = 1;

            // default value
            write_register(ADDR_DOS_MAX_THRESH, 32'h0000);
            write_register(ADDR_DOS_MIN_THRESH, 32'h1FFF);

            // delta = 4100 - 4076 = 24 

            write_register(ADDR_DOS_MISMATCH_THRESH, 32'h1000);  // Mismatch threshold

            // Clear any previous errors
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;
                
            // should not trigger MISMATCH
            $display("Test 1: should not trigger MISMATCH");
                
            #1000000;
            
            if (error_out[3] == 1'b0) begin
                $display("PASS: No MISMATCH detected");
            end else begin
                $display("FAIL: False MISMATCH detection - error_out[3] = %b", error_out[3]);
            end

            // increase MISMATCH threshold to trigger MISMATCH
            $display("Test 2: Decreasing MISMATCH threshold to trigger MISMATCH");
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            #100;

            write_register(ADDR_DOS_MISMATCH_THRESH, 32'h0000);

            #1000000;

            if (error_out[3] == 1'b1) begin
                $display("PASS: MISMATCH detected after decreasing MISMATCH threshold");
            end else begin
                $display("FAIL: MISMATCH not detected after decreasing MISMATCH threshold - error_out[1] = %b", error_out[3]);
            end

            // Clear
            write_register(ADDR_ERROR_CLEAR, 32'hFF);
            test_amplitude_sin = 16'h8000;
            test_amplitude_cos = 16'h8000;
            #1000;
            
        end
    endtask

endmodule