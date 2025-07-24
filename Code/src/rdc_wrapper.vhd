-------------------------------------------------------------------------------
-- 
-- File      : 	rdc_wrapper.vhd
--
-- Description  :   This entity is a wrapper for the RDC (Radio Data Converter) core.
--                  It is used to test the critical path of the RDC core for timing analysis.
--
-- Author       : 	Patrick Maillard
-- Date         : 	23.07.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Patrick Maillard	23.07.2025        Initial version
----------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rdc_wrapper is
    generic (
        CLK_FREQUENCY            : integer := 40000000;
        ADC_RESOLUTION           : integer := 14;
        NCO_RESOLUTION           : integer := 16;
        VECTOR_TRANSLATE_RESOLUTION : integer := 16;
        SINCOS_RESOLUTION        : integer := 15;
        ATAN2_RESOLUTION         : integer := 16;
        DIVISION_RESOLUTION      : integer := 64;
        ATAN2_LATENCY            : integer := 3;
        SINCOS_LATENCY           : integer := 2;
        VECTOR_TRANSLATE_LATENCY : integer := 2;
        DIVISION_LATENCY         : integer := 32;
        OUTPUT_WIDTH             : integer := 17;
        R_MAX                    : integer := 1000;
        N                        : integer := 3;
        M                        : integer := 3;
        ADDR_WIDTH               : integer := 8;
        DATA_WIDTH               : integer := 32
    );
    port (
        clk_i   : in  std_logic;
        reset_i : in  std_logic;

        offset_modulated_signal_i : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);
        cic_compensation_factor_i : in  std_logic_vector(15 downto 0);
        decimation_factor_i       : in  std_logic_vector(15 downto 0);
        phi_inc_i                 : in  std_logic_vector(NCO_RESOLUTION-1 downto 0);
        sin_signal_i              : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);
        cos_signal_i              : in  std_logic_vector(ADC_RESOLUTION-1 downto 0);

        reg_addr_i  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        reg_data_i  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        reg_write_i : in  std_logic;
        reg_read_i  : in  std_logic;

        angle_o                     : out std_logic_vector(OUTPUT_WIDTH-1 downto 0);
        error_o                     : out std_logic_vector(7 downto 0);
        valid_o                     : out std_logic;
        reg_data_o                  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        sinus_generator_o           : out std_logic_vector(NCO_RESOLUTION-1 downto 0);
        sinus_generator_valid_o     : out std_logic
    );
end entity;

architecture rtl of rdc_wrapper is

    --================================================--
	     -- Declaration of entry registers --
	--================================================--
    signal offset_modulated_signal_r : std_logic_vector(ADC_RESOLUTION-1 downto 0);
    signal cic_comp_factor_r         : std_logic_vector(15 downto 0);
    signal decimation_factor_r       : std_logic_vector(15 downto 0);
    signal phi_inc_r                 : std_logic_vector(NCO_RESOLUTION-1 downto 0);
    signal sin_signal_r              : std_logic_vector(ADC_RESOLUTION-1 downto 0);
    signal cos_signal_r              : std_logic_vector(ADC_RESOLUTION-1 downto 0);

    signal reg_addr_r   : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal reg_data_r   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal reg_write_r  : std_logic;
    signal reg_read_r   : std_logic;

    --================================================--
	     -- Internal signals --
	--================================================--
    signal angle_int                 : std_logic_vector(OUTPUT_WIDTH-1 downto 0);
    signal error_int                 : std_logic_vector(7 downto 0);
    signal valid_int                 : std_logic;
    signal reg_data_int              : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal sinus_gen_int             : std_logic_vector(NCO_RESOLUTION-1 downto 0);
    signal sinus_gen_valid_int       : std_logic;

    --================================================--
	     -- Output registers --
	--================================================--
    signal angle_r                 : std_logic_vector(OUTPUT_WIDTH-1 downto 0);
    signal error_r                 : std_logic_vector(7 downto 0);
    signal valid_r                 : std_logic;
    signal reg_data_out_r          : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal sinus_gen_r             : std_logic_vector(NCO_RESOLUTION-1 downto 0);
    signal sinus_gen_valid_r       : std_logic;

