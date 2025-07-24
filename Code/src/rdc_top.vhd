-------------------------------------------------------------------------------
-- 
-- File      : 	rdc_top.vhd
--
-- Description  :   This entity is a top-level design for a Resolver-to-Digital Converter (RDC) system.
--                  It integrates various components including a CIC decimator, NCO, and CORDIC for demodulation.
--                  It takes a signed input signal, applies the demodulation process and calculates the angle output.
--
-- Author       : 	Patrick Maillard
-- Date         : 	16.06.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Patrick Maillard	22.07.2025        Initial version
----------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rdc_top is
    generic (
        CLK_FREQUENCY : integer := 40000000;            -- System clock frequency 40 MHz

        ADC_RESOLUTION : integer := 14;                 -- Resolution of the ADC
        NCO_RESOLUTION : integer := 16;                 -- Resolution of the NCO
        VECTOR_TRANSLATE_RESOLUTION : integer := 16;    -- Width of the output signal
        SINCOS_RESOLUTION : integer := 15;              -- Resolution of the sincos component
        ATAN2_RESOLUTION : integer := 16;               -- Resolution of the atan2 component
        DIVISION_RESOLUTION : integer := 64;            -- Resolution of the division

        ATAN2_LATENCY : integer := 3;                   -- Latency of the atan2 component
        SINCOS_LATENCY : integer := 2;                  -- Latency of the sincos component
        VECTOR_TRANSLATE_LATENCY : integer := 2;        -- Latency of the vector translate component
        DIVISION_LATENCY : integer := 32;               -- Latency of the division component

        OUTPUT_WIDTH : integer := 17;                   -- Width of the output signal

        R_MAX       : integer := 1000;                  -- Maximum decimation factor for the CIC filter
        N          : integer := 3;                      -- Number of stages in the CIC filter
        M : integer := 3;                               -- Number of integrators in the CIC filter

        ADDR_WIDTH : integer := 8;              -- Width of the address bus
        DATA_WIDTH : integer := 32              -- Width of the data bus
    );
    port (
        clk_i                       : in  std_logic;                                    -- System clock
        reset_i                     : in  std_logic;                                    -- Reset signal
        offset_modulated_signal_i   : in  std_logic_vector(ADC_RESOLUTION - 1 downto 0);-- Offset of the ADC modulated signal if there is one
        cic_compensation_factor_i   : in  std_logic_vector(15 downto 0);                -- Compensation factor for the CIC filter, width can be modified as needed
        decimation_factor_i         : in  std_logic_vector(15 downto 0);                -- Decimation factor for the CIC filter, width can be modified as needed
        phi_inc_i                   : in  std_logic_vector(NCO_RESOLUTION-1 downto 0);  -- Phase increment for the NCO
        sin_signal_i                : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);  -- sinus input signal to be demodulated
        cos_signal_i                : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);  -- cosinus input signal to be demodulated
        angle_o                     : out std_logic_vector(OUTPUT_WIDTH-1 downto 0);      -- Demodulated output signal
        error_o                     : out std_logic_vector(7 downto 0);                 -- Error output
        valid_o                     : out std_logic;                                    -- Valid output signal

        -- Register interface for configuration and status
        reg_addr_i  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        reg_data_i  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        reg_data_o  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        reg_write_i : in  std_logic;
        reg_read_i  : in  std_logic;

        sinus_generator_o : out std_logic_vector(NCO_RESOLUTION-1 downto 0);        -- Output sinusoidal signal from the sinus generator
        sinus_generator_valid_o : out std_logic                                    -- Valid output signal from the sinus generator
    );
end entity rdc_top;

