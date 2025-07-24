-------------------------------------------------------------------------------
-- 
-- File      : 	comb.vhd
--
-- Description  :   This entity is a the comb part of the CIC decimator filter.
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

entity comb is
    generic (
        D : integer := 1;       -- Number of delay stages
        WIDTH : integer := 16   -- Bit width for input/output signals
    );
    port (
        clk    : in  std_logic;                   -- Clock signal
        reset_i  : in  std_logic;                   -- Reset signal
        inData   : in  signed(WIDTH-1 downto 0);  -- Input data
        outData  : out signed(WIDTH-1 downto 0);  -- Output data
        enable   : in  std_logic                    -- Enable signal
    );
end entity comb;

architecture behave of comb is
    --================================================--
	     -- Signals --
	--================================================--
    type delay_array_t is array (0 to D-1) of signed(WIDTH-1 downto 0);
    signal delay_line : delay_array_t := (others => (others => '0'));
    signal output_reg : signed(WIDTH-1 downto 0) := (others => '0');
begin

    --================================================--
         -- Delay line process --
    --================================================--
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                delay_line(0) <= (others => '0');
            elsif enable = '1' then
                delay_line(0) <= inData;
            end if;
        end if;
    end process;

    --================================================--
         -- Delay line generation if delay > 1--
    --================================================--
    gen_delay : for i in 1 to D-1 generate
        process(clk)
        begin
            if rising_edge(clk) then
                if reset_i = '1' then
                    delay_line(i) <= (others => '0');
                elsif enable = '1' then
                    delay_line(i) <= delay_line(i-1);
                end if;
            end if;
        end process;
    end generate;


    --================================================--
         -- Output process --
    --================================================--
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                output_reg <= (others => '0');
            elsif enable = '1' then
                output_reg <= inData - delay_line(D-1);
            end if;
        end if;
    end process;

    outData <= output_reg;
end architecture behave;