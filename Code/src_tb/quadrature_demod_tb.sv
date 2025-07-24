/*********************************************************************************
*
* File      : 	quadrature_tb.vhd
* Description:  Testbench to test the Quadrature Demodulator module.
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
module quadrature_tb#(int TESTCASE = 0, real ANGLE_DEG_SIM = 0.0, int ADC_WIDTH = 14, int NCO_RESOLUTION = 16, int OUTPUT_WIDTH = 14);

    logic clk = 0;
    logic reset = 0;
    
    // testbench parameters
    string test_name;
    integer noise_level_testcase;

    // RMSE calculation parameters
    real error_threshold = 1.0; // 1 LSB variation max
    real rmse_accumulator = 0.0;
    real current_rmse = 0.0;
    logic test_enable = 0;
    logic first_value = 0;
    integer total_samples = 0;
    logic start_dut = 0;
    logic start_ref = 0;
    integer rmse_sample = 100;

    // DUT parameters
    parameter int VECTOR_TRANSLATE_RESOLUTION = 16;
    logic [15:0] cic_compensation_factor = 2;
    logic [ADC_WIDTH-1:0] offset = 0;
    logic [NCO_RESOLUTION-1:0] phi_inc = 16;
    parameter int R = 2000;
    parameter int N = 3;
    parameter int M = 2;
    parameter int R_MAX = 3000;
    logic [15:0] decimation_factor = R;

    // FIFO parameters
    localparam FIFO_DEPTH = 1024;
    logic signed [ADC_WIDTH-1:0] dut_fifo [$];
    logic signed [ADC_WIDTH-1:0] ref_fifo [$];

    // DUT and reference in/out signals
    logic[ADC_WIDTH-1:0] s1_in;
    logic[VECTOR_TRANSLATE_RESOLUTION-1:0] s1_out;
    logic[VECTOR_TRANSLATE_RESOLUTION-1:0] s1_out_ref;

    // Rotor angle simulation parameters
    logic signed [15:0] rotor_angle_deg;
    logic [31:0] angle_counter;
    integer sample_count;
    parameter PI = 3.14159265358979323846;

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

        #20000000;

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
    // Rotor angle calculation
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            angle_counter <= 0;
            sample_count <= 0;
        end else begin
            angle_counter <= angle_counter + 1;
            sample_count <= sample_count + 1;
        end
        rotor_angle_deg <= ANGLE_DEG_SIM * $sin(2.0 * PI * angle_counter / 1000000.0);
    end

    /***********************************************/
    // RVDT simulator instantiation
    /***********************************************/
    rvdt_simulator #(.ADC_RESOLUTION(ADC_WIDTH)) rvdt_sim(
        .clk(clk),
        .reset(reset),
        .rotor_angle_deg(rotor_angle_deg),
        .noise_percentage(noise_level_testcase),
        .s1_output(s1_in),
        .s2_output()
    );

    /***********************************************/
    // DUT demodulator instantiation
    /***********************************************/
    quadrature_demod #(.ADC_RESOLUTION(ADC_WIDTH),
        .NCO_RESOLUTION(NCO_RESOLUTION),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .R_MAX(R_MAX),
        .N(N),
        .M(M))
        dut(
        .clk_i(clk),
        .reset_i(reset),
        .offset_modulated_signal_i(offset),
        .cic_compensation_factor_i(cic_compensation_factor),
        .decimation_factor_i(decimation_factor),
        .phi_inc_i(phi_inc),
        .modulated_signal_i(s1_in),
        .demodulated_signal_o(s1_out),
        .valid_o()
    );

    /***********************************************/
    // Reference demodulator instantiation
    /***********************************************/
    demod #(.ADC_RESOLUTION(ADC_WIDTH),
        .NCO_RESOLUTION(NCO_RESOLUTION),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .R_MAX(R_MAX),
        .N(N),
        .M(M),
        .R(R))
        reference(
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .modulated_signal(s1_in),
        .demodulated_signal(s1_out_ref)
    );

    /***********************************************/
    // FIFO for reference and DUT output signals
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            start_dut <= 0;
            start_ref <= 0;
        end else begin
            if (s1_out !== 0) begin
                start_dut <= 1;
            end
            if (s1_out_ref !== 0) begin
                start_ref <= 1;
            end
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            dut_fifo = {};
        end else begin
            if (start_dut && sample_count % R == 0) begin
                dut_fifo.push_back(s1_out);
                if (dut_fifo.size() > FIFO_DEPTH) begin
                    void'(dut_fifo.pop_front());
                end
            end
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            ref_fifo = {};
        end else begin
            if (start_ref && sample_count % R == 0) begin
                ref_fifo.push_back(s1_out_ref);
                if (ref_fifo.size() > FIFO_DEPTH) begin
                    void'(ref_fifo.pop_front());
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
            current_rmse <= 0.0;
            test_enable <= 0;
            total_samples <= 0;
        end else begin
            
            if (sample_count > 10000) begin
                test_enable <= 1;
                first_value <= 1;
            end
            
            if (test_enable && ref_fifo.size() > 0 && dut_fifo.size() > 0) begin
                logic signed [34:0] ref_sample, dut_sample;
                real error, squared_error;
                
                total_samples <= total_samples + 1;
                
                ref_sample = ref_fifo.pop_front();
                dut_sample = dut_fifo.pop_front();

                // Code to display the first value to check if the FIFO is working correctly
                /*if (first_value && total_samples < 100) begin
                    $display("Sample %d: ref_sample = %d, dut_sample = %d", sample_count, ref_sample, dut_sample);
                end*/
                
                error = dut_sample - ref_sample;
                squared_error = error * error;
                rmse_accumulator <= rmse_accumulator + squared_error;
                
                if (total_samples % rmse_sample == 0 && total_samples > 0) begin
                    current_rmse = $sqrt(rmse_accumulator / rmse_sample);
                    rmse_accumulator <= 0.0;
                    
                    if (current_rmse <= error_threshold) begin
                        $display("PASS: Sample %d - RMSE = %f (threshold = %f)",
                               total_samples, current_rmse, error_threshold);
                    end else begin
                        $display("FAIL: Sample %d - RMSE = %f exceeds threshold %f",
                               total_samples, current_rmse, error_threshold);
                    end
                end
            end
        end
    end

endmodule