architecture behave of rdc_top is

    --================================================--
	     -- CORDIC --
	--================================================--
    component atan2 is
		port (
			clk    : in  std_logic                     := 'X';             -- clk
			areset : in  std_logic                     := 'X';             -- reset
			x      : in  std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0) := (others => 'X'); -- x
			y      : in  std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0) := (others => 'X'); -- y
			q      : out std_logic_vector(ATAN2_RESOLUTION-1 downto 0);                    -- q
            en     : in  std_logic_vector(0 downto 0)  := (others => 'X') -- en
		);
	end component atan2;

    --================================================--
         -- Constant --
    --================================================--
    constant ADDR_CONST_ID              : natural := 16#00#;
    constant ADDR_LOS_THRESHOLD         : natural := 16#01#;
    constant ADDR_DOS_OVERRANGE_THRESH  : natural := 16#02#;
    constant ADDR_DOS_MISMATCH_THRESH   : natural := 16#03#;
    constant ADDR_DOS_MAX_THRESH        : natural := 16#04#;
    constant ADDR_DOS_MIN_THRESH        : natural := 16#05#;
    constant ADDR_ERROR_ENABLE_MASK     : natural := 16#06#;
    constant ADDR_ERROR_CLEAR           : natural := 16#07#;

    constant PI     : signed(ATAN2_RESOLUTION-1 downto 0) := x"6488"; -- PI value for 16 bit with 13 fractional bits
    constant TWO_PI : signed(ATAN2_RESOLUTION downto 0) := '0' & x"C910"; -- 2*PI value for 16 bit with 13 fractional bits
    
    constant WINDOW_SAMPLES_PERIOD     : real := 62.5e-6;  -- 62.5 µs, value based on AD2S1210 datasheet for excitation frequency between 8kHz and 20kHz
    constant WINDOW_SAMPLES            : integer := integer(real(CLK_FREQUENCY) * WINDOW_SAMPLES_PERIOD);

    --================================================--
	     -- Signal --
	--================================================--
    signal demodulated_sin_signal_s : std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0) := (others => '0');
    signal demodulated_cos_signal_s : std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0) := (others => '0');

    -- angle signals
    signal prev_angle_s : signed(OUTPUT_WIDTH-1 downto 0);
    signal corrected_angle_s : signed(OUTPUT_WIDTH-1 downto 0);
    signal angle_s : std_logic_vector(ATAN2_RESOLUTION-1 downto 0);

    -- monitor signals
    signal delayed_demodulated_cos_s: std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);
    signal delayed_demodulated_sin_s: std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);

    -- error signals
    signal error_s : std_logic_vector(7 downto 0);
    signal clear_error_s : std_logic_vector(7 downto 0);

    -- valid signals
    signal sin_valid_s : std_logic := '0';
    signal cos_valid_s : std_logic := '0';

    -- flags and counters
    signal first_data_received : std_logic := '0'; -- Flag to indicate if the first data has been received
    signal cic_settled : std_logic := '0'; -- Flag to indicate if the CIC filter has settled
    signal settling_counter : unsigned(15 downto 0) := (others => '0');

    -- atan2 valid signals
    signal atan2_enable_pipeline : std_logic_vector(ATAN2_LATENCY-1 downto 0) := (others => '0');
    signal atan2_valid_internal : std_logic := '0';
    signal atan2_valid : std_logic := '0';

    -- valid output signal
    signal final_valid_s : std_logic := '0';
