-------------------------------------------------------------------------------
-- 
-- File      : 	sinus_generator.vhd
--
-- Description  : It is a simple sinus generator using a Numerically Controlled Oscillator (NCO).
-- 					
--
-- Author       : 	Patrick Maillard
-- Date         : 	17.06.2025
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- v1 		 Patrick Maillard	17.06.2025        Initial version   
----------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sinus_generator is
    generic (
        NCO_RESOLUTION : integer := 16  -- Resolution of the NCO
    );
    port (
        clk_i               : in  std_logic;                                    -- System clock
        reset_i             : in  std_logic;                                    -- Reset signal
        phi_inc_i           : in  std_logic_vector(NCO_RESOLUTION-1 downto 0);  -- Phase input
        sinus_o             : out std_logic_vector(NCO_RESOLUTION-1 downto 0);  -- Output sinusoidal signal
        valid_o             : out std_logic                                     -- Output valid signal
    );
end entity sinus_generator;

architecture behave of sinus_generator is


    --================================================--
	     -- NCO (Numerically Controlled Oscillator) --
	--================================================--
    component nco is
		port (
			clk       : in  std_logic;                       -- clk
			reset_n   : in  std_logic;                       -- reset_n
			clken     : in  std_logic;                       -- clken
			phi_inc_i : in  std_logic_vector(NCO_RESOLUTION-1 downto 0);   -- phi_inc_i
			fsin_o    : out std_logic_vector(NCO_RESOLUTION-1 downto 0);   -- fsin_o
			fcos_o    : out std_logic_vector(NCO_RESOLUTION-1 downto 0);   -- fcos_o
			out_valid : out std_logic                        -- out_valid
		);
	end component nco;
    --================================================--
	     -- Signal --
	--================================================--
    signal nco_sine_s : std_logic_vector(NCO_RESOLUTION-1 downto 0);  -- Sine output from NCO
    signal nco_valid_s : std_logic;                     -- Valid signal from NCO

begin

    --================================================--
         -- NCO Instantiation --
    --================================================--
    nco_inst: nco
        port map (
            clk       => clk_i,
            reset_n   => not reset_i,
            clken     => '1',
            phi_inc_i => phi_inc_i,
            fsin_o    => nco_sine_s,
            fcos_o    => open,
            out_valid => nco_valid_s
    );

    --================================================--
         -- Output --
    --================================================--
    sinus_o <= nco_sine_s;
    valid_o <= nco_valid_s;

end architecture behave;