begin

    --================================================--
	     -- Input pipeline --
	--================================================--
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                offset_modulated_signal_r <= (others => '0');
                cic_comp_factor_r         <= (others => '0');
                decimation_factor_r       <= (others => '0');
                phi_inc_r                 <= (others => '0');
                sin_signal_r              <= (others => '0');
                cos_signal_r              <= (others => '0');
                reg_addr_r                <= (others => '0');
                reg_data_r                <= (others => '0');
                reg_write_r               <= '0';
                reg_read_r                <= '0';
            else
                offset_modulated_signal_r <= offset_modulated_signal_i;
                cic_comp_factor_r         <= cic_compensation_factor_i;
                decimation_factor_r       <= decimation_factor_i;
                phi_inc_r                 <= phi_inc_i;
                sin_signal_r              <= sin_signal_i;
                cos_signal_r              <= cos_signal_i;
                reg_addr_r                <= reg_addr_i;
                reg_data_r                <= reg_data_i;
                reg_write_r               <= reg_write_i;
                reg_read_r                <= reg_read_i;
            end if;
        end if;
    end process;

    --================================================--
         -- Instantiate the RDC core --
    --================================================--
    u_rdc : entity work.rdc_top
        generic map (
            CLK_FREQUENCY            => CLK_FREQUENCY,
            ADC_RESOLUTION           => ADC_RESOLUTION,
            NCO_RESOLUTION           => NCO_RESOLUTION,
            VECTOR_TRANSLATE_RESOLUTION => VECTOR_TRANSLATE_RESOLUTION,
            SINCOS_RESOLUTION        => SINCOS_RESOLUTION,
            ATAN2_RESOLUTION         => ATAN2_RESOLUTION,
            DIVISION_RESOLUTION      => DIVISION_RESOLUTION,
            ATAN2_LATENCY            => ATAN2_LATENCY,
            SINCOS_LATENCY           => SINCOS_LATENCY,
            VECTOR_TRANSLATE_LATENCY => VECTOR_TRANSLATE_LATENCY,
            DIVISION_LATENCY        => DIVISION_LATENCY,
            OUTPUT_WIDTH             => OUTPUT_WIDTH,
            R_MAX                    => R_MAX,
            N                        => N,
            M                        => M,
            ADDR_WIDTH               => ADDR_WIDTH,
            DATA_WIDTH               => DATA_WIDTH
        )
        port map (
            clk_i                     => clk_i,
            reset_i                   => reset_i,

            offset_modulated_signal_i => offset_modulated_signal_r,
            cic_compensation_factor_i => cic_comp_factor_r,
            decimation_factor_i       => decimation_factor_r,
            phi_inc_i                 => phi_inc_r,
            sin_signal_i              => sin_signal_r,
            cos_signal_i              => cos_signal_r,

            angle_o                   => angle_int,
            error_o                   => error_int,
            valid_o                   => valid_int,

            reg_addr_i  => reg_addr_r,
            reg_data_i  => reg_data_r,
            reg_data_o  => reg_data_int,
            reg_write_i => reg_write_r,
            reg_read_i  => reg_read_r,

            sinus_generator_o       => sinus_gen_int,
            sinus_generator_valid_o => sinus_gen_valid_int
        );

    --================================================--
            -- Output pipeline --
    --================================================--
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                angle_r           <= (others => '0');
                error_r           <= (others => '0');
                valid_r           <= '0';
                reg_data_out_r    <= (others => '0');
                sinus_gen_r       <= (others => '0');
                sinus_gen_valid_r <= '0';
            else
                angle_r           <= angle_int;
                error_r           <= error_int;
                valid_r           <= valid_int;
                reg_data_out_r    <= reg_data_int;
                sinus_gen_r       <= sinus_gen_int;
                sinus_gen_valid_r <= sinus_gen_valid_int;
            end if;
        end if;
    end process;

    --================================================--
         -- Output assignment --
    --================================================--
    angle_o                 <= angle_r;
    error_o                 <= error_r;
    valid_o                 <= valid_r;
    reg_data_o              <= reg_data_out_r;
    sinus_generator_o       <= sinus_gen_r;
    sinus_generator_valid_o <= sinus_gen_valid_r;

end architecture rtl;