begin

    --================================================--
         -- Delay the demodulated signals --
    --================================================--
    process(clk_i)
        type arr is array (0 to SINCOS_LATENCY) of std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);
        variable sin_delay : arr;
        variable cos_delay : arr;
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                sin_delay := (others => (others => '0'));
                cos_delay := (others => (others => '0'));
                delayed_demodulated_sin_s <= (others => '0');
                delayed_demodulated_cos_s <= (others => '0');
            else
                sin_delay(0) := demodulated_sin_signal_s;
                cos_delay(0) := demodulated_cos_signal_s;
                for k in 1 to SINCOS_LATENCY loop
                    sin_delay(k) := sin_delay(k-1);
                    cos_delay(k) := cos_delay(k-1);
                end loop;
                delayed_demodulated_sin_s <= sin_delay(SINCOS_LATENCY);
                delayed_demodulated_cos_s <= cos_delay(SINCOS_LATENCY);
            end if;
        end if;
    end process;

    --================================================--
         -- Instantiate the Error Correction --
    --================================================--
    error_inst: entity work.error
        generic map (
            CLK_FREQUENCY => CLK_FREQUENCY,
            ATAN2_RESOLUTION => ATAN2_RESOLUTION,
            ADC_RESOLUTION => ADC_RESOLUTION,
            VECTOR_TRANSLATE_RESOLUTION => VECTOR_TRANSLATE_RESOLUTION,
            SINCOS_RESOLUTION => SINCOS_RESOLUTION,
            ADDR_WIDTH => ADDR_WIDTH,
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk_i => clk_i,
            reset_i => reset_i,
            sin_signal_i => sin_signal_i,
            cos_signal_i => cos_signal_i,
            angle_i => angle_s,
            valid_i => atan2_valid,
            delayed_demodulated_sin_i => delayed_demodulated_sin_s,
            delayed_demodulated_cos_i => delayed_demodulated_cos_s,
            first_data_received_i => first_data_received,
            cic_settled_i => cic_settled,
            reg_addr_i => reg_addr_i,
            reg_data_i => reg_data_i,
            reg_data_o => reg_data_o,
            reg_write_i => reg_write_i,
            reg_read_i => reg_read_i,
            error_o => error_s
        );

    --===================================================================--
            -- Instantiate the quadrature demodulation, sin signal--
    --===================================================================--
    demod_sin_inst: entity work.quadrature_demod
        generic map (
            ADC_RESOLUTION => ADC_RESOLUTION,
            NCO_RESOLUTION => NCO_RESOLUTION,
            VECTOR_TRANSLATE_RESOLUTION => VECTOR_TRANSLATE_RESOLUTION,
            DIVISION_RESOLUTION => DIVISION_RESOLUTION,

            VECTOR_TRANSLATE_LATENCY => VECTOR_TRANSLATE_LATENCY,
            DIVISION_LATENCY => DIVISION_LATENCY,

            R_MAX => R_MAX,
            N => N,
            M => M
        )
        port map (
            clk_i => clk_i,
            reset_i => reset_i,
            offset_modulated_signal_i => offset_modulated_signal_i,
            cic_compensation_factor_i => cic_compensation_factor_i,
            decimation_factor_i => decimation_factor_i,
            phi_inc_i => phi_inc_i,
            modulated_signal_i => sin_signal_i,
            demodulated_signal_o => demodulated_sin_signal_s,
            valid_o => sin_valid_s
        );

    --===================================================================--
            -- Instantiate the quadrature demodulation, cos signal--
    --===================================================================--
    demod_cos_inst: entity work.quadrature_demod
        generic map (
            ADC_RESOLUTION => ADC_RESOLUTION,
            NCO_RESOLUTION => NCO_RESOLUTION,
            VECTOR_TRANSLATE_RESOLUTION => VECTOR_TRANSLATE_RESOLUTION,
            DIVISION_RESOLUTION => DIVISION_RESOLUTION,

            VECTOR_TRANSLATE_LATENCY => VECTOR_TRANSLATE_LATENCY,
            DIVISION_LATENCY => DIVISION_LATENCY,

            R_MAX => R_MAX,
            N => N,
            M => M
        )
        port map (
            clk_i => clk_i,
            reset_i => reset_i,
            offset_modulated_signal_i => offset_modulated_signal_i,
            cic_compensation_factor_i => cic_compensation_factor_i,
            decimation_factor_i => decimation_factor_i,
            phi_inc_i => phi_inc_i,
            modulated_signal_i => cos_signal_i,
            demodulated_signal_o => demodulated_cos_signal_s,
            valid_o => cos_valid_s
        );

    --===================================================================--
            -- Instantiate the CORDIC, Atan2--
    --===================================================================--
    cordic_inst: atan2
        port map (
            clk    => clk_i,
            areset => reset_i,
            en(0)  => sin_valid_s and cos_valid_s,
            x      => demodulated_cos_signal_s,
            y      => demodulated_sin_signal_s,
            q      => angle_s
        );

    --================================================--
         -- Process the atan2 valid signal --
    --================================================--
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                atan2_enable_pipeline <= (others => '0');
                atan2_valid <= '0';
            else
                atan2_enable_pipeline <= atan2_enable_pipeline(ATAN2_LATENCY-2 downto 0) & (sin_valid_s and cos_valid_s);
                atan2_valid <= atan2_enable_pipeline(ATAN2_LATENCY-1);
            end if;
        end if;
    end process;

    --================================================--
         -- Process the first data received flag --
    --================================================--
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                first_data_received <= '0';
            elsif atan2_valid = '1' then
                first_data_received <= '1';
            end if;
        end if;
    end process;

    --================================================--
         -- Process the CIC settling time --
    --================================================--
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                cic_settled <= '0';
                settling_counter <= (others => '0');
            elsif settling_counter < unsigned(decimation_factor_i) * to_unsigned(M*N, 16) then
                settling_counter <= settling_counter + 1;
            else
                cic_settled <= '1';
            end if;
        end if;
    end process;


    --================================================--
         -- Correct the angle range --
    --================================================--
    -- Make the angle goes from 0 to 2*PI, be careful this code doesnt work if we stop the continuous sampling and restart it without reseting the system, it will not work as expected.
    -- got from there https://www.reddit.com/r/DSP/comments/15cmxqv/phase_unwrapping_on_fpga/
    process (clk_i)
        variable diff : signed(OUTPUT_WIDTH-1 downto 0);
        variable offset : signed(OUTPUT_WIDTH-1 downto 0);
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                prev_angle_s <= (others => '0');
                corrected_angle_s <= (others => '0');
                final_valid_s <= '0';
            else
                diff := resize(signed(angle_s), OUTPUT_WIDTH) - prev_angle_s;
                if diff > PI then
                    offset := -TWO_PI;
                elsif diff < -PI then
                    offset := TWO_PI;
                else
                    offset := (others => '0');
                end if;
                corrected_angle_s <= signed(angle_s) + offset;
                prev_angle_s <= signed(angle_s) + offset;
                final_valid_s <= atan2_valid;
            end if;
        end if;
    end process;

    --================================================--
         -- Sinus generator instantiation --
    --================================================--
    sinus_generator_inst: entity work.sinus_generator
        generic map (
            NCO_RESOLUTION => NCO_RESOLUTION
        )
        port map (
            clk_i => clk_i,
            reset_i => reset_i,
            phi_inc_i => phi_inc_i,
            sinus_o => sinus_generator_o,
            valid_o => sinus_generator_valid_o
        );

    --================================================--
         -- Output assignment --
    --================================================--
    valid_o <= final_valid_s;
    angle_o <= std_logic_vector(corrected_angle_s); -- Note: atan2 defines the output as a 16bit value with 13 fractional bits
    error_o <= error_s;
    
end architecture behave;
