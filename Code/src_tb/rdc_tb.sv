/*********************************************************************************
*
* File      : 	rdc_tb.vhd
* Description:  Testbench to test the RDC module.
*
*
* Author    : 	Patrick Maillard
* Date      : 	08.07.2025
* Version   : 	1.0
*
**| Modifications |***************************************************************
* Version    Auteur 		    Date               Description
* 1.0 		 Patrick Maillard	09.07.2025        Initial version
**********************************************************************************/
`timescale 1ns / 1ps

// Interface definitions
// These interfaces are used to connect the testbench to the DUT and reference models
interface in_if #(parameter int ADC_WIDTH = 14);
    logic [ADC_WIDTH-1:0] s1_in;
    logic [ADC_WIDTH-1:0] s2_in;
endinterface

interface out_ref_if #(parameter int VECTOR_TRANSLATE_RESOLUTION = 16);
    logic [VECTOR_TRANSLATE_RESOLUTION-1:0] s1_out_ref;
    logic [VECTOR_TRANSLATE_RESOLUTION-1:0] s2_out_ref;
endinterface

module rdc_tb#(int TESTCASE = 0, real ANGLE_DEG_SIM, int ADC_WIDTH = 14, int VECTOR_TRANSLATE_RESOLUTION = 16, int OUTPUT_WIDTH = 16);

    logic clk = 0;
    logic reset = 0;

    const int ANGLE_REF_DELAY = 1; // To adjust as needed

    // Reporting variables
    int tests_total = 0;
    int tests_passed = 0;
    string test_name;
    integer noise_level_testcase;

    real error_threshold = 0.01;
    real rmse_accumulator = 0.0;
    real current_rmse = 0.0;
    logic test_enable = 0;
    logic first_value = 0;
    integer total_samples = 0;

    localparam FIFO_DEPTH = 1024;

    real dut_fifo [$];
    real ref_fifo [$];

    in_if #(ADC_WIDTH) in_if_inst();
    out_ref_if #(VECTOR_TRANSLATE_RESOLUTION) out_ref_if_inst();

    logic start_count_ref;
    logic start_count_dut;
    integer count_ref;
    integer count_dut;
    integer sample_count;
    parameter PI = 3.14159265358979323846;
    logic [ADC_WIDTH-1:0] offset = 0; // No offset modulation

    // CIC parameters
    parameter int R = 1800;
    parameter int N = 3;
    parameter int M = 2;
    parameter int R_MAX = 2000;
    logic [15:0] decimation_factor = R;
    logic [15:0] cic_compensation_factor = 2;
    logic valid;

    // angle variable
    logic signed [OUTPUT_WIDTH:0] angle_s;
    real angle_rad;
    logic signed [15:0] rotor_angle_deg;
    logic [31:0] angle_counter;

    // Added to prevent warnings
    logic [7:0] unused_reg_addr = 8'h00;
    logic [31:0] unused_reg_data_in = 32'h00000000;
    logic [31:0] unused_reg_data_out;
    logic unused_reg_write = 1'b0;
    logic unused_reg_read = 1'b0;

    // select a radian value and we will convert it to degrees and generate the sine wave (done like that for better precision...)
    real rotor_angle_rad = 0;

    // Phase increment for NCO, used to set frequency
    logic unsigned [15:0] phi_inc = 16; 

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
    // Sampling starter
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            count_ref <= 0;
            count_dut <= 0;
            start_count_ref <= 0;
            start_count_dut <= 0;
        end else begin
            if (angle_rad != 0.0 && start_count_dut == 0) begin
                start_count_dut <= 1;
                //$display("Angle Real: %f", angle_rad);
            end
            if (rotor_angle_rad != 0.0 && start_count_ref == 0) begin
                start_count_ref <= 1;
                //$display("Angle Ref: %f", rotor_angle_rad);
            end
            if (start_count_dut) begin
                count_dut <= count_dut + 1;
            end
            if (start_count_ref) begin
                count_ref <= count_ref + 1;
            end
        end
        
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
        if (((angle_counter) % R) == 0) begin
            rotor_angle_rad <= PI * rotor_angle_deg / 180.0;
        end
    end

    /***********************************************/
    // RVDT simulator instantiation
    /***********************************************/
    rvdt_simulator #(.ADC_RESOLUTION(ADC_WIDTH)) rvdt_sim(
        .clk(clk),
        .reset(reset),
        .rotor_angle_deg(rotor_angle_deg),
        .noise_percentage(noise_level_testcase),
        .s1_output(in_if_inst.s1_in),
        .s2_output(in_if_inst.s2_in)
    );

    /***********************************************/
    // RDC instantiation
    /***********************************************/
    rdc_top #(
        .CLK_FREQUENCY(40000000),
        .ADC_RESOLUTION(ADC_WIDTH),
        .NCO_RESOLUTION(16),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .SINCOS_RESOLUTION(15),
        .ATAN2_RESOLUTION(16),
        .DIVISION_RESOLUTION(64),
        .ATAN2_LATENCY(3),
        .SINCOS_LATENCY(2),
        .VECTOR_TRANSLATE_LATENCY(2),
        .DIVISION_LATENCY(32),
        .OUTPUT_WIDTH(OUTPUT_WIDTH+1),
        .N(N),
        .M(M),
        .R_MAX(R_MAX),
        .ADDR_WIDTH(8),
        .DATA_WIDTH(32)
    ) dut (
        .clk_i(clk),
        .reset_i(reset),
        .offset_modulated_signal_i(offset),
        .cic_compensation_factor_i(cic_compensation_factor),
        .decimation_factor_i(decimation_factor),
        .phi_inc_i(phi_inc),
        .sin_signal_i(in_if_inst.s2_in),
        .cos_signal_i(in_if_inst.s1_in),
        .angle_o(angle_s),
        .error_o(),
        .valid_o(valid),

        .reg_addr_i(unused_reg_addr),
        .reg_data_i(unused_reg_data_in),
        .reg_data_o(unused_reg_data_out),
        .reg_write_i(unused_reg_write),
        .reg_read_i(unused_reg_read),

        .sinus_generator_o(),
        .sinus_generator_valid_o()
    );

    /***********************************************/
    // Angle conversion
    /***********************************************/
    always_ff @(posedge clk) begin
        if (!reset) begin
            angle_rad = $itor($signed(angle_s)) / 8192.0; // 2^13 = 8192
        end
    end

    /***********************************************/
    // Reference demodulator instantiation
    /***********************************************/
    demod #(
        .ADC_RESOLUTION(ADC_WIDTH),
        .NCO_RESOLUTION(16),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .R(R),
        .N(N),
        .M(M),
        .R_MAX(R_MAX)
    ) s1_ref (
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .modulated_signal(in_if_inst.s1_in),
        .demodulated_signal(out_ref_if_inst.s1_out_ref)
    );

    demod #(
        .ADC_RESOLUTION(ADC_WIDTH),
        .NCO_RESOLUTION(16),
        .VECTOR_TRANSLATE_RESOLUTION(VECTOR_TRANSLATE_RESOLUTION),
        .R(R),
        .N(N),
        .M(M),
        .R_MAX(R_MAX)
    ) s2_ref (
        .clk(clk),
        .reset(reset),
        .cic_compensation_factor(cic_compensation_factor),
        .modulated_signal(in_if_inst.s2_in),
        .demodulated_signal(out_ref_if_inst.s2_out_ref)
    );

    /***********************************************/
    // FIFO for reference and DUT output signals
    /***********************************************/
    always_ff @(posedge clk) begin
        if (reset) begin
            dut_fifo = {};
        end else begin
            // minus 2 because of the latency of the different processes, but as information it is the settling time of the CIC filter
            if (count_dut > R*((N*M)-2) && count_dut % R == 0) begin
                dut_fifo.push_back(angle_rad);
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
            if (count_ref > ANGLE_REF_DELAY * R && count_ref % R == 0) begin
                ref_fifo.push_back(rotor_angle_rad);
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
                real ref_sample, dut_sample;
                real error, squared_error;
                
                total_samples = total_samples + 1;
                
                ref_sample = ref_fifo.pop_front();
                dut_sample = dut_fifo.pop_front();

                // Code to display the first value to check if the FIFO is working correctly
                /*if (first_value && total_samples < 100) begin
                    $display("Sample %d: ref_sample = %f, dut_sample = %f", sample_count, ref_sample, dut_sample);
                end*/
                
                error = dut_sample - ref_sample;
                squared_error = error * error;
                rmse_accumulator = rmse_accumulator + squared_error;
                
                if (total_samples % 100 == 0 && total_samples > 0) begin
                    current_rmse = $sqrt(rmse_accumulator / 100.0);
                    rmse_accumulator = 0.0;
                    
                    if (current_rmse <= error_threshold) begin
                        $display("PASS: Sample %d - RMSE = %f (threshold = %f)", total_samples, current_rmse, error_threshold);
                        tests_passed = tests_passed + 1;
                    end else begin
                        $display("FAIL: Sample %d - RMSE = %f exceeds threshold %f", total_samples, current_rmse, error_threshold);
                    end
                    tests_total = tests_total + 1;
                end
            end
        end
    end

endmodule