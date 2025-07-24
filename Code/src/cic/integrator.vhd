-------------------------------------------------------------------------------
-- 
-- File      : 	integrator.vhd
--
-- Description  :   This entity is a the integrator part of the CIC decimator filter.
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

entity integrator is
    generic (
        WIDTH : integer := 16   -- Bit width for input/output signals
    );
    port (
        clk    : in  std_logic;                  -- Clock signal
        reset_i: in  std_logic;                  -- Reset signal
        inData : in  signed(WIDTH-1 downto 0);   -- Input data
        outData: out signed(WIDTH-1 downto 0);   -- Output data
        enable : in  std_logic                   -- Enable signal
    );
end entity integrator;

architecture behave of integrator is
    --================================================--
         -- Signals --
    --================================================--
    signal delay_reg : signed(WIDTH-1 downto 0) := (others => '0');
    signal tmp : signed(WIDTH-1 downto 0) := (others => '0');
begin
    --================================================--
         -- Integrator process --
    --================================================--
    -- Not in a process because it is the logic of the integrator part
    tmp <= delay_reg + inData;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset_i = '1' then
                delay_reg <= (others => '0');
            else
                if enable = '1' then
                    delay_reg <= tmp;
                end if;
            end if;
        end if;
    end process;

    --================================================--
         -- Output assignment --
    --================================================--
    outData <= tmp;

end architecture behave;