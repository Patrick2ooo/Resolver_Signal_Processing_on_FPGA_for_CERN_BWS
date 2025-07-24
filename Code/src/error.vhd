-------------------------------------------------------------------------------
-- 
-- File      : 	error.vhd
--
-- Description  :   This entity handles error detection for the ADC processing unit.
-- 					It includes clipping detection, loss of signal (LOS), overrange,
-- 					and mismatch detection with configurable thresholds.
--                  This entity is based on the RDC AD2S1210 error detection logic.
--
-- Author       : 	Patrick Maillard
-- Date         : 	20.07.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Patrick Maillard	20.07.2025         
----------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity error is
    generic (
        CLK_FREQUENCY : integer := 40000000;            -- System clock frequency 40 MHz
        ATAN2_RESOLUTION : integer := 16;               -- Resolution of the atan2 component
        ADC_RESOLUTION : integer := 14;                 -- Resolution of the ADC
        VECTOR_TRANSLATE_RESOLUTION : integer := 16;    -- Width of the vector translate resolution
        SINCOS_RESOLUTION : integer := 15;              -- Resolution of the sincos component
        ADDR_WIDTH : integer := 8;                      -- Width of the address bus
        DATA_WIDTH : integer := 32                      -- Width of the data bus
    );
    port (
        clk_i                       : in  std_logic;                                    -- System clock
        reset_i                     : in  std_logic;                                    -- Reset signal

        -- Input signals for error detection
        sin_signal_i                : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);                  -- Sine input signal
        cos_signal_i                : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);                  -- Cosine input signal
        angle_i                     : in  std_logic_vector(ATAN2_RESOLUTION-1 downto 0);                -- Angle input signal
        valid_i                     : in  std_logic;                                                    -- Valid signal
        delayed_demodulated_sin_i   : in  std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);     -- Delayed demodulated sine signal
        delayed_demodulated_cos_i   : in  std_logic_vector(VECTOR_TRANSLATE_RESOLUTION-1 downto 0);     -- Delayed demodulated cosine signal
        first_data_received_i       : in  std_logic;                                                    -- Flag indicating first data received
        cic_settled_i               : in  std_logic;                                                    -- Flag indicating CIC filter settled

        -- Register interface
        reg_addr_i                  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);      -- Register address input
        reg_data_i                  : in  std_logic_vector(DATA_WIDTH-1 downto 0);      -- Register data input
        reg_data_o                  : out std_logic_vector(DATA_WIDTH-1 downto 0);      -- Register data output
        reg_write_i                 : in  std_logic;                                    -- Register write enable
        reg_read_i                  : in  std_logic;                                    -- Register read enable

        -- Error output
        error_o                     : out std_logic_vector(7 downto 0)                 -- Error output
    );
end entity error;

