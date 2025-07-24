-------------------------------------------------------------------------------
-- 
-- File      : 	cic_decimator.vhd
--
-- Description  :   This entity is a CIC decimator filter it intergrates the cic integrator, decimation and comb part.
--                  It takes a signed input signal, applies CIC decimation, and outputs a filtered signed signal.
--
-- Author       : 	Patrick Maillard
-- Date         : 	07.07.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Patrick Maillard	07.07.2025         
----------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.cic_pkg.all;

entity cic_decimator is
    generic (
        DIVISION_RESOLUTION : integer := 64;                                -- Resolution for division operation
        DIVISION_LATENCY : integer := 32;                                   -- Latency for division operation
        N : integer := 3;                                                   -- Number of stages
        M : integer := 1;                                                   -- Decimation factor
        R_MAX : integer := 1000;                                            -- Maximum range for decimation factor
        WIDTH : integer := 16                                               -- Bit width for input/output signals
    );
    port (
        clk                         : in  std_logic;                        -- Clock signal
        reset_i                     : in  std_logic;                        -- Reset signal
        cic_compensation_factor_i   : in  std_logic_vector(15 downto 0);    -- CIC compensation factor input
        decimation_factor_i         : in  integer range 0 to R_MAX;         -- Decimation factor input
        valid_i                     : in  std_logic;                        -- Valid input signal
        x_i                         : in  signed(WIDTH-1 downto 0);         -- Input signal
        y_o                         : out signed(WIDTH-1 downto 0);         -- Output signal
        valid_o                     : out std_logic                         -- Valid output signal
    );
end entity cic_decimator;

architecture behave of cic_decimator is
    --================================================--
	     -- Constant --
	--================================================--
    constant Bmax : integer := Bmax_calc(WIDTH, R_MAX, N, M);


    --================================================--
	     -- Signals --
	--================================================--
    -- Signals for the integrator and comb stages
    signal sign_ext_s: signed(Bmax - 1 downto 0);
    type array_t is array (natural range <>) of signed(Bmax - 1 downto 0);
    signal integrator_out : array_t(0 to N-1) := (others => (others => '0'));
    signal comb_out : array_t(0 to N-1) := (others => (others => '0'));

    -- Signals for decimation part
    signal decimation_counter : integer := 0;
    signal decimation_out_s : signed(Bmax - 1 downto 0);
    signal decimation_en : std_logic;
    -- Signals for gain calculation
    signal gain_s : std_logic_vector(DIVISION_RESOLUTION-1 downto 0) := (others => '0');
    -- Signals for division
    signal out_corrected : std_logic_vector(DIVISION_RESOLUTION-1 downto 0) := (others => '0');
    signal division_valid : std_logic;
    signal division_enable_pipeline : std_logic_vector(DIVISION_LATENCY-1 downto 0) := (others => '0');

    --================================================--
	     -- LPM_DIVIDE -- used for the gain correction
	--================================================--
    component division is
        port
        (
            clock       : in STD_LOGIC;
            denom       : in STD_LOGIC_VECTOR (DIVISION_RESOLUTION-1 downto 0);
            numer       : in STD_LOGIC_VECTOR (DIVISION_RESOLUTION-1 downto 0);
            quotient    : out STD_LOGIC_VECTOR (DIVISION_RESOLUTION-1 downto 0);
            remain	    : out STD_LOGIC_VECTOR (DIVISION_RESOLUTION-1 downto 0)
        );
    end component division;
begin

    --================================================--
	     -- Gain calculation --
	--================================================--
    process(clk)
        variable temp_gain : std_logic_vector(63 downto 0);
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                gain_s <= std_logic_vector(to_unsigned(1, 64)); -- Initialize to 1 to avoid division by zero
            else
                if decimation_factor_i > 0 then
                    temp_gain := std_logic_vector(to_unsigned(1, 64));
                    -- (R*M)**N calculation
                    for i in 1 to N loop
                        temp_gain := std_logic_vector(resize(unsigned(temp_gain) * to_unsigned(decimation_factor_i * M, 64), 64));
                    end loop;
                    gain_s <= temp_gain;
                end if;
            end if;
        end if;
    end process;

    --================================================--
	     -- Sign extension for input data --
	--================================================--
    process(x_i)
	begin
		sign_ext_s(WIDTH - 1 downto 0) <= x_i;
		for k in (Bmax - 1) downto WIDTH loop
			sign_ext_s(k) <= x_i(x_i'high);
		end loop;
	end process;

    --================================================--
	     -- Integrator stage --
	--================================================--
    integrator: entity work.integrator
        generic map (
            WIDTH => Bmax
        )
        port map (
            clk => clk,
            reset_i => reset_i,
            inData => sign_ext_s,
            outData => integrator_out(0),
            enable => valid_i
        );

    gen_integrator : for i in 1 to N-1 generate
        integrator: entity work.integrator
        generic map (
            WIDTH => Bmax
        )
        port map (
            clk => clk,
            reset_i => reset_i,
            inData => integrator_out(i-1),
            outData => integrator_out(i),
            enable => valid_i
        );
    end generate;


    --================================================--
	     -- Decimation stage --
	--================================================--
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                decimation_counter <= 0;
                decimation_out_s <= (others => '0');
                decimation_en <= '0';
            else
                if valid_i = '1' then
                    decimation_en <= '0';
                    if decimation_counter = decimation_factor_i - 1 then
                        decimation_en <= '1';
                        decimation_counter <= 0;
                        decimation_out_s <= integrator_out(N-1);
                    else
                        decimation_counter <= decimation_counter + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    --================================================--
	     -- Comb stage --
	--================================================--
    comb_stage: entity work.comb
        generic map (
            D => M,
            WIDTH => Bmax
        )
        port map (
            clk => clk,
            reset_i => reset_i,
            inData => decimation_out_s,
            outData => comb_out(0),
            enable => decimation_en
        );

    gen_comb : for i in 1 to N-1 generate
        comb: entity work.comb
            generic map (
                D => M,
                WIDTH => Bmax
            )
            port map (
                clk => clk,
                reset_i => reset_i,
                inData => comb_out(i-1),
                outData => comb_out(i),
                enable => decimation_en
            );
    end generate;

    --================================================--
	     -- Valid propagation --
	--================================================--
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                division_valid <= '0';
            else
                division_enable_pipeline <= division_enable_pipeline(DIVISION_LATENCY-2 downto 0) & decimation_en;
                division_valid <= division_enable_pipeline(DIVISION_LATENCY-1);
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                valid_o <= '0';
            else
                valid_o <= division_valid;
            end if;
        end if;
    end process;

    --================================================--
	     -- Remove DC Gain and final bit truncation --
	--================================================--
    gain_divide: division
        port map (
            clock => clk,
            denom => std_logic_vector(gain_s),
            numer => std_logic_vector(resize(comb_out(N-1), 64)),
            quotient => out_corrected,
            remain => open
        );
    y_o <= resize(signed(out_corrected(WIDTH-1 downto 0)) * signed(cic_compensation_factor_i), WIDTH);

end architecture behave;