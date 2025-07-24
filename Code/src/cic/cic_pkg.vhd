-------------------------------------------------------------------------------
-- 
-- File      : 	cic_pkg.vhd
--
-- Description  :   This package contains the definitions and functions used for the CIC decimator filter.
--                  It includes Gain calculation and Bmax calculation based on Hogenauer's formula
--
-- Author       : 	Yasin Khalil
-- Date         : 	25.03.2019
-- Version      : 	1.0
--  
--| Modifications |--------------------------------------------------------------------------
-- Version   Auteur 		    Date               Description
-- 1.0 		 Yasin Khalil		25.03.2019
-- 1.1 		 Patrick Maillard	07.07.2025         Modified Gain_calc for run time and corrected Bmax_calc
----------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package cic_pkg is
	--function Gain_calc(R : natural; N : natural; M : natural) return natural;
	function Gain_calc(R : integer; N : integer; M : integer) return integer;
	function Bmax_calc(Bin : natural; R : natural; N : natural; M : natural) return natural;
	function calc_R_M(R : natural; M : natural) return real;
end package;

package body cic_pkg is

	--================================================--
	     -- Gain calculation for compile time only --
	--================================================--
	--function Gain_calc(R : natural; N : natural; M : natural) return natural is
	--	constant a : real := real(R * M);
	--	constant x : real := real(a ** real(N));
	--begin
	--	return natural(log2(x));
	--end function;

    --================================================--
	     -- Bmax calculation --
	--================================================--
    function Bmax_calc(Bin : natural; R : natural; N : natural; M : natural) return natural is
		constant a : real := calc_R_M(R, M);
		constant b : real := log2(a);
		constant c : real := ceil(real(N) * b);
	begin
		return natural(c) + Bin-1;
	end function;

    function calc_R_M(R : natural; M : natural) return real is
	begin
		return real(R * M);
	end function;

	--================================================--
	     -- Gain calculation with log2 --
	--================================================--
	function Gain_calc(R : integer; N : integer; M : integer) return integer is
    	variable RM : integer := 0;
    	variable powerN : unsigned(63 downto 0) := (others => '0');
    	variable temp : unsigned(63 downto 0) := (others => '0');
    	variable RM_unsigned : unsigned(31 downto 0) := (others => '0');
		variable mult_result : unsigned(127 downto 0) := (others => '0');
    	variable width : integer := 0;
	begin
		RM := R * M;

		RM_unsigned := to_unsigned(RM, 32);
    	temp := to_unsigned(1, 64);
    	for i in 1 to N loop
    	    mult_result := temp * resize(RM_unsigned, 64);
			temp := mult_result(63 downto 0);
    	end loop;
    	powerN := temp;

		while powerN > to_unsigned(1, powerN'length) loop
			powerN := shift_right(powerN, 1);
			width := width + 1;
		end loop;

		return width;
	end function;

end package body;