architecture behave of error is

    --================================================--
         -- SINCOS --
    --================================================--
    component sincos is
		port (
			clk    : in  std_logic                     := 'X';             -- clk
			areset : in  std_logic                     := 'X';             -- reset
			a      : in  std_logic_vector(ATAN2_RESOLUTION-1 downto 0) := (others => 'X'); -- a
			c      : out std_logic_vector(SINCOS_RESOLUTION-1 downto 0);                    -- c
			s      : out std_logic_vector(SINCOS_RESOLUTION-1 downto 0);                     -- s
            en     : in  std_logic_vector(0 downto 0)  := (others => 'X')  -- en
		);
	end component sincos;

    --================================================--
         -- Constants --
    --================================================--
    -- Register addresses
    constant ADDR_CONST_ID              : natural := 16#00#;
    constant ADDR_LOS_THRESHOLD         : natural := 16#01#;
    constant ADDR_DOS_OVERRANGE_THRESH  : natural := 16#02#;
    constant ADDR_DOS_MISMATCH_THRESH   : natural := 16#03#;
    constant ADDR_DOS_MAX_THRESH        : natural := 16#04#;
    constant ADDR_DOS_MIN_THRESH        : natural := 16#05#;
    constant ADDR_ERROR_ENABLE_MASK     : natural := 16#06#;
    constant ADDR_ERROR_CLEAR           : natural := 16#07#;

    -- Constants for windowing
    constant WINDOW_SAMPLES_PERIOD     : real := 62.5e-6;  -- 62.5 µs
    constant WINDOW_SAMPLES            : integer := integer(real(CLK_FREQUENCY) * WINDOW_SAMPLES_PERIOD);
    
    -- Constants for monitor width
    constant MONITOR_WIDTH : integer := VECTOR_TRANSLATE_RESOLUTION + SINCOS_RESOLUTION;
    
    --================================================--
         -- Signals --
    --================================================--   

    -- Internal registers with default values
    signal los_threshold_reg     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal overrange_threshold_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal error_enable_mask_reg : std_logic_vector(7 downto 0);
    signal dos_mismatch_threshold_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dos_max_threshold_reg : signed(ADC_RESOLUTION-1 downto 0) := (to_signed(0, ADC_RESOLUTION));
    signal dos_min_threshold_reg : signed(ADC_RESOLUTION-1 downto 0) := '0' & (to_signed(1, ADC_RESOLUTION-1));

    -- Error signals
    signal err_clipped : std_logic := '0';
    signal err_los : std_logic := '0';
    signal err_overrange : std_logic := '0';
    signal err_mismatch : std_logic := '0';
    signal err_tracking : std_logic := '0';
    signal err_velocity : std_logic := '0';

    -- Signals for monitoring
    signal monitor_s : signed(MONITOR_WIDTH-1 downto 0);
    signal monitor_min: signed(MONITOR_WIDTH-1 downto 0);
    signal monitor_max: signed(MONITOR_WIDTH-1 downto 0);
    signal peak_max: signed(MONITOR_WIDTH-1 downto 0);
    signal peak_min: signed(MONITOR_WIDTH-1 downto 0);

    -- Windowi signals
    signal window_counter : unsigned(15 downto 0);
    signal window_valid : std_logic := '0';

    -- Signals for error output
    signal error_s : std_logic_vector(7 downto 0);
    signal clear_error_s : std_logic_vector(7 downto 0);

    -- Signals for sincos component
    signal angle_s : std_logic_vector(ATAN2_RESOLUTION-1 downto 0);
    signal sin_angle_s : std_logic_vector(SINCOS_RESOLUTION-1 downto 0);
    signal cos_angle_s : std_logic_vector(SINCOS_RESOLUTION-1 downto 0);

