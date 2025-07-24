-------------------------------------------------------------------------------
-- 
-- File      : 	quadrature_demod.vhd
--
-- Description  :   This entity is a quadrature demodulator. it intergrates 2 IPs, the NCO and the CIC filter.
-- 					The NCO generates a sine and a cosine signal at the frequency of the input signal.
-- 					The CIC filter is used to filter the I and Q signals.
-- 					The output is the demodulated signal.
--
-- Author       : 	Patrick Maillard
-- Date         : 	16.06.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Patrick Maillard	07.07.2025        Initial version
----------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity quadrature_demod is
    generic (
        ADC_RESOLUTION              : integer := 14;  -- Resolution of the ADC
        NCO_RESOLUTION              : integer := 16;  -- Resolution of the NCO
        VECTOR_TRANSLATE_RESOLUTION : integer := 33;  -- Width of the output signal
        DIVISION_RESOLUTION         : integer := 64;  -- Resolution of the division

        VECTOR_TRANSLATE_LATENCY    : integer := 2;   -- Latency of the vector translate component
        DIVISION_LATENCY            : integer := 32;  -- Latency of the division component

        R_MAX   : integer := 1000;   -- Maximum decimation factor for the CIC filter
        N       : integer := 3;      -- Number of stages in the CIC filter
        M       : integer := 3       -- Number of integrators in the CIC filter
    );
    port (
        clk_i                       : in  std_logic;                                                    -- System clock
        reset_i                     : in  std_logic;                                                    -- Reset signal
        offset_modulated_signal_i   : in  std_logic_vector(ADC_RESOLUTION - 1 downto 0);                -- Offset of the ADC modulated signal if there is one
        cic_compensation_factor_i   : in  std_logic_vector(15 downto 0);                                -- Compensation factor for the CIC filter, width can be modified as needed
        decimation_factor_i         : in  std_logic_vector(15 downto 0);                                -- Decimation factor for the CIC filter, width can be modified as needed
        phi_inc_i                   : in  std_logic_vector(NCO_RESOLUTION-1 downto 0);                  -- Phase increment for the NCO
        modulated_signal_i          : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);                  -- Input signal to be demodulated
        demodulated_signal_o        : out std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);     -- Demodulated output signal
        valid_o                     : out std_logic                                                     -- Valid signal for the output
    );
end entity quadrature_demod;

architecture behave of quadrature_demod is

    --================================================--
	     -- NCO (Numerically Controlled Oscillator) --
	--================================================--
    component nco is
		port (
			clk       : in  std_logic;                       -- clk
			reset_n   : in  std_logic;                       -- reset_n
			clken     : in  std_logic;                       -- clken
			phi_inc_i : in  std_logic_vector(15 downto 0);   -- phi_inc_i
			fsin_o    : out std_logic_vector(15 downto 0);   -- fsin_o
			fcos_o    : out std_logic_vector(15 downto 0);   -- fcos_o
			out_valid : out std_logic                        -- out_valid
		);
	end component nco;

    --================================================--
	     -- CORDIC --
	--================================================--
    component vector_translate is
	    port (
	    	areset : in  std_logic;                         -- reset
	    	clk    : in  std_logic;                         -- clk
            en     : in  std_logic_vector(0 downto 0);
	    	q      : out std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);     -- angle output
	    	x      : in  std_logic_vector(14 downto 0);     -- x
	    	y      : in  std_logic_vector(14 downto 0);     -- y
	    	r      : out std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0)      -- magnitude output
	    );
    end component vector_translate;

    --================================================--
         -- FIR Compensator --
    --================================================--
    --component fir is
	--	port (
	--		clk              : in  std_logic                     := 'X';             -- clk
	--		reset_n          : in  std_logic                     := 'X';             -- reset_n
	--		ast_sink_data    : in  std_logic_vector(20 downto 0) := (others => 'X'); -- data
	--		ast_sink_valid   : in  std_logic                     := 'X';             -- valid
	--		ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
	--		ast_source_data  : out std_logic_vector(33 downto 0);                    -- data
	--		ast_source_valid : out std_logic;                                        -- valid
	--		ast_source_error : out std_logic_vector(1 downto 0)                      -- error
	--	);
	--end component fir;

    --================================================--
	     -- Constant --
	--================================================--
    constant IQ_RESOLUTION : integer := ADC_RESOLUTION + 1;
    constant MUL_RESOLUTION : integer := NCO_RESOLUTION + ADC_RESOLUTION; -- Resolution for multiplication, can be modified as needed
    constant CORDIC_SCALE_FACTOR : unsigned(15 downto 0) := to_unsigned(39797, 16); -- 0.6072529350088 * 2^16

    --================================================--
	     -- Signal --
	--================================================--
    -- Signals for the NCO
    signal nco_sine_s       : std_logic_vector(NCO_RESOLUTION-1 downto 0); -- Sine output from NCO
    signal nco_cosine_s     : std_logic_vector(NCO_RESOLUTION-1 downto 0); -- Cosine output from NCO
    signal nco_valid_s      : std_logic := '0';                            -- Valid signal from NCO

    -- Signals for the I/Q components
    signal i_component_s    : std_logic_vector((IQ_RESOLUTION-1) downto 0); -- I component (in-phase)
    signal q_component_s    : std_logic_vector((IQ_RESOLUTION-1) downto 0); -- Q component (quadrature)
    signal filtered_i_s     : std_logic_vector((IQ_RESOLUTION-1) downto 0); -- Filtered I component
    signal filtered_q_s     : std_logic_vector((IQ_RESOLUTION-1) downto 0); -- Filtered Q component
    signal amplitude_s      : std_logic_vector((VECTOR_TRANSLATE_RESOLUTION-1) downto 0); -- Amplitude of the demodulated signal

    signal corrected_modulated_signal_s : std_logic_vector((ADC_RESOLUTION-1) downto 0); -- Corrected modulated signal without offset

    -- CIC signals
    signal decimation_factor_s : integer := 1; -- Decimation factor for CIC filter, can be modified as needed
    signal cic_valid_i_s : std_logic := '0';                                        -- Valid signal from CIC for i component
    signal cic_valid_q_s : std_logic := '0';                                        -- Valid signal from CIC for q component
    signal cic_i_output : signed(IQ_RESOLUTION-1 downto 0);
    signal cic_q_output : signed(IQ_RESOLUTION-1 downto 0);

    -- Signals for the FIR filter
    signal fir_i_output : std_logic_vector(14 downto 0);
    signal fir_q_output : std_logic_vector(14 downto 0);
    signal fir_i_valid  : std_logic := '0';
    signal fir_q_valid  : std_logic := '0';

    -- Signals for the delay line
    signal sign_delayed_s           : std_logic;
    signal sign_delay_pipeline      : std_logic_vector(VECTOR_TRANSLATE_LATENCY-1 downto 0) := (others => '0');
    signal valid_delay_pipeline     : std_logic_vector(VECTOR_TRANSLATE_LATENCY-1 downto 0) := (others => '0');

    -- Signals for the CORDIC component
    signal amplitude_corrected_s    : std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);
    signal cordic_enable_pipeline   : std_logic_vector(VECTOR_TRANSLATE_LATENCY-1 downto 0) := (others => '0');
    signal cordic_valid_internal    : std_logic := '0';
    signal corrected_valid          : std_logic := '0';

    signal valid_component_s : std_logic := '0';

