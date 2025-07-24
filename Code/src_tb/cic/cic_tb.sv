/*********************************************************************************
*
* File      : 	cic_tb.vhd
* Description: Testbench for the CIC decimator module.
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

module cic_tb#(int TESTCASE = 0);

    localparam WIDTH = 14;
    localparam N     = 3;
    localparam R     = 10;
    localparam R_MAX = 1000;
    localparam M     = 1;
    localparam ADC_RESOLUTION = 14;
    localparam FIFO_DEPTH = 1024;

    logic signed [ADC_RESOLUTION:0] ref_fifo [$];
    logic signed [ADC_RESOLUTION:0] dut_fifo [$];

    logic clk = 0;
    logic reset = 0;

    integer noise_level_testcase;
    string test_name;

    real error_threshold = 1.0; // 1 LSB variation max
    real rmse_accumulator = 0.0;
    real current_rmse = 0.0;
    logic test_enable = 0;
    logic first_value = 0;
    integer total_samples = 0;
    logic [15:0] cic_compensation_factor = 1;
    logic start_dut = 0;
    logic start_ref = 0;
    logic signed [ADC_RESOLUTION-1:0] carrier;
    logic signed [ADC_RESOLUTION:0] x_i;
    logic signed [ADC_RESOLUTION:0] y_o;
    logic valid_o;
    logic decimation_en;
    logic signed [ADC_RESOLUTION:0] ref_out_signal;
    integer rmse_sample = 1000;

    /***********************************************/
    // Testbench parameters
    /***********************************************/
    initial begin
        case (TESTCASE)
            0: begin // Clean signal test
                noise_level_testcase = 0;
                test_name = "CLEAN_SIGNAL";
                $display("---- TESTCASE 0: Clean Signal Test ----");
                $display("Noise level: %0d%%", noise_level_testcase);
            end
            1: begin // Noisy signal test
                noise_level_testcase = 10;
                test_name = "NOISY_SIGNAL";
                $display("---- TESTCASE 1: Noisy Signal Test ----");
                $display("Noise level: %0d%%", noise_level_testcase);
            end
            default: begin
                noise_level_testcase = 0;
                test_name = "DEFAULT";
                $display("---- DEFAULT TESTCASE: Clean Signal Test ----");
            end
        endcase
    end

    /***********************************************/
    // Report display
    /***********************************************/
    initial begin
        wait(!reset);

        #1000000;

        // Calculate final results
        if (total_samples > 0) begin
            $display("\n---- FINAL TEST RESULTS ----");
            $display("Test Case: %0d (%s)", TESTCASE, test_name);
            $display("Noise Level: %0d%%", noise_level_testcase);
            $display("Total Samples: %0d", total_samples);
            $display("Final RMSE: %f", current_rmse);
            $display("Threshold: %f", error_threshold);
            if (current_rmse <= error_threshold) begin
                $display("OVERALL RESULT: PASS");
            end else begin
                $display("OVERALL RESULT: FAIL");
            end
        end else begin
            $display("ERROR: No samples processed");
        end

        $display("---- TEST COMPLETED ----\n");
        $stop;
    end

    /***********************************************/
    // Clock and reset generation
    /***********************************************/
    initial begin
        clk = 0;
        forever #12.5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #200;
        reset = 0;
    end

    /***********************************************/
    // DUT instantiation
    /***********************************************/
    cic_decimator #(
        .DIVISION_RESOLUTION(64),
        .DIVISION_LATENCY(32),
        .N(N),
        .M(M),
        .R_MAX(R_MAX),
        .WIDTH(ADC_RESOLUTION+1)
    ) dut (
        .clk(clk),
        .reset_i(reset),
        .cic_compensation_factor_i(cic_compensation_factor),
        .decimation_factor_i(R),
        .valid_i(1'b1),
        .x_i(x_i),
        .y_o(y_o),
        .valid_o(valid_o)
    );

    /***********************************************/
    // Normal sine wave generator
    /***********************************************/
    sine_wave_generator #(
        .WIDTH(ADC_RESOLUTION),
        .SINE_FREQUENCY(10000),  // 10kHz frequency
        .SAMPLING_RATE(1000000) //10MHz sampling rate
    ) carrier_gen (
        .clk(clk),
        .reset(reset),
        .noise_percentage(noise_level_testcase),
        .sine(carrier)
    );

    logic signed [ADC_RESOLUTION:0] out_signal;

    /***********************************************/
    // I/O signal generation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            x_i <= 0;
        end else begin
            x_i <= carrier;
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            out_signal <= 0;
        end else begin
            if (valid_o) begin
                out_signal <= y_o;
            end else begin
                out_signal <= out_signal;
            end
        end
    end

    /***********************************************/
    // Reference CIC integrator
    /***********************************************/
    cic_decimator_ref #(
        .WIDTH(ADC_RESOLUTION+1),
        .R_MAX(R_MAX),
        .N(N),
        .M(M),
        .R(R)
    ) reference (
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .inData(x_i),
        .outData(ref_out_signal),
        .decimation_en(decimation_en)
    );
    integer sample_count = 0;

    /***********************************************/
    // FIFO for reference and DUT output signals
    /***********************************************/
    always_ff @(posedge clk) begin
        if(reset) begin
            start_dut <= 0;
            start_ref <= 0;
        end else begin
            if(ref_out_signal !== 0 && ref_out_signal !== 'x && ref_out_signal !== 'z) begin
                start_ref <= 1;
            end
            if(y_o !== 0 && y_o !== 'x && y_o !== 'z) begin
                start_dut <= 1;
            end
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            ref_fifo = {};
        end else if (decimation_en) begin
            if (start_ref) begin
                ref_fifo.push_back(ref_out_signal);
                if (ref_fifo.size() > FIFO_DEPTH) begin
                    void'(ref_fifo.pop_front());
                end
            end
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            dut_fifo = {};
        end else if (valid_o) begin
            // Add delay to account for DUT pipeline delay
            if (start_dut) begin
                dut_fifo.push_back(y_o);
                if (dut_fifo.size() > FIFO_DEPTH) begin
                    void'(dut_fifo.pop_front());
                end
            end
        end
    end

    /***********************************************/
    // Rmse calculation and test logic
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            rmse_accumulator <= 0.0;
            sample_count <= 0;
            current_rmse <= 0.0;
        end else begin
            sample_count <= sample_count + 1;
            
            if (sample_count > 1000) begin
                test_enable <= 1;
                first_value <= 1;
            end
            
            
            if (test_enable && ref_fifo.size() > 0 && dut_fifo.size() > 0) begin
                logic signed [ADC_RESOLUTION:0] ref_sample, dut_sample;
                real error, squared_error;
                total_samples <= total_samples + 1;
                
                ref_sample = ref_fifo.pop_front();
                dut_sample = dut_fifo.pop_front();
                
                // Code to display the first value to check if the FIFO is working correctly for debug purpose
                /*if (first_value && total_samples < 100) begin
                    $display("Sample %d: ref_sample = %d, dut_sample = %d", sample_count, ref_sample, dut_sample);
                end*/
                
                error = real'(dut_sample - ref_sample);
                squared_error = error * error;
                rmse_accumulator <= rmse_accumulator + squared_error;

                if (total_samples % rmse_sample == 0 && total_samples > 0) begin
                    current_rmse = $sqrt(rmse_accumulator / rmse_sample);
                    rmse_accumulator <= 0.0;
                    
                    if (current_rmse <= error_threshold) begin
                        $display("PASS: signal test - RMSE = %f (threshold = %f)", 
                               current_rmse, error_threshold);
                    end else begin
                        $display("FAIL: signal test - RMSE = %f exceeds threshold %f", 
                               current_rmse, error_threshold);
                    end

                end
            end
        end
    end

    endmodule