begin

    --================================================--
         -- Register write process --
    --================================================--  
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                los_threshold_reg <= std_logic_vector(to_unsigned(0, DATA_WIDTH));              -- Reset to zero
                overrange_threshold_reg <= std_logic_vector(to_unsigned(0, DATA_WIDTH));        -- Reset to zero
                error_enable_mask_reg <= "11111111";                                            -- Enable all errors by default
                dos_mismatch_threshold_reg <= std_logic_vector(to_unsigned(0, DATA_WIDTH));     -- Reset to zero
                dos_max_threshold_reg <= '1' & (to_signed(0, ADC_RESOLUTION-1));                -- Set maximum value to the minimum value (signed)
                dos_min_threshold_reg <= '0' & (to_signed(1, ADC_RESOLUTION-1));                -- Set minimum value to the maximum value (signed)
                clear_error_s <= (others => '0');
            else
                clear_error_s <= (others => '0');
                if reg_write_i = '1' then
                    case to_integer(unsigned(reg_addr_i)) is
                        when ADDR_LOS_THRESHOLD =>
                            los_threshold_reg <= reg_data_i;
                        when ADDR_DOS_OVERRANGE_THRESH =>
                            overrange_threshold_reg <= reg_data_i;
                        when ADDR_DOS_MISMATCH_THRESH =>
                            dos_mismatch_threshold_reg <= reg_data_i;
                        when ADDR_DOS_MAX_THRESH =>
                            dos_max_threshold_reg <= signed(reg_data_i(ADC_RESOLUTION-1 downto 0));
                        when ADDR_DOS_MIN_THRESH =>
                            dos_min_threshold_reg <= signed(reg_data_i(ADC_RESOLUTION-1 downto 0));
                        when ADDR_ERROR_ENABLE_MASK =>
                            error_enable_mask_reg <= reg_data_i(7 downto 0);
                        when ADDR_ERROR_CLEAR =>
                            clear_error_s <= reg_data_i(7 downto 0);
                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- Register read process --
    --================================================--
    process(all)
    begin
        case to_integer(unsigned(reg_addr_i)) is
            when ADDR_CONST_ID =>
                reg_data_o <= x"12345678"; -- ID used to test if the register interface is working
            when ADDR_LOS_THRESHOLD =>
                reg_data_o <= los_threshold_reg;
            when ADDR_DOS_OVERRANGE_THRESH =>
                reg_data_o <= overrange_threshold_reg;
            when ADDR_DOS_MISMATCH_THRESH =>
                reg_data_o <= dos_mismatch_threshold_reg;
            when ADDR_DOS_MAX_THRESH =>
                reg_data_o <= (others => '0');
                reg_data_o(ADC_RESOLUTION-1 downto 0) <= std_logic_vector(dos_max_threshold_reg);
            when ADDR_DOS_MIN_THRESH =>
                reg_data_o <= (others => '0');
                reg_data_o(ADC_RESOLUTION-1 downto 0) <= std_logic_vector(dos_min_threshold_reg);
            when ADDR_ERROR_ENABLE_MASK =>
                reg_data_o <= x"000000" & error_enable_mask_reg;
            when others =>
                reg_data_o <= x"DEADBEEF";
        end case;
    end process;

    --================================================--
         -- SINCOS component instantiation --
    --================================================--
    sincos_inst_sin: sincos
    port map (
        clk    => clk_i,
        areset => reset_i,
        a      => angle_i,
        c      => cos_angle_s,
        s      => sin_angle_s,
        en(0)  => valid_i
    );

    --================================================--
         -- Monitor process --
    --================================================--
    process(clk_i)
        variable product_sin, product_cos : signed(MONITOR_WIDTH-1 downto 0);
        variable scaled_product_sin, scaled_product_cos : signed(MONITOR_WIDTH-1 downto 0);
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                monitor_min <= resize(signed(dos_min_threshold_reg), MONITOR_WIDTH);    -- use minimum reset threshold set by the user
                monitor_max <= resize(signed(dos_max_threshold_reg), MONITOR_WIDTH);    -- use maximum reset threshold set by the user
                peak_min <= resize(signed(dos_min_threshold_reg), MONITOR_WIDTH);       -- use minimum reset threshold set by the user
                peak_max <= resize(signed(dos_max_threshold_reg), MONITOR_WIDTH);       -- use maximum reset threshold set by the user
                window_counter <= (others => '0');
                window_valid <= '0';
                monitor_s <= resize(signed(dos_min_threshold_reg), MONITOR_WIDTH);      -- Initialize monitor_s to the minimum threshold

            elsif clear_error_s(3 downto 0) /= "0000" then                              -- if there is a clear error signal reset the monitor values
                monitor_min <= resize(signed(dos_min_threshold_reg), MONITOR_WIDTH);    -- use minimum reset threshold set by the user
                monitor_max <= resize(signed(dos_max_threshold_reg), MONITOR_WIDTH);    -- use maximum reset threshold set by the user
                peak_min <= resize(signed(dos_min_threshold_reg), MONITOR_WIDTH);       -- use minimum reset threshold set by the user
                peak_max <= resize(signed(dos_max_threshold_reg), MONITOR_WIDTH);       -- use maximum reset threshold set by the user
                window_counter <= (others => '0');
                window_valid <= '0';
            else
                -- Monitor formula based on the RDC AD2S1210
                product_sin := signed(delayed_demodulated_sin_i) * signed(sin_angle_s);
                product_cos := signed(delayed_demodulated_cos_i) * signed(cos_angle_s);
                scaled_product_sin := resize(shift_right(product_sin, 13), MONITOR_WIDTH);
                scaled_product_cos := resize(shift_right(product_cos, 13), MONITOR_WIDTH);
                monitor_s <= scaled_product_sin + scaled_product_cos;

                -- Update the peak values
                if (first_data_received_i = '1' and cic_settled_i = '1') then
                    if window_counter < to_unsigned(WINDOW_SAMPLES-1, 16) then
                        window_counter <= window_counter + 1;
                        if monitor_s < monitor_min then
                            monitor_min <= monitor_s;
                        end if;
                        if monitor_s > monitor_max then
                            monitor_max <= monitor_s;
                        end if;
                    else
                        peak_max <= monitor_max;
                        peak_min <= monitor_min;
                        -- Reset the counter for the next window
                        window_counter <= (others => '0');
                        window_valid <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- D7: Clipping detection --
    --================================================--
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                err_clipped <= '0';
            elsif (signed(sin_signal_i) = to_signed(2**(ADC_RESOLUTION-1)-1, ADC_RESOLUTION)) or
               (signed(sin_signal_i) = to_signed(-2**(ADC_RESOLUTION-1), ADC_RESOLUTION)) or
               (signed(cos_signal_i) = to_signed(2**(ADC_RESOLUTION-1)-1, ADC_RESOLUTION)) or
               (signed(cos_signal_i) = to_signed(-2**(ADC_RESOLUTION-1), ADC_RESOLUTION)) then
                err_clipped <= '1';
            else
                err_clipped <= '0';
            end if;
        end if;
    end process;


    --================================================--
         -- D6: Loss of Signal (LOS) detection --
    --================================================--
    process(clk_i)
        variable peak_max_abs : signed(MONITOR_WIDTH-1 downto 0);
        variable los_threshold_signed : signed(MONITOR_WIDTH-1 downto 0);
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                err_los <= '0';
            else
                peak_max_abs := abs(peak_max);
                los_threshold_signed := resize(signed(los_threshold_reg(ADC_RESOLUTION-1 downto 0)), MONITOR_WIDTH);
                if window_valid = '1' then
                    if (peak_max_abs < los_threshold_signed) then
                        err_los <= '1';
                    else
                        err_los <= '0';
                    end if;
                else
                    err_los <= '0';
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- D5: DOS overrange threshold detection --
    --================================================--
    process(clk_i)
        variable peak_max_abs : signed(MONITOR_WIDTH-1 downto 0);
        variable overrange_threshold_signed : signed(MONITOR_WIDTH-1 downto 0);
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                err_overrange <= '0';
            else
                peak_max_abs := abs(peak_max);
                overrange_threshold_signed := resize(signed(overrange_threshold_reg(ADC_RESOLUTION-1 downto 0)), MONITOR_WIDTH);

                if window_valid = '1' then
                    if (peak_max_abs > overrange_threshold_signed) then
                        err_overrange <= '1';
                    else
                        err_overrange <= '0';
                    end if;
                else
                    err_overrange <= '0';
                end if;
            end if;
        end if;
    end process;
    
    --================================================--
         -- D4: DOS mismatch detection --
    --================================================--
    process(clk_i)
        variable delta : signed(MONITOR_WIDTH-1 downto 0);
        variable threshold: signed(MONITOR_WIDTH-1 downto 0);
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                err_mismatch <= '0';
            else
                delta := signed(peak_max) - signed(peak_min);
                threshold := resize(signed(dos_mismatch_threshold_reg), MONITOR_WIDTH);
                if window_valid = '1' then
                    if abs(delta) > abs(threshold) then
                            err_mismatch <= '1';
                        else
                            err_mismatch <= '0';
                    end if;
                else
                    err_mismatch <= '0';
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- Error output signal--
    --================================================--
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                error_s <= (others => '0');
            elsif (clear_error_s /= "00000000") then
                error_s <= error_s and not clear_error_s;
            else
                if err_clipped = '1' then
                    error_s(0) <= error_enable_mask_reg(0);
                end if;
                if err_los = '1' then
                    error_s(1) <= error_enable_mask_reg(1);
                end if;
                if err_overrange = '1' then
                    error_s(2) <= error_enable_mask_reg(2);
                end if;
                if err_mismatch = '1' then
                    error_s(3) <= error_enable_mask_reg(3);
                end if;
                error_s(4) <= '0'; -- Reserved for future use
                error_s(5) <= '0'; -- Reserved for future use
                error_s(6) <= '0'; -- Reserved for future use
                error_s(7) <= '0'; -- Reserved for future use
            end if;
        end if;
    end process;

    error_o <= error_s;

end architecture behave;