begin

    -- Convert the input signals to signed for processing
    decimation_factor_s <= to_integer(unsigned(decimation_factor_i));

    --================================================--
         -- Instantiate the CIC filter, I component--
    --================================================--
    i_cic_inst: entity work.cic_decimator
        generic map (
            DIVISION_RESOLUTION => DIVISION_RESOLUTION,
            DIVISION_LATENCY => DIVISION_LATENCY,
            N => N,
            M => M,
            R_MAX => R_MAX,
            WIDTH => IQ_RESOLUTION
        )
        port map (
            clk => clk_i,
            reset_i => reset_i,
            cic_compensation_factor_i => cic_compensation_factor_i,
            decimation_factor_i => decimation_factor_s,
            valid_i => valid_component_s,
            x_i => signed(i_component_s),
            y_o => cic_i_output,
            valid_o => cic_valid_i_s
    );

    --================================================--
         -- FIR compensator to correct the amplitude of the demodulated signal, not working yet
    --================================================--
    --fir_compensator_i_inst: fir
    --port map (
    --        clk              => clk_i,
    --        reset_n          => not reset_i,
    --        ast_sink_data    => std_logic_vector(resize(cic_i_output, 21)),
    --        ast_sink_valid   => cic_valid_i_s,
    --        ast_sink_error   => (others => '0'),
    --        ast_source_data  => fir_i_output,
    --        ast_source_valid => fir_i_valid,
    --        ast_source_error => open
    --);

    --================================================--
         -- Instantiate the CIC filter, Q component--
    --================================================--
    q_cic_inst: entity work.cic_decimator
        generic map (
            DIVISION_RESOLUTION => DIVISION_RESOLUTION,
            DIVISION_LATENCY => DIVISION_LATENCY,
            N => N,
            M => M,
            R_MAX => R_MAX,
            WIDTH => IQ_RESOLUTION
        )
        port map (
            clk => clk_i,
            reset_i => reset_i,
            cic_compensation_factor_i => cic_compensation_factor_i,
            decimation_factor_i => decimation_factor_s,
            valid_i => valid_component_s,
            x_i => signed(q_component_s),
            y_o => cic_q_output,
            valid_o => cic_valid_q_s
    );

    --================================================--
         -- FIR compensator to correct the amplitude of the demodulated signal, not working yet
    --================================================--
    --fir_compensator_q_inst: fir
    --port map (
    --        clk              => clk_i,
    --        reset_n          => not reset_i,
    --        ast_sink_data    => std_logic_vector(resize(cic_q_output, 21)),
    --        ast_sink_valid   => cic_valid_q_s,
    --        ast_sink_error   => (others => '0'),
    --        ast_source_data  => fir_q_output,
    --        ast_source_valid => fir_q_valid,
    --        ast_source_error => open
    --);

    -- convert the CIC outputs to std_logic_vector
    filtered_i_s <= std_logic_vector(cic_i_output);
    filtered_q_s <= std_logic_vector(cic_q_output);

    --========================================================--
         -- Instantiate the CORDIC for amplitude calculation
    --========================================================--
    cordic_inst: vector_translate
        port map (
            areset => reset_i,
            clk    => clk_i,
            en(0)  => cic_valid_i_s and cic_valid_q_s,
            q      => open,
            x      => filtered_i_s,
            y      => filtered_q_s,
            r      => amplitude_s
    );

    -- Calculate the phase increment for the NCO based on the input frequency wished
    -- TODO: possible upgrade, implement the phase_inc_s calculation based on the input frequency (it is an idea, not implemented yet)
    -- phase_inc_s <= std_logic_vector(to_unsigned(((excitation_frequency_i * shift_left(1, NCO_RESOLUTION)) / CLK_FREQUENCY ), 16));

    --===============================================================--
         -- Instantiate the NCO (Numerically Controlled Oscillator)
    --===============================================================--
    nco_inst: nco
        port map (
            clk       => clk_i,
            reset_n   => not reset_i,
            clken     => '1',
            phi_inc_i => phi_inc_i,
            fsin_o    => nco_sine_s,
            fcos_o    => nco_cosine_s,
            out_valid => nco_valid_s
    );

    --================================================--
         -- I/Q component calculation --
    --================================================--
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                corrected_modulated_signal_s <= (others => '0');
                i_component_s <= (others => '0');
                q_component_s <= (others => '0');
            else
                valid_component_s <= '0';
                if nco_valid_s = '1' then
                    -- the input osccillation need to oscillate around 0, before multiplying with the NCO outputs
                    corrected_modulated_signal_s <= std_logic_vector(signed(modulated_signal_i) - signed(offset_modulated_signal_i));
                    
                    -- Multiply input signal with NCO outputs
                    i_component_s <= std_logic_vector(shift_right(signed(corrected_modulated_signal_s) * signed(nco_cosine_s), NCO_RESOLUTION-1)(IQ_RESOLUTION-1 downto 0));
                    q_component_s <= std_logic_vector(shift_right(signed(corrected_modulated_signal_s) * signed(nco_sine_s), NCO_RESOLUTION-1)(IQ_RESOLUTION-1 downto 0));
                
                    -- propagate the valid signal
                    valid_component_s <= nco_valid_s;
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- CORDIC output processing --
    --================================================--
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                amplitude_corrected_s <= (others => '0');
                corrected_valid <= '0';
            else
                amplitude_corrected_s <= std_logic_vector(resize(shift_right(unsigned(amplitude_s) * CORDIC_SCALE_FACTOR, 16), VECTOR_TRANSLATE_RESOLUTION));
                corrected_valid <= cordic_valid_internal;
            end if;
        end if;
    end process;

    --==================================================
         -- Sign delay pipeline for the output --
    --==================================================
    -- Note: Be careful, the amplitude is always positive because of the power 2 effect, so i tried to readjust the output by having the correct sign for our demodulated signal, but this work only because i know that the only component that'll be useful is Q (due to our excitation signal being a sine wave), so it won't work for every system but will work for ours
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                sign_delay_pipeline <= (others => '0');
                cordic_enable_pipeline <= (others => '0');
                cordic_valid_internal <= '0';
            else
                cordic_enable_pipeline <= cordic_enable_pipeline(VECTOR_TRANSLATE_LATENCY-2 downto 0) & (cic_valid_q_s and cic_valid_i_s);
                cordic_valid_internal <= cordic_enable_pipeline(VECTOR_TRANSLATE_LATENCY-1);

                if cic_valid_q_s = '1' then
                    sign_delay_pipeline <= sign_delay_pipeline(VECTOR_TRANSLATE_LATENCY-2 downto 0) & filtered_q_s(filtered_q_s'left);
                end if;
            end if;
        end if;
    end process;


    --==================================================
         -- Output processing --
    --==================================================
    sign_delayed_s <= sign_delay_pipeline(VECTOR_TRANSLATE_LATENCY-1);
    -- Assign the amplitude to the output
    process(all)
    begin
        if sign_delayed_s = '0' then
            demodulated_signal_o <= amplitude_corrected_s;
        else
            demodulated_signal_o <= std_logic_vector(-signed(amplitude_corrected_s));
        end if;
    end process;

    valid_o <= corrected_valid;

end architecture behave;
