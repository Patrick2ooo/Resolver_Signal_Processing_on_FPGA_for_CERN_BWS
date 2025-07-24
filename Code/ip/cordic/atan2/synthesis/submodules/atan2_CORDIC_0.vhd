-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 23.1std (Release Build #993)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2024 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from atan2_CORDIC_0
-- VHDL created on Sun Jul 13 15:44:41 2025


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity atan2_CORDIC_0 is
    port (
        x : in std_logic_vector(15 downto 0);  -- sfix16
        y : in std_logic_vector(15 downto 0);  -- sfix16
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(15 downto 0);  -- sfix16_en13
        clk : in std_logic;
        areset : in std_logic
    );
end atan2_CORDIC_0;

architecture normal of atan2_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal signX_uid7_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal absXE_uid10_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal absXE_uid10_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal absXE_uid10_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignY_uid11_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal absYE_uid12_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal absYE_uid12_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal absYE_uid12_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal absX_uid13_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal absX_uid13_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal absY_uid14_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal absY_uid14_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yNotZero_uid15_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotZero_uid15_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_0_uid22_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_1_uid23_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_1_uid23_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_1_uid23_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_1_uid23_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1_uid24_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1_uid24_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1_uid24_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1_uid24_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal lowRangeB_uid25_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal lowRangeB_uid25_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal highBBits_uid26_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1_uid28_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal aip1E_uid31_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal aip1E_uid31_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid32_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_1_uid36_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2NA_uid39_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_2NA_uid42_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_2CostZeroPaddingA_uid45_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal aip1E_2NA_uid46_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_2_uid48_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_2_uid48_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_2_uid49_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_2_uid49_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_uid50_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal aip1E_uid50_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid51_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_2_uid55_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3NA_uid58_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_3NA_uid61_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_a : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_o : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal aip1E_3NA_uid65_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_a : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_o : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1_3_uid67_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_3_uid67_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_3_uid68_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_3_uid68_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid69_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_uid69_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid70_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_3_uid74_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_atan2Test_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_4NA_uid77_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_4NA_uid80_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_4NA_uid84_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_a : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_o : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_4_uid86_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_4_uid86_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_4_uid87_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_4_uid87_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal aip1E_uid88_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_uid88_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xMSB_uid89_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_4_uid93_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_5NA_uid96_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_a : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_o : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_5NA_uid99_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal aip1E_5NA_uid103_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_a : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_o : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1_5_uid105_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_5_uid105_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_5_uid106_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_5_uid106_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal aip1E_uid107_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_uid107_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal xMSB_uid108_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_5_uid112_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal invSignOfSelectionSignal_uid113_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6CostZeroPaddingA_uid114_atan2Test_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_6NA_uid115_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_a : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_o : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_6NA_uid118_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal aip1E_6NA_uid122_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_a : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_b : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_o : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_q : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_6_uid124_atan2Test_in : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1_6_uid124_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_6_uid125_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_6_uid125_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal aip1E_uid126_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_uid126_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xMSB_uid127_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid131_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid132_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal cstArcTan2Mi_6_uid133_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal invSignOfSelectionSignal_uid134_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7NA_uid136_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_7sumAHighB_uid137_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid137_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_7NA_uid139_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_7sumAHighB_uid140_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid140_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal aip1E_7NA_uid143_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_7sumAHighB_uid144_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_7sumAHighB_uid144_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_7sumAHighB_uid144_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_7sumAHighB_uid144_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_7sumAHighB_uid144_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1_7_uid145_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_7_uid145_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_7_uid146_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_7_uid146_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal aip1E_uid147_atan2Test_in : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_uid147_atan2Test_b : STD_LOGIC_VECTOR (38 downto 0);
    signal xMSB_uid148_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid152_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid153_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal cstArcTan2Mi_7_uid154_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invSignOfSelectionSignal_uid155_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid156_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid156_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8_uid157_atan2Test_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_atan2Test_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8_uid157_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal aip1E_8NA_uid160_atan2Test_q : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_8sumAHighB_uid161_atan2Test_a : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_8sumAHighB_uid161_atan2Test_b : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_8sumAHighB_uid161_atan2Test_o : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_8sumAHighB_uid161_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_8sumAHighB_uid161_atan2Test_q : STD_LOGIC_VECTOR (41 downto 0);
    signal xip1_8_uid162_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_8_uid162_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_8_uid163_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_8_uid163_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal aip1E_uid164_atan2Test_in : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_uid164_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xMSB_uid165_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid169_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid170_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal cstArcTan2Mi_8_uid171_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal invSignOfSelectionSignal_uid172_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid173_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid173_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_9_uid174_atan2Test_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_atan2Test_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid174_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal aip1E_9NA_uid177_atan2Test_q : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_9sumAHighB_uid178_atan2Test_a : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_9sumAHighB_uid178_atan2Test_b : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_9sumAHighB_uid178_atan2Test_o : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_9sumAHighB_uid178_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_9sumAHighB_uid178_atan2Test_q : STD_LOGIC_VECTOR (43 downto 0);
    signal xip1_9_uid179_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_9_uid179_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_9_uid180_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_9_uid180_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal aip1E_uid181_atan2Test_in : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_uid181_atan2Test_b : STD_LOGIC_VECTOR (42 downto 0);
    signal xMSB_uid182_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid186_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid187_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal cstArcTan2Mi_9_uid188_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal invSignOfSelectionSignal_uid189_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid190_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid190_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_10_uid191_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid191_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal aip1E_10NA_uid194_atan2Test_q : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_10sumAHighB_uid195_atan2Test_a : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_10sumAHighB_uid195_atan2Test_b : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_10sumAHighB_uid195_atan2Test_o : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_10sumAHighB_uid195_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_10sumAHighB_uid195_atan2Test_q : STD_LOGIC_VECTOR (45 downto 0);
    signal xip1_10_uid196_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_10_uid196_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_10_uid197_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_10_uid197_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal aip1E_uid198_atan2Test_in : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_uid198_atan2Test_b : STD_LOGIC_VECTOR (44 downto 0);
    signal xMSB_uid199_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid203_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid204_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal cstArcTan2Mi_10_uid205_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal invSignOfSelectionSignal_uid206_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid207_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid207_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_11_uid208_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid208_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal aip1E_11NA_uid211_atan2Test_q : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_11sumAHighB_uid212_atan2Test_a : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_11sumAHighB_uid212_atan2Test_b : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_11sumAHighB_uid212_atan2Test_o : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_11sumAHighB_uid212_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_11sumAHighB_uid212_atan2Test_q : STD_LOGIC_VECTOR (47 downto 0);
    signal xip1_11_uid213_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_11_uid213_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_11_uid214_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_11_uid214_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal aip1E_uid215_atan2Test_in : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_uid215_atan2Test_b : STD_LOGIC_VECTOR (46 downto 0);
    signal xMSB_uid216_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid220_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiYip_uid221_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal cstArcTan2Mi_11_uid222_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid223_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid224_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid224_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_12_uid225_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid225_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal aip1E_12NA_uid228_atan2Test_q : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_12sumAHighB_uid229_atan2Test_a : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_12sumAHighB_uid229_atan2Test_b : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_12sumAHighB_uid229_atan2Test_o : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_12sumAHighB_uid229_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_12sumAHighB_uid229_atan2Test_q : STD_LOGIC_VECTOR (49 downto 0);
    signal xip1_12_uid230_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_12_uid230_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_12_uid231_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_12_uid231_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_uid232_atan2Test_in : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_uid232_atan2Test_b : STD_LOGIC_VECTOR (48 downto 0);
    signal xMSB_uid233_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid237_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal twoToMiSiYip_uid238_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cstArcTan2Mi_12_uid239_atan2Test_q : STD_LOGIC_VECTOR (37 downto 0);
    signal invSignOfSelectionSignal_uid240_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid241_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid241_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_13_uid242_atan2Test_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_atan2Test_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid242_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal aip1E_13NA_uid245_atan2Test_q : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_13sumAHighB_uid246_atan2Test_a : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_13sumAHighB_uid246_atan2Test_b : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_13sumAHighB_uid246_atan2Test_o : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_13sumAHighB_uid246_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_13sumAHighB_uid246_atan2Test_q : STD_LOGIC_VECTOR (51 downto 0);
    signal xip1_13_uid247_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_13_uid247_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_13_uid248_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_13_uid248_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal aip1E_uid249_atan2Test_in : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_uid249_atan2Test_b : STD_LOGIC_VECTOR (50 downto 0);
    signal xMSB_uid250_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid254_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiYip_uid255_atan2Test_b : STD_LOGIC_VECTOR (8 downto 0);
    signal cstArcTan2Mi_13_uid256_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid257_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid258_atan2Test_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_atan2Test_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_atan2Test_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid258_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_14_uid259_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid259_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_14NA_uid262_atan2Test_q : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_14sumAHighB_uid263_atan2Test_a : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_14sumAHighB_uid263_atan2Test_b : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_14sumAHighB_uid263_atan2Test_o : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_14sumAHighB_uid263_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_14sumAHighB_uid263_atan2Test_q : STD_LOGIC_VECTOR (53 downto 0);
    signal xip1_14_uid264_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_14_uid264_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_14_uid265_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_14_uid265_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal aip1E_uid266_atan2Test_in : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_uid266_atan2Test_b : STD_LOGIC_VECTOR (52 downto 0);
    signal xMSB_uid267_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid271_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal cstArcTan2Mi_14_uid273_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal yip1E_15_uid276_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid276_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal invSignOfSelectionSignal_uid277_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid277_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_15NA_uid279_atan2Test_q : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_15sumAHighB_uid280_atan2Test_a : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_15sumAHighB_uid280_atan2Test_b : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_15sumAHighB_uid280_atan2Test_o : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_15sumAHighB_uid280_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_15sumAHighB_uid280_atan2Test_q : STD_LOGIC_VECTOR (55 downto 0);
    signal yip1_15_uid282_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_15_uid282_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_uid283_atan2Test_in : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_uid283_atan2Test_b : STD_LOGIC_VECTOR (54 downto 0);
    signal xMSB_uid284_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstArcTan2Mi_15_uid290_atan2Test_q : STD_LOGIC_VECTOR (40 downto 0);
    signal invSignOfSelectionSignal_uid294_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_16NA_uid296_atan2Test_q : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_16sumAHighB_uid297_atan2Test_a : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_16sumAHighB_uid297_atan2Test_b : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_16sumAHighB_uid297_atan2Test_o : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_16sumAHighB_uid297_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_16sumAHighB_uid297_atan2Test_q : STD_LOGIC_VECTOR (57 downto 0);
    signal aip1E_uid300_atan2Test_in : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_uid300_atan2Test_b : STD_LOGIC_VECTOR (56 downto 0);
    signal alphaPreRnd_uid301_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal alphaPostRndhigh_uid307_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal alphaPostRndhigh_uid307_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal alphaPostRndhigh_uid307_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal alphaPostRndhigh_uid307_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal alphaPostRnd_uid308_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal atanRes_uid309_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal atanRes_uid309_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal cstZeroOutFormat_uid310_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constPiP2uE_uid311_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal constPio2P2u_mergedSignalTM_uid314_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal concXZeroYZero_uid316_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid317_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid317_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal concSigns_uid318_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal constPiP2u_uid319_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constPi_uid320_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constantZeroOutFormat_uid321_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constantZeroOutFormatP2u_uid322_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal firstOperand_uid324_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid324_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal secondOperand_uid325_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid325_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal outResExtended_uid326_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid326_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid326_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid326_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal atanResPostRR_uid327_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal lowRangeA_uid305_atan2Test_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid305_atan2Test_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_xMSB_uid284_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_invSignOfSelectionSignal_uid257_atan2Test_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_invSignOfSelectionSignal_uid240_atan2Test_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_aip1E_uid232_atan2Test_b_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal redist4_yip1_8_uid163_atan2Test_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist5_xip1_8_uid162_atan2Test_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist6_invSignOfSelectionSignal_uid155_atan2Test_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_invSignOfSelectionSignal_uid134_atan2Test_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_invSignOfSelectionSignal_uid113_atan2Test_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_aip1E_uid107_atan2Test_b_1_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist10_xNotZero_uid17_atan2Test_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_yNotZero_uid15_atan2Test_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_absY_uid14_atan2Test_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist13_absX_uid13_atan2Test_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist14_signY_uid8_atan2Test_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_signX_uid7_atan2Test_b_3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- constPi_uid320_atan2Test(CONSTANT,319)
    constPi_uid320_atan2Test_q <= "11001001000100000";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- constPiP2uE_uid311_atan2Test(CONSTANT,310)
    constPiP2uE_uid311_atan2Test_q <= "1100100100010010";

    -- constPio2P2u_mergedSignalTM_uid314_atan2Test(BITJOIN,313)@3
    constPio2P2u_mergedSignalTM_uid314_atan2Test_q <= GND_q & constPiP2uE_uid311_atan2Test_q;

    -- cstZeroOutFormat_uid310_atan2Test(CONSTANT,309)
    cstZeroOutFormat_uid310_atan2Test_q <= "00000000000000010";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- alphaPostRndhigh_uid307_atan2Test(ADD,306)@3
    alphaPostRndhigh_uid307_atan2Test_a <= STD_LOGIC_VECTOR("0" & lowRangeA_uid305_atan2Test_merged_bit_select_c);
    alphaPostRndhigh_uid307_atan2Test_b <= STD_LOGIC_VECTOR("0000000000000000" & VCC_q);
    alphaPostRndhigh_uid307_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(alphaPostRndhigh_uid307_atan2Test_a) + UNSIGNED(alphaPostRndhigh_uid307_atan2Test_b));
    alphaPostRndhigh_uid307_atan2Test_q <= alphaPostRndhigh_uid307_atan2Test_o(16 downto 0);

    -- xMSB_uid267_atan2Test(BITSELECT,266)@2
    xMSB_uid267_atan2Test_b <= STD_LOGIC_VECTOR(yip1_14_uid265_atan2Test_b(20 downto 20));

    -- xMSB_uid233_atan2Test(BITSELECT,232)@2
    xMSB_uid233_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid231_atan2Test_b(22 downto 22));

    -- xMSB_uid199_atan2Test(BITSELECT,198)@2
    xMSB_uid199_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid197_atan2Test_b(24 downto 24));

    -- xMSB_uid165_atan2Test(BITSELECT,164)@2
    xMSB_uid165_atan2Test_b <= STD_LOGIC_VECTOR(redist4_yip1_8_uid163_atan2Test_b_1_q(26 downto 26));

    -- signX_uid7_atan2Test(BITSELECT,6)@0
    signX_uid7_atan2Test_b <= STD_LOGIC_VECTOR(x(15 downto 15));

    -- invSignX_uid9_atan2Test(LOGICAL,8)@0
    invSignX_uid9_atan2Test_q <= not (signX_uid7_atan2Test_b);

    -- constantZero_uid6_atan2Test(CONSTANT,5)
    constantZero_uid6_atan2Test_q <= "0000000000000000";

    -- absXE_uid10_atan2Test(ADDSUB,9)@0
    absXE_uid10_atan2Test_s <= invSignX_uid9_atan2Test_q;
    absXE_uid10_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => constantZero_uid6_atan2Test_q(15)) & constantZero_uid6_atan2Test_q));
    absXE_uid10_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => x(15)) & x));
    absXE_uid10_atan2Test_combproc: PROCESS (absXE_uid10_atan2Test_a, absXE_uid10_atan2Test_b, absXE_uid10_atan2Test_s)
    BEGIN
        IF (absXE_uid10_atan2Test_s = "1") THEN
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) + SIGNED(absXE_uid10_atan2Test_b));
        ELSE
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) - SIGNED(absXE_uid10_atan2Test_b));
        END IF;
    END PROCESS;
    absXE_uid10_atan2Test_q <= absXE_uid10_atan2Test_o(16 downto 0);

    -- absX_uid13_atan2Test(BITSELECT,12)@0
    absX_uid13_atan2Test_in <= absXE_uid10_atan2Test_q(15 downto 0);
    absX_uid13_atan2Test_b <= absX_uid13_atan2Test_in(15 downto 0);

    -- redist13_absX_uid13_atan2Test_b_1(DELAY,342)
    redist13_absX_uid13_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => absX_uid13_atan2Test_b, xout => redist13_absX_uid13_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- signY_uid8_atan2Test(BITSELECT,7)@0
    signY_uid8_atan2Test_b <= STD_LOGIC_VECTOR(y(15 downto 15));

    -- invSignY_uid11_atan2Test(LOGICAL,10)@0
    invSignY_uid11_atan2Test_q <= not (signY_uid8_atan2Test_b);

    -- absYE_uid12_atan2Test(ADDSUB,11)@0
    absYE_uid12_atan2Test_s <= invSignY_uid11_atan2Test_q;
    absYE_uid12_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => constantZero_uid6_atan2Test_q(15)) & constantZero_uid6_atan2Test_q));
    absYE_uid12_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => y(15)) & y));
    absYE_uid12_atan2Test_combproc: PROCESS (absYE_uid12_atan2Test_a, absYE_uid12_atan2Test_b, absYE_uid12_atan2Test_s)
    BEGIN
        IF (absYE_uid12_atan2Test_s = "1") THEN
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) + SIGNED(absYE_uid12_atan2Test_b));
        ELSE
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) - SIGNED(absYE_uid12_atan2Test_b));
        END IF;
    END PROCESS;
    absYE_uid12_atan2Test_q <= absYE_uid12_atan2Test_o(16 downto 0);

    -- absY_uid14_atan2Test(BITSELECT,13)@0
    absY_uid14_atan2Test_in <= absYE_uid12_atan2Test_q(15 downto 0);
    absY_uid14_atan2Test_b <= absY_uid14_atan2Test_in(15 downto 0);

    -- redist12_absY_uid14_atan2Test_b_1(DELAY,341)
    redist12_absY_uid14_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => absY_uid14_atan2Test_b, xout => redist12_absY_uid14_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- yip1E_1_uid24_atan2Test(SUB,23)@1
    yip1E_1_uid24_atan2Test_a <= STD_LOGIC_VECTOR("0" & redist12_absY_uid14_atan2Test_b_1_q);
    yip1E_1_uid24_atan2Test_b <= STD_LOGIC_VECTOR("0" & redist13_absX_uid13_atan2Test_b_1_q);
    yip1E_1_uid24_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid24_atan2Test_a) - UNSIGNED(yip1E_1_uid24_atan2Test_b));
    yip1E_1_uid24_atan2Test_q <= yip1E_1_uid24_atan2Test_o(16 downto 0);

    -- xMSB_uid32_atan2Test(BITSELECT,31)@1
    xMSB_uid32_atan2Test_b <= STD_LOGIC_VECTOR(yip1E_1_uid24_atan2Test_q(16 downto 16));

    -- xip1E_1_uid23_atan2Test(ADD,22)@1
    xip1E_1_uid23_atan2Test_a <= STD_LOGIC_VECTOR("0" & redist13_absX_uid13_atan2Test_b_1_q);
    xip1E_1_uid23_atan2Test_b <= STD_LOGIC_VECTOR("0" & redist12_absY_uid14_atan2Test_b_1_q);
    xip1E_1_uid23_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid23_atan2Test_a) + UNSIGNED(xip1E_1_uid23_atan2Test_b));
    xip1E_1_uid23_atan2Test_q <= xip1E_1_uid23_atan2Test_o(16 downto 0);

    -- yip1E_2NA_uid42_atan2Test(BITJOIN,41)@1
    yip1E_2NA_uid42_atan2Test_q <= yip1E_1_uid24_atan2Test_q & GND_q;

    -- yip1E_2sumAHighB_uid43_atan2Test(ADDSUB,42)@1
    yip1E_2sumAHighB_uid43_atan2Test_s <= xMSB_uid32_atan2Test_b;
    yip1E_2sumAHighB_uid43_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1E_2NA_uid42_atan2Test_q(17)) & yip1E_2NA_uid42_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_1_uid23_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_combproc: PROCESS (yip1E_2sumAHighB_uid43_atan2Test_a, yip1E_2sumAHighB_uid43_atan2Test_b, yip1E_2sumAHighB_uid43_atan2Test_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid43_atan2Test_s = "1") THEN
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) + SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        ELSE
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) - SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid43_atan2Test_q <= yip1E_2sumAHighB_uid43_atan2Test_o(18 downto 0);

    -- yip1_2_uid49_atan2Test(BITSELECT,48)@1
    yip1_2_uid49_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid43_atan2Test_q(17 downto 0));
    yip1_2_uid49_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_in(17 downto 0));

    -- xMSB_uid51_atan2Test(BITSELECT,50)@1
    xMSB_uid51_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_b(17 downto 17));

    -- invSignOfSelectionSignal_uid37_atan2Test(LOGICAL,36)@1
    invSignOfSelectionSignal_uid37_atan2Test_q <= not (xMSB_uid32_atan2Test_b);

    -- xip1E_2NA_uid39_atan2Test(BITJOIN,38)@1
    xip1E_2NA_uid39_atan2Test_q <= xip1E_1_uid23_atan2Test_q & GND_q;

    -- xip1E_2sumAHighB_uid40_atan2Test(ADDSUB,39)@1
    xip1E_2sumAHighB_uid40_atan2Test_s <= invSignOfSelectionSignal_uid37_atan2Test_q;
    xip1E_2sumAHighB_uid40_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_2NA_uid39_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 17 => yip1E_1_uid24_atan2Test_q(16)) & yip1E_1_uid24_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_combproc: PROCESS (xip1E_2sumAHighB_uid40_atan2Test_a, xip1E_2sumAHighB_uid40_atan2Test_b, xip1E_2sumAHighB_uid40_atan2Test_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid40_atan2Test_s = "1") THEN
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) + SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        ELSE
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) - SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid40_atan2Test_q <= xip1E_2sumAHighB_uid40_atan2Test_o(19 downto 0);

    -- xip1_2_uid48_atan2Test(BITSELECT,47)@1
    xip1_2_uid48_atan2Test_in <= xip1E_2sumAHighB_uid40_atan2Test_q(17 downto 0);
    xip1_2_uid48_atan2Test_b <= xip1_2_uid48_atan2Test_in(17 downto 0);

    -- aip1E_2CostZeroPaddingA_uid45_atan2Test(CONSTANT,44)
    aip1E_2CostZeroPaddingA_uid45_atan2Test_q <= "00";

    -- yip1E_3NA_uid61_atan2Test(BITJOIN,60)@1
    yip1E_3NA_uid61_atan2Test_q <= yip1_2_uid49_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- yip1E_3sumAHighB_uid62_atan2Test(ADDSUB,61)@1
    yip1E_3sumAHighB_uid62_atan2Test_s <= xMSB_uid51_atan2Test_b;
    yip1E_3sumAHighB_uid62_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => yip1E_3NA_uid61_atan2Test_q(19)) & yip1E_3NA_uid61_atan2Test_q));
    yip1E_3sumAHighB_uid62_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_2_uid48_atan2Test_b));
    yip1E_3sumAHighB_uid62_atan2Test_combproc: PROCESS (yip1E_3sumAHighB_uid62_atan2Test_a, yip1E_3sumAHighB_uid62_atan2Test_b, yip1E_3sumAHighB_uid62_atan2Test_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid62_atan2Test_s = "1") THEN
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) + SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        ELSE
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) - SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid62_atan2Test_q <= yip1E_3sumAHighB_uid62_atan2Test_o(20 downto 0);

    -- yip1_3_uid68_atan2Test(BITSELECT,67)@1
    yip1_3_uid68_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid62_atan2Test_q(18 downto 0));
    yip1_3_uid68_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid68_atan2Test_in(18 downto 0));

    -- xMSB_uid70_atan2Test(BITSELECT,69)@1
    xMSB_uid70_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid68_atan2Test_b(18 downto 18));

    -- invSignOfSelectionSignal_uid56_atan2Test(LOGICAL,55)@1
    invSignOfSelectionSignal_uid56_atan2Test_q <= not (xMSB_uid51_atan2Test_b);

    -- xip1E_3NA_uid58_atan2Test(BITJOIN,57)@1
    xip1E_3NA_uid58_atan2Test_q <= xip1_2_uid48_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- xip1E_3sumAHighB_uid59_atan2Test(ADDSUB,58)@1
    xip1E_3sumAHighB_uid59_atan2Test_s <= invSignOfSelectionSignal_uid56_atan2Test_q;
    xip1E_3sumAHighB_uid59_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_3NA_uid58_atan2Test_q));
    xip1E_3sumAHighB_uid59_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => yip1_2_uid49_atan2Test_b(17)) & yip1_2_uid49_atan2Test_b));
    xip1E_3sumAHighB_uid59_atan2Test_combproc: PROCESS (xip1E_3sumAHighB_uid59_atan2Test_a, xip1E_3sumAHighB_uid59_atan2Test_b, xip1E_3sumAHighB_uid59_atan2Test_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid59_atan2Test_s = "1") THEN
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) + SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        ELSE
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) - SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid59_atan2Test_q <= xip1E_3sumAHighB_uid59_atan2Test_o(21 downto 0);

    -- xip1_3_uid67_atan2Test(BITSELECT,66)@1
    xip1_3_uid67_atan2Test_in <= xip1E_3sumAHighB_uid59_atan2Test_q(19 downto 0);
    xip1_3_uid67_atan2Test_b <= xip1_3_uid67_atan2Test_in(19 downto 0);

    -- xip1E_4CostZeroPaddingA_uid76_atan2Test(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_atan2Test_q <= "000";

    -- yip1E_4NA_uid80_atan2Test(BITJOIN,79)@1
    yip1E_4NA_uid80_atan2Test_q <= yip1_3_uid68_atan2Test_b & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- yip1E_4sumAHighB_uid81_atan2Test(ADDSUB,80)@1
    yip1E_4sumAHighB_uid81_atan2Test_s <= xMSB_uid70_atan2Test_b;
    yip1E_4sumAHighB_uid81_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1E_4NA_uid80_atan2Test_q(21)) & yip1E_4NA_uid80_atan2Test_q));
    yip1E_4sumAHighB_uid81_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_3_uid67_atan2Test_b));
    yip1E_4sumAHighB_uid81_atan2Test_combproc: PROCESS (yip1E_4sumAHighB_uid81_atan2Test_a, yip1E_4sumAHighB_uid81_atan2Test_b, yip1E_4sumAHighB_uid81_atan2Test_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid81_atan2Test_s = "1") THEN
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) + SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        ELSE
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) - SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid81_atan2Test_q <= yip1E_4sumAHighB_uid81_atan2Test_o(22 downto 0);

    -- yip1_4_uid87_atan2Test(BITSELECT,86)@1
    yip1_4_uid87_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid81_atan2Test_q(20 downto 0));
    yip1_4_uid87_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_in(20 downto 0));

    -- xMSB_uid89_atan2Test(BITSELECT,88)@1
    xMSB_uid89_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_b(20 downto 20));

    -- invSignOfSelectionSignal_uid75_atan2Test(LOGICAL,74)@1
    invSignOfSelectionSignal_uid75_atan2Test_q <= not (xMSB_uid70_atan2Test_b);

    -- xip1E_4NA_uid77_atan2Test(BITJOIN,76)@1
    xip1E_4NA_uid77_atan2Test_q <= xip1_3_uid67_atan2Test_b & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- xip1E_4sumAHighB_uid78_atan2Test(ADDSUB,77)@1
    xip1E_4sumAHighB_uid78_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    xip1E_4sumAHighB_uid78_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_4NA_uid77_atan2Test_q));
    xip1E_4sumAHighB_uid78_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 19 => yip1_3_uid68_atan2Test_b(18)) & yip1_3_uid68_atan2Test_b));
    xip1E_4sumAHighB_uid78_atan2Test_combproc: PROCESS (xip1E_4sumAHighB_uid78_atan2Test_a, xip1E_4sumAHighB_uid78_atan2Test_b, xip1E_4sumAHighB_uid78_atan2Test_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid78_atan2Test_s = "1") THEN
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) + SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        ELSE
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) - SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid78_atan2Test_q <= xip1E_4sumAHighB_uid78_atan2Test_o(24 downto 0);

    -- xip1_4_uid86_atan2Test(BITSELECT,85)@1
    xip1_4_uid86_atan2Test_in <= xip1E_4sumAHighB_uid78_atan2Test_q(22 downto 0);
    xip1_4_uid86_atan2Test_b <= xip1_4_uid86_atan2Test_in(22 downto 0);

    -- xip1E_5CostZeroPaddingA_uid95_atan2Test(CONSTANT,94)
    xip1E_5CostZeroPaddingA_uid95_atan2Test_q <= "0000";

    -- yip1E_5NA_uid99_atan2Test(BITJOIN,98)@1
    yip1E_5NA_uid99_atan2Test_q <= yip1_4_uid87_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- yip1E_5sumAHighB_uid100_atan2Test(ADDSUB,99)@1
    yip1E_5sumAHighB_uid100_atan2Test_s <= xMSB_uid89_atan2Test_b;
    yip1E_5sumAHighB_uid100_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1E_5NA_uid99_atan2Test_q(24)) & yip1E_5NA_uid99_atan2Test_q));
    yip1E_5sumAHighB_uid100_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_4_uid86_atan2Test_b));
    yip1E_5sumAHighB_uid100_atan2Test_combproc: PROCESS (yip1E_5sumAHighB_uid100_atan2Test_a, yip1E_5sumAHighB_uid100_atan2Test_b, yip1E_5sumAHighB_uid100_atan2Test_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid100_atan2Test_s = "1") THEN
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) + SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        ELSE
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) - SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid100_atan2Test_q <= yip1E_5sumAHighB_uid100_atan2Test_o(25 downto 0);

    -- yip1_5_uid106_atan2Test(BITSELECT,105)@1
    yip1_5_uid106_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid100_atan2Test_q(23 downto 0));
    yip1_5_uid106_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_in(23 downto 0));

    -- xMSB_uid108_atan2Test(BITSELECT,107)@1
    xMSB_uid108_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_b(23 downto 23));

    -- invSignOfSelectionSignal_uid94_atan2Test(LOGICAL,93)@1
    invSignOfSelectionSignal_uid94_atan2Test_q <= not (xMSB_uid89_atan2Test_b);

    -- xip1E_5NA_uid96_atan2Test(BITJOIN,95)@1
    xip1E_5NA_uid96_atan2Test_q <= xip1_4_uid86_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- xip1E_5sumAHighB_uid97_atan2Test(ADDSUB,96)@1
    xip1E_5sumAHighB_uid97_atan2Test_s <= invSignOfSelectionSignal_uid94_atan2Test_q;
    xip1E_5sumAHighB_uid97_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_5NA_uid96_atan2Test_q));
    xip1E_5sumAHighB_uid97_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 21 => yip1_4_uid87_atan2Test_b(20)) & yip1_4_uid87_atan2Test_b));
    xip1E_5sumAHighB_uid97_atan2Test_combproc: PROCESS (xip1E_5sumAHighB_uid97_atan2Test_a, xip1E_5sumAHighB_uid97_atan2Test_b, xip1E_5sumAHighB_uid97_atan2Test_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid97_atan2Test_s = "1") THEN
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) + SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        ELSE
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) - SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid97_atan2Test_q <= xip1E_5sumAHighB_uid97_atan2Test_o(28 downto 0);

    -- xip1_5_uid105_atan2Test(BITSELECT,104)@1
    xip1_5_uid105_atan2Test_in <= xip1E_5sumAHighB_uid97_atan2Test_q(26 downto 0);
    xip1_5_uid105_atan2Test_b <= xip1_5_uid105_atan2Test_in(26 downto 0);

    -- xip1E_6CostZeroPaddingA_uid114_atan2Test(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_atan2Test_q <= "00000";

    -- yip1E_6NA_uid118_atan2Test(BITJOIN,117)@1
    yip1E_6NA_uid118_atan2Test_q <= yip1_5_uid106_atan2Test_b & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- yip1E_6sumAHighB_uid119_atan2Test(ADDSUB,118)@1
    yip1E_6sumAHighB_uid119_atan2Test_s <= xMSB_uid108_atan2Test_b;
    yip1E_6sumAHighB_uid119_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1E_6NA_uid118_atan2Test_q(28)) & yip1E_6NA_uid118_atan2Test_q));
    yip1E_6sumAHighB_uid119_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_5_uid105_atan2Test_b));
    yip1E_6sumAHighB_uid119_atan2Test_combproc: PROCESS (yip1E_6sumAHighB_uid119_atan2Test_a, yip1E_6sumAHighB_uid119_atan2Test_b, yip1E_6sumAHighB_uid119_atan2Test_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid119_atan2Test_s = "1") THEN
            yip1E_6sumAHighB_uid119_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_atan2Test_a) + SIGNED(yip1E_6sumAHighB_uid119_atan2Test_b));
        ELSE
            yip1E_6sumAHighB_uid119_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_atan2Test_a) - SIGNED(yip1E_6sumAHighB_uid119_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid119_atan2Test_q <= yip1E_6sumAHighB_uid119_atan2Test_o(29 downto 0);

    -- yip1_6_uid125_atan2Test(BITSELECT,124)@1
    yip1_6_uid125_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid119_atan2Test_q(27 downto 0));
    yip1_6_uid125_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid125_atan2Test_in(27 downto 0));

    -- xMSB_uid127_atan2Test(BITSELECT,126)@1
    xMSB_uid127_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid125_atan2Test_b(27 downto 27));

    -- invSignOfSelectionSignal_uid113_atan2Test(LOGICAL,112)@1
    invSignOfSelectionSignal_uid113_atan2Test_q <= not (xMSB_uid108_atan2Test_b);

    -- xip1E_6NA_uid115_atan2Test(BITJOIN,114)@1
    xip1E_6NA_uid115_atan2Test_q <= xip1_5_uid105_atan2Test_b & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- xip1E_6sumAHighB_uid116_atan2Test(ADDSUB,115)@1
    xip1E_6sumAHighB_uid116_atan2Test_s <= invSignOfSelectionSignal_uid113_atan2Test_q;
    xip1E_6sumAHighB_uid116_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_6NA_uid115_atan2Test_q));
    xip1E_6sumAHighB_uid116_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 24 => yip1_5_uid106_atan2Test_b(23)) & yip1_5_uid106_atan2Test_b));
    xip1E_6sumAHighB_uid116_atan2Test_combproc: PROCESS (xip1E_6sumAHighB_uid116_atan2Test_a, xip1E_6sumAHighB_uid116_atan2Test_b, xip1E_6sumAHighB_uid116_atan2Test_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid116_atan2Test_s = "1") THEN
            xip1E_6sumAHighB_uid116_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_atan2Test_a) + SIGNED(xip1E_6sumAHighB_uid116_atan2Test_b));
        ELSE
            xip1E_6sumAHighB_uid116_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_atan2Test_a) - SIGNED(xip1E_6sumAHighB_uid116_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid116_atan2Test_q <= xip1E_6sumAHighB_uid116_atan2Test_o(33 downto 0);

    -- xip1_6_uid124_atan2Test(BITSELECT,123)@1
    xip1_6_uid124_atan2Test_in <= xip1E_6sumAHighB_uid116_atan2Test_q(31 downto 0);
    xip1_6_uid124_atan2Test_b <= xip1_6_uid124_atan2Test_in(31 downto 0);

    -- twoToMiSiXip_uid131_atan2Test(BITSELECT,130)@1
    twoToMiSiXip_uid131_atan2Test_b <= xip1_6_uid124_atan2Test_b(31 downto 5);

    -- yip1E_7NA_uid139_atan2Test(BITJOIN,138)@1
    yip1E_7NA_uid139_atan2Test_q <= yip1_6_uid125_atan2Test_b & GND_q;

    -- yip1E_7sumAHighB_uid140_atan2Test(ADDSUB,139)@1
    yip1E_7sumAHighB_uid140_atan2Test_s <= xMSB_uid127_atan2Test_b;
    yip1E_7sumAHighB_uid140_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1E_7NA_uid139_atan2Test_q(28)) & yip1E_7NA_uid139_atan2Test_q));
    yip1E_7sumAHighB_uid140_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid131_atan2Test_b));
    yip1E_7sumAHighB_uid140_atan2Test_combproc: PROCESS (yip1E_7sumAHighB_uid140_atan2Test_a, yip1E_7sumAHighB_uid140_atan2Test_b, yip1E_7sumAHighB_uid140_atan2Test_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid140_atan2Test_s = "1") THEN
            yip1E_7sumAHighB_uid140_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid140_atan2Test_a) + SIGNED(yip1E_7sumAHighB_uid140_atan2Test_b));
        ELSE
            yip1E_7sumAHighB_uid140_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid140_atan2Test_a) - SIGNED(yip1E_7sumAHighB_uid140_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid140_atan2Test_q <= yip1E_7sumAHighB_uid140_atan2Test_o(29 downto 0);

    -- yip1_7_uid146_atan2Test(BITSELECT,145)@1
    yip1_7_uid146_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid140_atan2Test_q(27 downto 0));
    yip1_7_uid146_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid146_atan2Test_in(27 downto 0));

    -- xMSB_uid148_atan2Test(BITSELECT,147)@1
    xMSB_uid148_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid146_atan2Test_b(27 downto 27));

    -- invSignOfSelectionSignal_uid155_atan2Test(LOGICAL,154)@1
    invSignOfSelectionSignal_uid155_atan2Test_q <= not (xMSB_uid148_atan2Test_b);

    -- twoToMiSiYip_uid153_atan2Test(BITSELECT,152)@1
    twoToMiSiYip_uid153_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid146_atan2Test_b(27 downto 7));

    -- invSignOfSelectionSignal_uid134_atan2Test(LOGICAL,133)@1
    invSignOfSelectionSignal_uid134_atan2Test_q <= not (xMSB_uid127_atan2Test_b);

    -- twoToMiSiYip_uid132_atan2Test(BITSELECT,131)@1
    twoToMiSiYip_uid132_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid125_atan2Test_b(27 downto 5));

    -- xip1E_7NA_uid136_atan2Test(BITJOIN,135)@1
    xip1E_7NA_uid136_atan2Test_q <= xip1_6_uid124_atan2Test_b & GND_q;

    -- xip1E_7sumAHighB_uid137_atan2Test(ADDSUB,136)@1
    xip1E_7sumAHighB_uid137_atan2Test_s <= invSignOfSelectionSignal_uid134_atan2Test_q;
    xip1E_7sumAHighB_uid137_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_7NA_uid136_atan2Test_q));
    xip1E_7sumAHighB_uid137_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 23 => twoToMiSiYip_uid132_atan2Test_b(22)) & twoToMiSiYip_uid132_atan2Test_b));
    xip1E_7sumAHighB_uid137_atan2Test_combproc: PROCESS (xip1E_7sumAHighB_uid137_atan2Test_a, xip1E_7sumAHighB_uid137_atan2Test_b, xip1E_7sumAHighB_uid137_atan2Test_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid137_atan2Test_s = "1") THEN
            xip1E_7sumAHighB_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid137_atan2Test_a) + SIGNED(xip1E_7sumAHighB_uid137_atan2Test_b));
        ELSE
            xip1E_7sumAHighB_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid137_atan2Test_a) - SIGNED(xip1E_7sumAHighB_uid137_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid137_atan2Test_q <= xip1E_7sumAHighB_uid137_atan2Test_o(34 downto 0);

    -- xip1_7_uid145_atan2Test(BITSELECT,144)@1
    xip1_7_uid145_atan2Test_in <= xip1E_7sumAHighB_uid137_atan2Test_q(32 downto 0);
    xip1_7_uid145_atan2Test_b <= xip1_7_uid145_atan2Test_in(32 downto 0);

    -- xip1E_8_uid156_atan2Test(ADDSUB,155)@1
    xip1E_8_uid156_atan2Test_s <= invSignOfSelectionSignal_uid155_atan2Test_q;
    xip1E_8_uid156_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_7_uid145_atan2Test_b));
    xip1E_8_uid156_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 21 => twoToMiSiYip_uid153_atan2Test_b(20)) & twoToMiSiYip_uid153_atan2Test_b));
    xip1E_8_uid156_atan2Test_combproc: PROCESS (xip1E_8_uid156_atan2Test_a, xip1E_8_uid156_atan2Test_b, xip1E_8_uid156_atan2Test_s)
    BEGIN
        IF (xip1E_8_uid156_atan2Test_s = "1") THEN
            xip1E_8_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid156_atan2Test_a) + SIGNED(xip1E_8_uid156_atan2Test_b));
        ELSE
            xip1E_8_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid156_atan2Test_a) - SIGNED(xip1E_8_uid156_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_8_uid156_atan2Test_q <= xip1E_8_uid156_atan2Test_o(34 downto 0);

    -- xip1_8_uid162_atan2Test(BITSELECT,161)@1
    xip1_8_uid162_atan2Test_in <= xip1E_8_uid156_atan2Test_q(32 downto 0);
    xip1_8_uid162_atan2Test_b <= xip1_8_uid162_atan2Test_in(32 downto 0);

    -- redist5_xip1_8_uid162_atan2Test_b_1(DELAY,334)
    redist5_xip1_8_uid162_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_8_uid162_atan2Test_b, xout => redist5_xip1_8_uid162_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- twoToMiSiXip_uid169_atan2Test(BITSELECT,168)@2
    twoToMiSiXip_uid169_atan2Test_b <= redist5_xip1_8_uid162_atan2Test_b_1_q(32 downto 8);

    -- twoToMiSiXip_uid152_atan2Test(BITSELECT,151)@1
    twoToMiSiXip_uid152_atan2Test_b <= xip1_7_uid145_atan2Test_b(32 downto 7);

    -- yip1E_8_uid157_atan2Test(ADDSUB,156)@1
    yip1E_8_uid157_atan2Test_s <= xMSB_uid148_atan2Test_b;
    yip1E_8_uid157_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => yip1_7_uid146_atan2Test_b(27)) & yip1_7_uid146_atan2Test_b));
    yip1E_8_uid157_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid152_atan2Test_b));
    yip1E_8_uid157_atan2Test_combproc: PROCESS (yip1E_8_uid157_atan2Test_a, yip1E_8_uid157_atan2Test_b, yip1E_8_uid157_atan2Test_s)
    BEGIN
        IF (yip1E_8_uid157_atan2Test_s = "1") THEN
            yip1E_8_uid157_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid157_atan2Test_a) + SIGNED(yip1E_8_uid157_atan2Test_b));
        ELSE
            yip1E_8_uid157_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid157_atan2Test_a) - SIGNED(yip1E_8_uid157_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_8_uid157_atan2Test_q <= yip1E_8_uid157_atan2Test_o(28 downto 0);

    -- yip1_8_uid163_atan2Test(BITSELECT,162)@1
    yip1_8_uid163_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_8_uid157_atan2Test_q(26 downto 0));
    yip1_8_uid163_atan2Test_b <= STD_LOGIC_VECTOR(yip1_8_uid163_atan2Test_in(26 downto 0));

    -- redist4_yip1_8_uid163_atan2Test_b_1(DELAY,333)
    redist4_yip1_8_uid163_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_8_uid163_atan2Test_b, xout => redist4_yip1_8_uid163_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- yip1E_9_uid174_atan2Test(ADDSUB,173)@2
    yip1E_9_uid174_atan2Test_s <= xMSB_uid165_atan2Test_b;
    yip1E_9_uid174_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => redist4_yip1_8_uid163_atan2Test_b_1_q(26)) & redist4_yip1_8_uid163_atan2Test_b_1_q));
    yip1E_9_uid174_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid169_atan2Test_b));
    yip1E_9_uid174_atan2Test_combproc: PROCESS (yip1E_9_uid174_atan2Test_a, yip1E_9_uid174_atan2Test_b, yip1E_9_uid174_atan2Test_s)
    BEGIN
        IF (yip1E_9_uid174_atan2Test_s = "1") THEN
            yip1E_9_uid174_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid174_atan2Test_a) + SIGNED(yip1E_9_uid174_atan2Test_b));
        ELSE
            yip1E_9_uid174_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid174_atan2Test_a) - SIGNED(yip1E_9_uid174_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_9_uid174_atan2Test_q <= yip1E_9_uid174_atan2Test_o(27 downto 0);

    -- yip1_9_uid180_atan2Test(BITSELECT,179)@2
    yip1_9_uid180_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_9_uid174_atan2Test_q(25 downto 0));
    yip1_9_uid180_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid180_atan2Test_in(25 downto 0));

    -- xMSB_uid182_atan2Test(BITSELECT,181)@2
    xMSB_uid182_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid180_atan2Test_b(25 downto 25));

    -- invSignOfSelectionSignal_uid189_atan2Test(LOGICAL,188)@2
    invSignOfSelectionSignal_uid189_atan2Test_q <= not (xMSB_uid182_atan2Test_b);

    -- twoToMiSiYip_uid187_atan2Test(BITSELECT,186)@2
    twoToMiSiYip_uid187_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid180_atan2Test_b(25 downto 9));

    -- invSignOfSelectionSignal_uid172_atan2Test(LOGICAL,171)@2
    invSignOfSelectionSignal_uid172_atan2Test_q <= not (xMSB_uid165_atan2Test_b);

    -- twoToMiSiYip_uid170_atan2Test(BITSELECT,169)@2
    twoToMiSiYip_uid170_atan2Test_b <= STD_LOGIC_VECTOR(redist4_yip1_8_uid163_atan2Test_b_1_q(26 downto 8));

    -- xip1E_9_uid173_atan2Test(ADDSUB,172)@2
    xip1E_9_uid173_atan2Test_s <= invSignOfSelectionSignal_uid172_atan2Test_q;
    xip1E_9_uid173_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist5_xip1_8_uid162_atan2Test_b_1_q));
    xip1E_9_uid173_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 19 => twoToMiSiYip_uid170_atan2Test_b(18)) & twoToMiSiYip_uid170_atan2Test_b));
    xip1E_9_uid173_atan2Test_combproc: PROCESS (xip1E_9_uid173_atan2Test_a, xip1E_9_uid173_atan2Test_b, xip1E_9_uid173_atan2Test_s)
    BEGIN
        IF (xip1E_9_uid173_atan2Test_s = "1") THEN
            xip1E_9_uid173_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid173_atan2Test_a) + SIGNED(xip1E_9_uid173_atan2Test_b));
        ELSE
            xip1E_9_uid173_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid173_atan2Test_a) - SIGNED(xip1E_9_uid173_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_9_uid173_atan2Test_q <= xip1E_9_uid173_atan2Test_o(34 downto 0);

    -- xip1_9_uid179_atan2Test(BITSELECT,178)@2
    xip1_9_uid179_atan2Test_in <= xip1E_9_uid173_atan2Test_q(32 downto 0);
    xip1_9_uid179_atan2Test_b <= xip1_9_uid179_atan2Test_in(32 downto 0);

    -- xip1E_10_uid190_atan2Test(ADDSUB,189)@2
    xip1E_10_uid190_atan2Test_s <= invSignOfSelectionSignal_uid189_atan2Test_q;
    xip1E_10_uid190_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_9_uid179_atan2Test_b));
    xip1E_10_uid190_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 17 => twoToMiSiYip_uid187_atan2Test_b(16)) & twoToMiSiYip_uid187_atan2Test_b));
    xip1E_10_uid190_atan2Test_combproc: PROCESS (xip1E_10_uid190_atan2Test_a, xip1E_10_uid190_atan2Test_b, xip1E_10_uid190_atan2Test_s)
    BEGIN
        IF (xip1E_10_uid190_atan2Test_s = "1") THEN
            xip1E_10_uid190_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid190_atan2Test_a) + SIGNED(xip1E_10_uid190_atan2Test_b));
        ELSE
            xip1E_10_uid190_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid190_atan2Test_a) - SIGNED(xip1E_10_uid190_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_10_uid190_atan2Test_q <= xip1E_10_uid190_atan2Test_o(34 downto 0);

    -- xip1_10_uid196_atan2Test(BITSELECT,195)@2
    xip1_10_uid196_atan2Test_in <= xip1E_10_uid190_atan2Test_q(32 downto 0);
    xip1_10_uid196_atan2Test_b <= xip1_10_uid196_atan2Test_in(32 downto 0);

    -- twoToMiSiXip_uid203_atan2Test(BITSELECT,202)@2
    twoToMiSiXip_uid203_atan2Test_b <= xip1_10_uid196_atan2Test_b(32 downto 10);

    -- twoToMiSiXip_uid186_atan2Test(BITSELECT,185)@2
    twoToMiSiXip_uid186_atan2Test_b <= xip1_9_uid179_atan2Test_b(32 downto 9);

    -- yip1E_10_uid191_atan2Test(ADDSUB,190)@2
    yip1E_10_uid191_atan2Test_s <= xMSB_uid182_atan2Test_b;
    yip1E_10_uid191_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1_9_uid180_atan2Test_b(25)) & yip1_9_uid180_atan2Test_b));
    yip1E_10_uid191_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid186_atan2Test_b));
    yip1E_10_uid191_atan2Test_combproc: PROCESS (yip1E_10_uid191_atan2Test_a, yip1E_10_uid191_atan2Test_b, yip1E_10_uid191_atan2Test_s)
    BEGIN
        IF (yip1E_10_uid191_atan2Test_s = "1") THEN
            yip1E_10_uid191_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid191_atan2Test_a) + SIGNED(yip1E_10_uid191_atan2Test_b));
        ELSE
            yip1E_10_uid191_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid191_atan2Test_a) - SIGNED(yip1E_10_uid191_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_10_uid191_atan2Test_q <= yip1E_10_uid191_atan2Test_o(26 downto 0);

    -- yip1_10_uid197_atan2Test(BITSELECT,196)@2
    yip1_10_uid197_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_10_uid191_atan2Test_q(24 downto 0));
    yip1_10_uid197_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid197_atan2Test_in(24 downto 0));

    -- yip1E_11_uid208_atan2Test(ADDSUB,207)@2
    yip1E_11_uid208_atan2Test_s <= xMSB_uid199_atan2Test_b;
    yip1E_11_uid208_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_10_uid197_atan2Test_b(24)) & yip1_10_uid197_atan2Test_b));
    yip1E_11_uid208_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid203_atan2Test_b));
    yip1E_11_uid208_atan2Test_combproc: PROCESS (yip1E_11_uid208_atan2Test_a, yip1E_11_uid208_atan2Test_b, yip1E_11_uid208_atan2Test_s)
    BEGIN
        IF (yip1E_11_uid208_atan2Test_s = "1") THEN
            yip1E_11_uid208_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid208_atan2Test_a) + SIGNED(yip1E_11_uid208_atan2Test_b));
        ELSE
            yip1E_11_uid208_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid208_atan2Test_a) - SIGNED(yip1E_11_uid208_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_11_uid208_atan2Test_q <= yip1E_11_uid208_atan2Test_o(25 downto 0);

    -- yip1_11_uid214_atan2Test(BITSELECT,213)@2
    yip1_11_uid214_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_11_uid208_atan2Test_q(23 downto 0));
    yip1_11_uid214_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid214_atan2Test_in(23 downto 0));

    -- xMSB_uid216_atan2Test(BITSELECT,215)@2
    xMSB_uid216_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid214_atan2Test_b(23 downto 23));

    -- invSignOfSelectionSignal_uid223_atan2Test(LOGICAL,222)@2
    invSignOfSelectionSignal_uid223_atan2Test_q <= not (xMSB_uid216_atan2Test_b);

    -- twoToMiSiYip_uid221_atan2Test(BITSELECT,220)@2
    twoToMiSiYip_uid221_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid214_atan2Test_b(23 downto 11));

    -- invSignOfSelectionSignal_uid206_atan2Test(LOGICAL,205)@2
    invSignOfSelectionSignal_uid206_atan2Test_q <= not (xMSB_uid199_atan2Test_b);

    -- twoToMiSiYip_uid204_atan2Test(BITSELECT,203)@2
    twoToMiSiYip_uid204_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid197_atan2Test_b(24 downto 10));

    -- xip1E_11_uid207_atan2Test(ADDSUB,206)@2
    xip1E_11_uid207_atan2Test_s <= invSignOfSelectionSignal_uid206_atan2Test_q;
    xip1E_11_uid207_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_10_uid196_atan2Test_b));
    xip1E_11_uid207_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 15 => twoToMiSiYip_uid204_atan2Test_b(14)) & twoToMiSiYip_uid204_atan2Test_b));
    xip1E_11_uid207_atan2Test_combproc: PROCESS (xip1E_11_uid207_atan2Test_a, xip1E_11_uid207_atan2Test_b, xip1E_11_uid207_atan2Test_s)
    BEGIN
        IF (xip1E_11_uid207_atan2Test_s = "1") THEN
            xip1E_11_uid207_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid207_atan2Test_a) + SIGNED(xip1E_11_uid207_atan2Test_b));
        ELSE
            xip1E_11_uid207_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid207_atan2Test_a) - SIGNED(xip1E_11_uid207_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_11_uid207_atan2Test_q <= xip1E_11_uid207_atan2Test_o(34 downto 0);

    -- xip1_11_uid213_atan2Test(BITSELECT,212)@2
    xip1_11_uid213_atan2Test_in <= xip1E_11_uid207_atan2Test_q(32 downto 0);
    xip1_11_uid213_atan2Test_b <= xip1_11_uid213_atan2Test_in(32 downto 0);

    -- xip1E_12_uid224_atan2Test(ADDSUB,223)@2
    xip1E_12_uid224_atan2Test_s <= invSignOfSelectionSignal_uid223_atan2Test_q;
    xip1E_12_uid224_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_11_uid213_atan2Test_b));
    xip1E_12_uid224_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 13 => twoToMiSiYip_uid221_atan2Test_b(12)) & twoToMiSiYip_uid221_atan2Test_b));
    xip1E_12_uid224_atan2Test_combproc: PROCESS (xip1E_12_uid224_atan2Test_a, xip1E_12_uid224_atan2Test_b, xip1E_12_uid224_atan2Test_s)
    BEGIN
        IF (xip1E_12_uid224_atan2Test_s = "1") THEN
            xip1E_12_uid224_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid224_atan2Test_a) + SIGNED(xip1E_12_uid224_atan2Test_b));
        ELSE
            xip1E_12_uid224_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid224_atan2Test_a) - SIGNED(xip1E_12_uid224_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_12_uid224_atan2Test_q <= xip1E_12_uid224_atan2Test_o(34 downto 0);

    -- xip1_12_uid230_atan2Test(BITSELECT,229)@2
    xip1_12_uid230_atan2Test_in <= xip1E_12_uid224_atan2Test_q(32 downto 0);
    xip1_12_uid230_atan2Test_b <= xip1_12_uid230_atan2Test_in(32 downto 0);

    -- twoToMiSiXip_uid237_atan2Test(BITSELECT,236)@2
    twoToMiSiXip_uid237_atan2Test_b <= xip1_12_uid230_atan2Test_b(32 downto 12);

    -- twoToMiSiXip_uid220_atan2Test(BITSELECT,219)@2
    twoToMiSiXip_uid220_atan2Test_b <= xip1_11_uid213_atan2Test_b(32 downto 11);

    -- yip1E_12_uid225_atan2Test(ADDSUB,224)@2
    yip1E_12_uid225_atan2Test_s <= xMSB_uid216_atan2Test_b;
    yip1E_12_uid225_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => yip1_11_uid214_atan2Test_b(23)) & yip1_11_uid214_atan2Test_b));
    yip1E_12_uid225_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid220_atan2Test_b));
    yip1E_12_uid225_atan2Test_combproc: PROCESS (yip1E_12_uid225_atan2Test_a, yip1E_12_uid225_atan2Test_b, yip1E_12_uid225_atan2Test_s)
    BEGIN
        IF (yip1E_12_uid225_atan2Test_s = "1") THEN
            yip1E_12_uid225_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid225_atan2Test_a) + SIGNED(yip1E_12_uid225_atan2Test_b));
        ELSE
            yip1E_12_uid225_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid225_atan2Test_a) - SIGNED(yip1E_12_uid225_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_12_uid225_atan2Test_q <= yip1E_12_uid225_atan2Test_o(24 downto 0);

    -- yip1_12_uid231_atan2Test(BITSELECT,230)@2
    yip1_12_uid231_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_12_uid225_atan2Test_q(22 downto 0));
    yip1_12_uid231_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid231_atan2Test_in(22 downto 0));

    -- yip1E_13_uid242_atan2Test(ADDSUB,241)@2
    yip1E_13_uid242_atan2Test_s <= xMSB_uid233_atan2Test_b;
    yip1E_13_uid242_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => yip1_12_uid231_atan2Test_b(22)) & yip1_12_uid231_atan2Test_b));
    yip1E_13_uid242_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid237_atan2Test_b));
    yip1E_13_uid242_atan2Test_combproc: PROCESS (yip1E_13_uid242_atan2Test_a, yip1E_13_uid242_atan2Test_b, yip1E_13_uid242_atan2Test_s)
    BEGIN
        IF (yip1E_13_uid242_atan2Test_s = "1") THEN
            yip1E_13_uid242_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid242_atan2Test_a) + SIGNED(yip1E_13_uid242_atan2Test_b));
        ELSE
            yip1E_13_uid242_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid242_atan2Test_a) - SIGNED(yip1E_13_uid242_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_13_uid242_atan2Test_q <= yip1E_13_uid242_atan2Test_o(23 downto 0);

    -- yip1_13_uid248_atan2Test(BITSELECT,247)@2
    yip1_13_uid248_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_13_uid242_atan2Test_q(21 downto 0));
    yip1_13_uid248_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid248_atan2Test_in(21 downto 0));

    -- xMSB_uid250_atan2Test(BITSELECT,249)@2
    xMSB_uid250_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid248_atan2Test_b(21 downto 21));

    -- invSignOfSelectionSignal_uid257_atan2Test(LOGICAL,256)@2
    invSignOfSelectionSignal_uid257_atan2Test_q <= not (xMSB_uid250_atan2Test_b);

    -- twoToMiSiYip_uid255_atan2Test(BITSELECT,254)@2
    twoToMiSiYip_uid255_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid248_atan2Test_b(21 downto 13));

    -- invSignOfSelectionSignal_uid240_atan2Test(LOGICAL,239)@2
    invSignOfSelectionSignal_uid240_atan2Test_q <= not (xMSB_uid233_atan2Test_b);

    -- twoToMiSiYip_uid238_atan2Test(BITSELECT,237)@2
    twoToMiSiYip_uid238_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid231_atan2Test_b(22 downto 12));

    -- xip1E_13_uid241_atan2Test(ADDSUB,240)@2
    xip1E_13_uid241_atan2Test_s <= invSignOfSelectionSignal_uid240_atan2Test_q;
    xip1E_13_uid241_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_12_uid230_atan2Test_b));
    xip1E_13_uid241_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 11 => twoToMiSiYip_uid238_atan2Test_b(10)) & twoToMiSiYip_uid238_atan2Test_b));
    xip1E_13_uid241_atan2Test_combproc: PROCESS (xip1E_13_uid241_atan2Test_a, xip1E_13_uid241_atan2Test_b, xip1E_13_uid241_atan2Test_s)
    BEGIN
        IF (xip1E_13_uid241_atan2Test_s = "1") THEN
            xip1E_13_uid241_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid241_atan2Test_a) + SIGNED(xip1E_13_uid241_atan2Test_b));
        ELSE
            xip1E_13_uid241_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid241_atan2Test_a) - SIGNED(xip1E_13_uid241_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_13_uid241_atan2Test_q <= xip1E_13_uid241_atan2Test_o(34 downto 0);

    -- xip1_13_uid247_atan2Test(BITSELECT,246)@2
    xip1_13_uid247_atan2Test_in <= xip1E_13_uid241_atan2Test_q(32 downto 0);
    xip1_13_uid247_atan2Test_b <= xip1_13_uid247_atan2Test_in(32 downto 0);

    -- xip1E_14_uid258_atan2Test(ADDSUB,257)@2
    xip1E_14_uid258_atan2Test_s <= invSignOfSelectionSignal_uid257_atan2Test_q;
    xip1E_14_uid258_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_13_uid247_atan2Test_b));
    xip1E_14_uid258_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 9 => twoToMiSiYip_uid255_atan2Test_b(8)) & twoToMiSiYip_uid255_atan2Test_b));
    xip1E_14_uid258_atan2Test_combproc: PROCESS (xip1E_14_uid258_atan2Test_a, xip1E_14_uid258_atan2Test_b, xip1E_14_uid258_atan2Test_s)
    BEGIN
        IF (xip1E_14_uid258_atan2Test_s = "1") THEN
            xip1E_14_uid258_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid258_atan2Test_a) + SIGNED(xip1E_14_uid258_atan2Test_b));
        ELSE
            xip1E_14_uid258_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid258_atan2Test_a) - SIGNED(xip1E_14_uid258_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_14_uid258_atan2Test_q <= xip1E_14_uid258_atan2Test_o(34 downto 0);

    -- xip1_14_uid264_atan2Test(BITSELECT,263)@2
    xip1_14_uid264_atan2Test_in <= xip1E_14_uid258_atan2Test_q(32 downto 0);
    xip1_14_uid264_atan2Test_b <= xip1_14_uid264_atan2Test_in(32 downto 0);

    -- twoToMiSiXip_uid271_atan2Test(BITSELECT,270)@2
    twoToMiSiXip_uid271_atan2Test_b <= xip1_14_uid264_atan2Test_b(32 downto 14);

    -- twoToMiSiXip_uid254_atan2Test(BITSELECT,253)@2
    twoToMiSiXip_uid254_atan2Test_b <= xip1_13_uid247_atan2Test_b(32 downto 13);

    -- yip1E_14_uid259_atan2Test(ADDSUB,258)@2
    yip1E_14_uid259_atan2Test_s <= xMSB_uid250_atan2Test_b;
    yip1E_14_uid259_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1_13_uid248_atan2Test_b(21)) & yip1_13_uid248_atan2Test_b));
    yip1E_14_uid259_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid254_atan2Test_b));
    yip1E_14_uid259_atan2Test_combproc: PROCESS (yip1E_14_uid259_atan2Test_a, yip1E_14_uid259_atan2Test_b, yip1E_14_uid259_atan2Test_s)
    BEGIN
        IF (yip1E_14_uid259_atan2Test_s = "1") THEN
            yip1E_14_uid259_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid259_atan2Test_a) + SIGNED(yip1E_14_uid259_atan2Test_b));
        ELSE
            yip1E_14_uid259_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid259_atan2Test_a) - SIGNED(yip1E_14_uid259_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_14_uid259_atan2Test_q <= yip1E_14_uid259_atan2Test_o(22 downto 0);

    -- yip1_14_uid265_atan2Test(BITSELECT,264)@2
    yip1_14_uid265_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_14_uid259_atan2Test_q(20 downto 0));
    yip1_14_uid265_atan2Test_b <= STD_LOGIC_VECTOR(yip1_14_uid265_atan2Test_in(20 downto 0));

    -- yip1E_15_uid276_atan2Test(ADDSUB,275)@2
    yip1E_15_uid276_atan2Test_s <= xMSB_uid267_atan2Test_b;
    yip1E_15_uid276_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1_14_uid265_atan2Test_b(20)) & yip1_14_uid265_atan2Test_b));
    yip1E_15_uid276_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid271_atan2Test_b));
    yip1E_15_uid276_atan2Test_combproc: PROCESS (yip1E_15_uid276_atan2Test_a, yip1E_15_uid276_atan2Test_b, yip1E_15_uid276_atan2Test_s)
    BEGIN
        IF (yip1E_15_uid276_atan2Test_s = "1") THEN
            yip1E_15_uid276_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid276_atan2Test_a) + SIGNED(yip1E_15_uid276_atan2Test_b));
        ELSE
            yip1E_15_uid276_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid276_atan2Test_a) - SIGNED(yip1E_15_uid276_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_15_uid276_atan2Test_q <= yip1E_15_uid276_atan2Test_o(21 downto 0);

    -- yip1_15_uid282_atan2Test(BITSELECT,281)@2
    yip1_15_uid282_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_15_uid276_atan2Test_q(19 downto 0));
    yip1_15_uid282_atan2Test_b <= STD_LOGIC_VECTOR(yip1_15_uid282_atan2Test_in(19 downto 0));

    -- xMSB_uid284_atan2Test(BITSELECT,283)@2
    xMSB_uid284_atan2Test_b <= STD_LOGIC_VECTOR(yip1_15_uid282_atan2Test_b(19 downto 19));

    -- redist0_xMSB_uid284_atan2Test_b_1(DELAY,329)
    redist0_xMSB_uid284_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid284_atan2Test_b, xout => redist0_xMSB_uid284_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid294_atan2Test(LOGICAL,293)@3
    invSignOfSelectionSignal_uid294_atan2Test_q <= not (redist0_xMSB_uid284_atan2Test_b_1_q);

    -- cstArcTan2Mi_15_uid290_atan2Test(CONSTANT,289)
    cstArcTan2Mi_15_uid290_atan2Test_q <= "01111111111111111111111111111111010101011";

    -- invSignOfSelectionSignal_uid277_atan2Test(LOGICAL,276)@2 + 1
    invSignOfSelectionSignal_uid277_atan2Test_qi <= not (xMSB_uid267_atan2Test_b);
    invSignOfSelectionSignal_uid277_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid277_atan2Test_qi, xout => invSignOfSelectionSignal_uid277_atan2Test_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_14_uid273_atan2Test(CONSTANT,272)
    cstArcTan2Mi_14_uid273_atan2Test_q <= "0111111111111111111111111111110101010101";

    -- redist1_invSignOfSelectionSignal_uid257_atan2Test_q_1(DELAY,330)
    redist1_invSignOfSelectionSignal_uid257_atan2Test_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid257_atan2Test_q, xout => redist1_invSignOfSelectionSignal_uid257_atan2Test_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_13_uid256_atan2Test(CONSTANT,255)
    cstArcTan2Mi_13_uid256_atan2Test_q <= "011111111111111111111111111101010101011";

    -- redist2_invSignOfSelectionSignal_uid240_atan2Test_q_1(DELAY,331)
    redist2_invSignOfSelectionSignal_uid240_atan2Test_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid240_atan2Test_q, xout => redist2_invSignOfSelectionSignal_uid240_atan2Test_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_12_uid239_atan2Test(CONSTANT,238)
    cstArcTan2Mi_12_uid239_atan2Test_q <= "01111111111111111111111111010101010101";

    -- cstArcTan2Mi_11_uid222_atan2Test(CONSTANT,221)
    cstArcTan2Mi_11_uid222_atan2Test_q <= "0111111111111111111111110101010101011";

    -- cstArcTan2Mi_10_uid205_atan2Test(CONSTANT,204)
    cstArcTan2Mi_10_uid205_atan2Test_q <= "011111111111111111111101010101010101";

    -- cstArcTan2Mi_9_uid188_atan2Test(CONSTANT,187)
    cstArcTan2Mi_9_uid188_atan2Test_q <= "01111111111111111111010101010101011";

    -- cstArcTan2Mi_8_uid171_atan2Test(CONSTANT,170)
    cstArcTan2Mi_8_uid171_atan2Test_q <= "0111111111111111110101010101010110";

    -- redist6_invSignOfSelectionSignal_uid155_atan2Test_q_1(DELAY,335)
    redist6_invSignOfSelectionSignal_uid155_atan2Test_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid155_atan2Test_q, xout => redist6_invSignOfSelectionSignal_uid155_atan2Test_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_7_uid154_atan2Test(CONSTANT,153)
    cstArcTan2Mi_7_uid154_atan2Test_q <= "011111111111111101010101010101110";

    -- redist7_invSignOfSelectionSignal_uid134_atan2Test_q_1(DELAY,336)
    redist7_invSignOfSelectionSignal_uid134_atan2Test_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid134_atan2Test_q, xout => redist7_invSignOfSelectionSignal_uid134_atan2Test_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_6_uid133_atan2Test(CONSTANT,132)
    cstArcTan2Mi_6_uid133_atan2Test_q <= "01111111111111010101010101101111";

    -- redist8_invSignOfSelectionSignal_uid113_atan2Test_q_1(DELAY,337)
    redist8_invSignOfSelectionSignal_uid113_atan2Test_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid113_atan2Test_q, xout => redist8_invSignOfSelectionSignal_uid113_atan2Test_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cstArcTan2Mi_5_uid112_atan2Test(CONSTANT,111)
    cstArcTan2Mi_5_uid112_atan2Test_q <= "0111111111110101010101101110111";

    -- cstArcTan2Mi_4_uid93_atan2Test(CONSTANT,92)
    cstArcTan2Mi_4_uid93_atan2Test_q <= "011111111101010101101110110111";

    -- cstArcTan2Mi_3_uid74_atan2Test(CONSTANT,73)
    cstArcTan2Mi_3_uid74_atan2Test_q <= "01111111010101101110101001101";

    -- cstArcTan2Mi_2_uid55_atan2Test(CONSTANT,54)
    cstArcTan2Mi_2_uid55_atan2Test_q <= "0111110101101101110101111110";

    -- cstArcTan2Mi_1_uid36_atan2Test(CONSTANT,35)
    cstArcTan2Mi_1_uid36_atan2Test_q <= "011101101011000110011100001";

    -- cstArcTan2Mi_0_uid22_atan2Test(CONSTANT,21)
    cstArcTan2Mi_0_uid22_atan2Test_q <= "01100100100001111110110101";

    -- highBBits_uid26_atan2Test(BITSELECT,25)@1
    highBBits_uid26_atan2Test_b <= STD_LOGIC_VECTOR(cstArcTan2Mi_0_uid22_atan2Test_q(25 downto 25));

    -- lowRangeB_uid25_atan2Test(BITSELECT,24)@1
    lowRangeB_uid25_atan2Test_in <= cstArcTan2Mi_0_uid22_atan2Test_q(24 downto 0);
    lowRangeB_uid25_atan2Test_b <= lowRangeB_uid25_atan2Test_in(24 downto 0);

    -- aip1E_1_uid28_atan2Test(BITJOIN,27)@1
    aip1E_1_uid28_atan2Test_q <= STD_LOGIC_VECTOR((2 downto 1 => highBBits_uid26_atan2Test_b(0)) & highBBits_uid26_atan2Test_b) & lowRangeB_uid25_atan2Test_b;

    -- aip1E_uid31_atan2Test(BITSELECT,30)@1
    aip1E_uid31_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_1_uid28_atan2Test_q(26 downto 0));
    aip1E_uid31_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid31_atan2Test_in(26 downto 0));

    -- aip1E_2NA_uid46_atan2Test(BITJOIN,45)@1
    aip1E_2NA_uid46_atan2Test_q <= aip1E_uid31_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_2sumAHighB_uid47_atan2Test(ADDSUB,46)@1
    aip1E_2sumAHighB_uid47_atan2Test_s <= invSignOfSelectionSignal_uid37_atan2Test_q;
    aip1E_2sumAHighB_uid47_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => aip1E_2NA_uid46_atan2Test_q(28)) & aip1E_2NA_uid46_atan2Test_q));
    aip1E_2sumAHighB_uid47_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 27 => cstArcTan2Mi_1_uid36_atan2Test_q(26)) & cstArcTan2Mi_1_uid36_atan2Test_q));
    aip1E_2sumAHighB_uid47_atan2Test_combproc: PROCESS (aip1E_2sumAHighB_uid47_atan2Test_a, aip1E_2sumAHighB_uid47_atan2Test_b, aip1E_2sumAHighB_uid47_atan2Test_s)
    BEGIN
        IF (aip1E_2sumAHighB_uid47_atan2Test_s = "1") THEN
            aip1E_2sumAHighB_uid47_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2sumAHighB_uid47_atan2Test_a) + SIGNED(aip1E_2sumAHighB_uid47_atan2Test_b));
        ELSE
            aip1E_2sumAHighB_uid47_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2sumAHighB_uid47_atan2Test_a) - SIGNED(aip1E_2sumAHighB_uid47_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_2sumAHighB_uid47_atan2Test_q <= aip1E_2sumAHighB_uid47_atan2Test_o(29 downto 0);

    -- aip1E_uid50_atan2Test(BITSELECT,49)@1
    aip1E_uid50_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_2sumAHighB_uid47_atan2Test_q(28 downto 0));
    aip1E_uid50_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid50_atan2Test_in(28 downto 0));

    -- aip1E_3NA_uid65_atan2Test(BITJOIN,64)@1
    aip1E_3NA_uid65_atan2Test_q <= aip1E_uid50_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_3sumAHighB_uid66_atan2Test(ADDSUB,65)@1
    aip1E_3sumAHighB_uid66_atan2Test_s <= invSignOfSelectionSignal_uid56_atan2Test_q;
    aip1E_3sumAHighB_uid66_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => aip1E_3NA_uid65_atan2Test_q(30)) & aip1E_3NA_uid65_atan2Test_q));
    aip1E_3sumAHighB_uid66_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 28 => cstArcTan2Mi_2_uid55_atan2Test_q(27)) & cstArcTan2Mi_2_uid55_atan2Test_q));
    aip1E_3sumAHighB_uid66_atan2Test_combproc: PROCESS (aip1E_3sumAHighB_uid66_atan2Test_a, aip1E_3sumAHighB_uid66_atan2Test_b, aip1E_3sumAHighB_uid66_atan2Test_s)
    BEGIN
        IF (aip1E_3sumAHighB_uid66_atan2Test_s = "1") THEN
            aip1E_3sumAHighB_uid66_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3sumAHighB_uid66_atan2Test_a) + SIGNED(aip1E_3sumAHighB_uid66_atan2Test_b));
        ELSE
            aip1E_3sumAHighB_uid66_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3sumAHighB_uid66_atan2Test_a) - SIGNED(aip1E_3sumAHighB_uid66_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_3sumAHighB_uid66_atan2Test_q <= aip1E_3sumAHighB_uid66_atan2Test_o(31 downto 0);

    -- aip1E_uid69_atan2Test(BITSELECT,68)@1
    aip1E_uid69_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_3sumAHighB_uid66_atan2Test_q(30 downto 0));
    aip1E_uid69_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid69_atan2Test_in(30 downto 0));

    -- aip1E_4NA_uid84_atan2Test(BITJOIN,83)@1
    aip1E_4NA_uid84_atan2Test_q <= aip1E_uid69_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_4sumAHighB_uid85_atan2Test(ADDSUB,84)@1
    aip1E_4sumAHighB_uid85_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    aip1E_4sumAHighB_uid85_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => aip1E_4NA_uid84_atan2Test_q(32)) & aip1E_4NA_uid84_atan2Test_q));
    aip1E_4sumAHighB_uid85_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 29 => cstArcTan2Mi_3_uid74_atan2Test_q(28)) & cstArcTan2Mi_3_uid74_atan2Test_q));
    aip1E_4sumAHighB_uid85_atan2Test_combproc: PROCESS (aip1E_4sumAHighB_uid85_atan2Test_a, aip1E_4sumAHighB_uid85_atan2Test_b, aip1E_4sumAHighB_uid85_atan2Test_s)
    BEGIN
        IF (aip1E_4sumAHighB_uid85_atan2Test_s = "1") THEN
            aip1E_4sumAHighB_uid85_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4sumAHighB_uid85_atan2Test_a) + SIGNED(aip1E_4sumAHighB_uid85_atan2Test_b));
        ELSE
            aip1E_4sumAHighB_uid85_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4sumAHighB_uid85_atan2Test_a) - SIGNED(aip1E_4sumAHighB_uid85_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_4sumAHighB_uid85_atan2Test_q <= aip1E_4sumAHighB_uid85_atan2Test_o(33 downto 0);

    -- aip1E_uid88_atan2Test(BITSELECT,87)@1
    aip1E_uid88_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_4sumAHighB_uid85_atan2Test_q(32 downto 0));
    aip1E_uid88_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid88_atan2Test_in(32 downto 0));

    -- aip1E_5NA_uid103_atan2Test(BITJOIN,102)@1
    aip1E_5NA_uid103_atan2Test_q <= aip1E_uid88_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_5sumAHighB_uid104_atan2Test(ADDSUB,103)@1
    aip1E_5sumAHighB_uid104_atan2Test_s <= invSignOfSelectionSignal_uid94_atan2Test_q;
    aip1E_5sumAHighB_uid104_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => aip1E_5NA_uid103_atan2Test_q(34)) & aip1E_5NA_uid103_atan2Test_q));
    aip1E_5sumAHighB_uid104_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 30 => cstArcTan2Mi_4_uid93_atan2Test_q(29)) & cstArcTan2Mi_4_uid93_atan2Test_q));
    aip1E_5sumAHighB_uid104_atan2Test_combproc: PROCESS (aip1E_5sumAHighB_uid104_atan2Test_a, aip1E_5sumAHighB_uid104_atan2Test_b, aip1E_5sumAHighB_uid104_atan2Test_s)
    BEGIN
        IF (aip1E_5sumAHighB_uid104_atan2Test_s = "1") THEN
            aip1E_5sumAHighB_uid104_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5sumAHighB_uid104_atan2Test_a) + SIGNED(aip1E_5sumAHighB_uid104_atan2Test_b));
        ELSE
            aip1E_5sumAHighB_uid104_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5sumAHighB_uid104_atan2Test_a) - SIGNED(aip1E_5sumAHighB_uid104_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_5sumAHighB_uid104_atan2Test_q <= aip1E_5sumAHighB_uid104_atan2Test_o(35 downto 0);

    -- aip1E_uid107_atan2Test(BITSELECT,106)@1
    aip1E_uid107_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_5sumAHighB_uid104_atan2Test_q(34 downto 0));
    aip1E_uid107_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid107_atan2Test_in(34 downto 0));

    -- redist9_aip1E_uid107_atan2Test_b_1(DELAY,338)
    redist9_aip1E_uid107_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid107_atan2Test_b, xout => redist9_aip1E_uid107_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- aip1E_6NA_uid122_atan2Test(BITJOIN,121)@2
    aip1E_6NA_uid122_atan2Test_q <= redist9_aip1E_uid107_atan2Test_b_1_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_6sumAHighB_uid123_atan2Test(ADDSUB,122)@2
    aip1E_6sumAHighB_uid123_atan2Test_s <= redist8_invSignOfSelectionSignal_uid113_atan2Test_q_1_q;
    aip1E_6sumAHighB_uid123_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 37 => aip1E_6NA_uid122_atan2Test_q(36)) & aip1E_6NA_uid122_atan2Test_q));
    aip1E_6sumAHighB_uid123_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 31 => cstArcTan2Mi_5_uid112_atan2Test_q(30)) & cstArcTan2Mi_5_uid112_atan2Test_q));
    aip1E_6sumAHighB_uid123_atan2Test_combproc: PROCESS (aip1E_6sumAHighB_uid123_atan2Test_a, aip1E_6sumAHighB_uid123_atan2Test_b, aip1E_6sumAHighB_uid123_atan2Test_s)
    BEGIN
        IF (aip1E_6sumAHighB_uid123_atan2Test_s = "1") THEN
            aip1E_6sumAHighB_uid123_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6sumAHighB_uid123_atan2Test_a) + SIGNED(aip1E_6sumAHighB_uid123_atan2Test_b));
        ELSE
            aip1E_6sumAHighB_uid123_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6sumAHighB_uid123_atan2Test_a) - SIGNED(aip1E_6sumAHighB_uid123_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_6sumAHighB_uid123_atan2Test_q <= aip1E_6sumAHighB_uid123_atan2Test_o(37 downto 0);

    -- aip1E_uid126_atan2Test(BITSELECT,125)@2
    aip1E_uid126_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_6sumAHighB_uid123_atan2Test_q(36 downto 0));
    aip1E_uid126_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid126_atan2Test_in(36 downto 0));

    -- aip1E_7NA_uid143_atan2Test(BITJOIN,142)@2
    aip1E_7NA_uid143_atan2Test_q <= aip1E_uid126_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_7sumAHighB_uid144_atan2Test(ADDSUB,143)@2
    aip1E_7sumAHighB_uid144_atan2Test_s <= redist7_invSignOfSelectionSignal_uid134_atan2Test_q_1_q;
    aip1E_7sumAHighB_uid144_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 39 => aip1E_7NA_uid143_atan2Test_q(38)) & aip1E_7NA_uid143_atan2Test_q));
    aip1E_7sumAHighB_uid144_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 32 => cstArcTan2Mi_6_uid133_atan2Test_q(31)) & cstArcTan2Mi_6_uid133_atan2Test_q));
    aip1E_7sumAHighB_uid144_atan2Test_combproc: PROCESS (aip1E_7sumAHighB_uid144_atan2Test_a, aip1E_7sumAHighB_uid144_atan2Test_b, aip1E_7sumAHighB_uid144_atan2Test_s)
    BEGIN
        IF (aip1E_7sumAHighB_uid144_atan2Test_s = "1") THEN
            aip1E_7sumAHighB_uid144_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_7sumAHighB_uid144_atan2Test_a) + SIGNED(aip1E_7sumAHighB_uid144_atan2Test_b));
        ELSE
            aip1E_7sumAHighB_uid144_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_7sumAHighB_uid144_atan2Test_a) - SIGNED(aip1E_7sumAHighB_uid144_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_7sumAHighB_uid144_atan2Test_q <= aip1E_7sumAHighB_uid144_atan2Test_o(39 downto 0);

    -- aip1E_uid147_atan2Test(BITSELECT,146)@2
    aip1E_uid147_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_7sumAHighB_uid144_atan2Test_q(38 downto 0));
    aip1E_uid147_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid147_atan2Test_in(38 downto 0));

    -- aip1E_8NA_uid160_atan2Test(BITJOIN,159)@2
    aip1E_8NA_uid160_atan2Test_q <= aip1E_uid147_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_8sumAHighB_uid161_atan2Test(ADDSUB,160)@2
    aip1E_8sumAHighB_uid161_atan2Test_s <= redist6_invSignOfSelectionSignal_uid155_atan2Test_q_1_q;
    aip1E_8sumAHighB_uid161_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 41 => aip1E_8NA_uid160_atan2Test_q(40)) & aip1E_8NA_uid160_atan2Test_q));
    aip1E_8sumAHighB_uid161_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 33 => cstArcTan2Mi_7_uid154_atan2Test_q(32)) & cstArcTan2Mi_7_uid154_atan2Test_q));
    aip1E_8sumAHighB_uid161_atan2Test_combproc: PROCESS (aip1E_8sumAHighB_uid161_atan2Test_a, aip1E_8sumAHighB_uid161_atan2Test_b, aip1E_8sumAHighB_uid161_atan2Test_s)
    BEGIN
        IF (aip1E_8sumAHighB_uid161_atan2Test_s = "1") THEN
            aip1E_8sumAHighB_uid161_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_8sumAHighB_uid161_atan2Test_a) + SIGNED(aip1E_8sumAHighB_uid161_atan2Test_b));
        ELSE
            aip1E_8sumAHighB_uid161_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_8sumAHighB_uid161_atan2Test_a) - SIGNED(aip1E_8sumAHighB_uid161_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_8sumAHighB_uid161_atan2Test_q <= aip1E_8sumAHighB_uid161_atan2Test_o(41 downto 0);

    -- aip1E_uid164_atan2Test(BITSELECT,163)@2
    aip1E_uid164_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_8sumAHighB_uid161_atan2Test_q(40 downto 0));
    aip1E_uid164_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid164_atan2Test_in(40 downto 0));

    -- aip1E_9NA_uid177_atan2Test(BITJOIN,176)@2
    aip1E_9NA_uid177_atan2Test_q <= aip1E_uid164_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_9sumAHighB_uid178_atan2Test(ADDSUB,177)@2
    aip1E_9sumAHighB_uid178_atan2Test_s <= invSignOfSelectionSignal_uid172_atan2Test_q;
    aip1E_9sumAHighB_uid178_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 43 => aip1E_9NA_uid177_atan2Test_q(42)) & aip1E_9NA_uid177_atan2Test_q));
    aip1E_9sumAHighB_uid178_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 34 => cstArcTan2Mi_8_uid171_atan2Test_q(33)) & cstArcTan2Mi_8_uid171_atan2Test_q));
    aip1E_9sumAHighB_uid178_atan2Test_combproc: PROCESS (aip1E_9sumAHighB_uid178_atan2Test_a, aip1E_9sumAHighB_uid178_atan2Test_b, aip1E_9sumAHighB_uid178_atan2Test_s)
    BEGIN
        IF (aip1E_9sumAHighB_uid178_atan2Test_s = "1") THEN
            aip1E_9sumAHighB_uid178_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_9sumAHighB_uid178_atan2Test_a) + SIGNED(aip1E_9sumAHighB_uid178_atan2Test_b));
        ELSE
            aip1E_9sumAHighB_uid178_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_9sumAHighB_uid178_atan2Test_a) - SIGNED(aip1E_9sumAHighB_uid178_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_9sumAHighB_uid178_atan2Test_q <= aip1E_9sumAHighB_uid178_atan2Test_o(43 downto 0);

    -- aip1E_uid181_atan2Test(BITSELECT,180)@2
    aip1E_uid181_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_9sumAHighB_uid178_atan2Test_q(42 downto 0));
    aip1E_uid181_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid181_atan2Test_in(42 downto 0));

    -- aip1E_10NA_uid194_atan2Test(BITJOIN,193)@2
    aip1E_10NA_uid194_atan2Test_q <= aip1E_uid181_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_10sumAHighB_uid195_atan2Test(ADDSUB,194)@2
    aip1E_10sumAHighB_uid195_atan2Test_s <= invSignOfSelectionSignal_uid189_atan2Test_q;
    aip1E_10sumAHighB_uid195_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 45 => aip1E_10NA_uid194_atan2Test_q(44)) & aip1E_10NA_uid194_atan2Test_q));
    aip1E_10sumAHighB_uid195_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 35 => cstArcTan2Mi_9_uid188_atan2Test_q(34)) & cstArcTan2Mi_9_uid188_atan2Test_q));
    aip1E_10sumAHighB_uid195_atan2Test_combproc: PROCESS (aip1E_10sumAHighB_uid195_atan2Test_a, aip1E_10sumAHighB_uid195_atan2Test_b, aip1E_10sumAHighB_uid195_atan2Test_s)
    BEGIN
        IF (aip1E_10sumAHighB_uid195_atan2Test_s = "1") THEN
            aip1E_10sumAHighB_uid195_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_10sumAHighB_uid195_atan2Test_a) + SIGNED(aip1E_10sumAHighB_uid195_atan2Test_b));
        ELSE
            aip1E_10sumAHighB_uid195_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_10sumAHighB_uid195_atan2Test_a) - SIGNED(aip1E_10sumAHighB_uid195_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_10sumAHighB_uid195_atan2Test_q <= aip1E_10sumAHighB_uid195_atan2Test_o(45 downto 0);

    -- aip1E_uid198_atan2Test(BITSELECT,197)@2
    aip1E_uid198_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_10sumAHighB_uid195_atan2Test_q(44 downto 0));
    aip1E_uid198_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid198_atan2Test_in(44 downto 0));

    -- aip1E_11NA_uid211_atan2Test(BITJOIN,210)@2
    aip1E_11NA_uid211_atan2Test_q <= aip1E_uid198_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_11sumAHighB_uid212_atan2Test(ADDSUB,211)@2
    aip1E_11sumAHighB_uid212_atan2Test_s <= invSignOfSelectionSignal_uid206_atan2Test_q;
    aip1E_11sumAHighB_uid212_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => aip1E_11NA_uid211_atan2Test_q(46)) & aip1E_11NA_uid211_atan2Test_q));
    aip1E_11sumAHighB_uid212_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 36 => cstArcTan2Mi_10_uid205_atan2Test_q(35)) & cstArcTan2Mi_10_uid205_atan2Test_q));
    aip1E_11sumAHighB_uid212_atan2Test_combproc: PROCESS (aip1E_11sumAHighB_uid212_atan2Test_a, aip1E_11sumAHighB_uid212_atan2Test_b, aip1E_11sumAHighB_uid212_atan2Test_s)
    BEGIN
        IF (aip1E_11sumAHighB_uid212_atan2Test_s = "1") THEN
            aip1E_11sumAHighB_uid212_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_11sumAHighB_uid212_atan2Test_a) + SIGNED(aip1E_11sumAHighB_uid212_atan2Test_b));
        ELSE
            aip1E_11sumAHighB_uid212_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_11sumAHighB_uid212_atan2Test_a) - SIGNED(aip1E_11sumAHighB_uid212_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_11sumAHighB_uid212_atan2Test_q <= aip1E_11sumAHighB_uid212_atan2Test_o(47 downto 0);

    -- aip1E_uid215_atan2Test(BITSELECT,214)@2
    aip1E_uid215_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_11sumAHighB_uid212_atan2Test_q(46 downto 0));
    aip1E_uid215_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid215_atan2Test_in(46 downto 0));

    -- aip1E_12NA_uid228_atan2Test(BITJOIN,227)@2
    aip1E_12NA_uid228_atan2Test_q <= aip1E_uid215_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_12sumAHighB_uid229_atan2Test(ADDSUB,228)@2
    aip1E_12sumAHighB_uid229_atan2Test_s <= invSignOfSelectionSignal_uid223_atan2Test_q;
    aip1E_12sumAHighB_uid229_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 49 => aip1E_12NA_uid228_atan2Test_q(48)) & aip1E_12NA_uid228_atan2Test_q));
    aip1E_12sumAHighB_uid229_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 37 => cstArcTan2Mi_11_uid222_atan2Test_q(36)) & cstArcTan2Mi_11_uid222_atan2Test_q));
    aip1E_12sumAHighB_uid229_atan2Test_combproc: PROCESS (aip1E_12sumAHighB_uid229_atan2Test_a, aip1E_12sumAHighB_uid229_atan2Test_b, aip1E_12sumAHighB_uid229_atan2Test_s)
    BEGIN
        IF (aip1E_12sumAHighB_uid229_atan2Test_s = "1") THEN
            aip1E_12sumAHighB_uid229_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_12sumAHighB_uid229_atan2Test_a) + SIGNED(aip1E_12sumAHighB_uid229_atan2Test_b));
        ELSE
            aip1E_12sumAHighB_uid229_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_12sumAHighB_uid229_atan2Test_a) - SIGNED(aip1E_12sumAHighB_uid229_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_12sumAHighB_uid229_atan2Test_q <= aip1E_12sumAHighB_uid229_atan2Test_o(49 downto 0);

    -- aip1E_uid232_atan2Test(BITSELECT,231)@2
    aip1E_uid232_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_12sumAHighB_uid229_atan2Test_q(48 downto 0));
    aip1E_uid232_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid232_atan2Test_in(48 downto 0));

    -- redist3_aip1E_uid232_atan2Test_b_1(DELAY,332)
    redist3_aip1E_uid232_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 49, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid232_atan2Test_b, xout => redist3_aip1E_uid232_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- aip1E_13NA_uid245_atan2Test(BITJOIN,244)@3
    aip1E_13NA_uid245_atan2Test_q <= redist3_aip1E_uid232_atan2Test_b_1_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_13sumAHighB_uid246_atan2Test(ADDSUB,245)@3
    aip1E_13sumAHighB_uid246_atan2Test_s <= redist2_invSignOfSelectionSignal_uid240_atan2Test_q_1_q;
    aip1E_13sumAHighB_uid246_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => aip1E_13NA_uid245_atan2Test_q(50)) & aip1E_13NA_uid245_atan2Test_q));
    aip1E_13sumAHighB_uid246_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 38 => cstArcTan2Mi_12_uid239_atan2Test_q(37)) & cstArcTan2Mi_12_uid239_atan2Test_q));
    aip1E_13sumAHighB_uid246_atan2Test_combproc: PROCESS (aip1E_13sumAHighB_uid246_atan2Test_a, aip1E_13sumAHighB_uid246_atan2Test_b, aip1E_13sumAHighB_uid246_atan2Test_s)
    BEGIN
        IF (aip1E_13sumAHighB_uid246_atan2Test_s = "1") THEN
            aip1E_13sumAHighB_uid246_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_13sumAHighB_uid246_atan2Test_a) + SIGNED(aip1E_13sumAHighB_uid246_atan2Test_b));
        ELSE
            aip1E_13sumAHighB_uid246_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_13sumAHighB_uid246_atan2Test_a) - SIGNED(aip1E_13sumAHighB_uid246_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_13sumAHighB_uid246_atan2Test_q <= aip1E_13sumAHighB_uid246_atan2Test_o(51 downto 0);

    -- aip1E_uid249_atan2Test(BITSELECT,248)@3
    aip1E_uid249_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_13sumAHighB_uid246_atan2Test_q(50 downto 0));
    aip1E_uid249_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid249_atan2Test_in(50 downto 0));

    -- aip1E_14NA_uid262_atan2Test(BITJOIN,261)@3
    aip1E_14NA_uid262_atan2Test_q <= aip1E_uid249_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_14sumAHighB_uid263_atan2Test(ADDSUB,262)@3
    aip1E_14sumAHighB_uid263_atan2Test_s <= redist1_invSignOfSelectionSignal_uid257_atan2Test_q_1_q;
    aip1E_14sumAHighB_uid263_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 53 => aip1E_14NA_uid262_atan2Test_q(52)) & aip1E_14NA_uid262_atan2Test_q));
    aip1E_14sumAHighB_uid263_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 39 => cstArcTan2Mi_13_uid256_atan2Test_q(38)) & cstArcTan2Mi_13_uid256_atan2Test_q));
    aip1E_14sumAHighB_uid263_atan2Test_combproc: PROCESS (aip1E_14sumAHighB_uid263_atan2Test_a, aip1E_14sumAHighB_uid263_atan2Test_b, aip1E_14sumAHighB_uid263_atan2Test_s)
    BEGIN
        IF (aip1E_14sumAHighB_uid263_atan2Test_s = "1") THEN
            aip1E_14sumAHighB_uid263_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_14sumAHighB_uid263_atan2Test_a) + SIGNED(aip1E_14sumAHighB_uid263_atan2Test_b));
        ELSE
            aip1E_14sumAHighB_uid263_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_14sumAHighB_uid263_atan2Test_a) - SIGNED(aip1E_14sumAHighB_uid263_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_14sumAHighB_uid263_atan2Test_q <= aip1E_14sumAHighB_uid263_atan2Test_o(53 downto 0);

    -- aip1E_uid266_atan2Test(BITSELECT,265)@3
    aip1E_uid266_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_14sumAHighB_uid263_atan2Test_q(52 downto 0));
    aip1E_uid266_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid266_atan2Test_in(52 downto 0));

    -- aip1E_15NA_uid279_atan2Test(BITJOIN,278)@3
    aip1E_15NA_uid279_atan2Test_q <= aip1E_uid266_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_15sumAHighB_uid280_atan2Test(ADDSUB,279)@3
    aip1E_15sumAHighB_uid280_atan2Test_s <= invSignOfSelectionSignal_uid277_atan2Test_q;
    aip1E_15sumAHighB_uid280_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((56 downto 55 => aip1E_15NA_uid279_atan2Test_q(54)) & aip1E_15NA_uid279_atan2Test_q));
    aip1E_15sumAHighB_uid280_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((56 downto 40 => cstArcTan2Mi_14_uid273_atan2Test_q(39)) & cstArcTan2Mi_14_uid273_atan2Test_q));
    aip1E_15sumAHighB_uid280_atan2Test_combproc: PROCESS (aip1E_15sumAHighB_uid280_atan2Test_a, aip1E_15sumAHighB_uid280_atan2Test_b, aip1E_15sumAHighB_uid280_atan2Test_s)
    BEGIN
        IF (aip1E_15sumAHighB_uid280_atan2Test_s = "1") THEN
            aip1E_15sumAHighB_uid280_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_15sumAHighB_uid280_atan2Test_a) + SIGNED(aip1E_15sumAHighB_uid280_atan2Test_b));
        ELSE
            aip1E_15sumAHighB_uid280_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_15sumAHighB_uid280_atan2Test_a) - SIGNED(aip1E_15sumAHighB_uid280_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_15sumAHighB_uid280_atan2Test_q <= aip1E_15sumAHighB_uid280_atan2Test_o(55 downto 0);

    -- aip1E_uid283_atan2Test(BITSELECT,282)@3
    aip1E_uid283_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_15sumAHighB_uid280_atan2Test_q(54 downto 0));
    aip1E_uid283_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid283_atan2Test_in(54 downto 0));

    -- aip1E_16NA_uid296_atan2Test(BITJOIN,295)@3
    aip1E_16NA_uid296_atan2Test_q <= aip1E_uid283_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_16sumAHighB_uid297_atan2Test(ADDSUB,296)@3
    aip1E_16sumAHighB_uid297_atan2Test_s <= invSignOfSelectionSignal_uid294_atan2Test_q;
    aip1E_16sumAHighB_uid297_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((58 downto 57 => aip1E_16NA_uid296_atan2Test_q(56)) & aip1E_16NA_uid296_atan2Test_q));
    aip1E_16sumAHighB_uid297_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((58 downto 41 => cstArcTan2Mi_15_uid290_atan2Test_q(40)) & cstArcTan2Mi_15_uid290_atan2Test_q));
    aip1E_16sumAHighB_uid297_atan2Test_combproc: PROCESS (aip1E_16sumAHighB_uid297_atan2Test_a, aip1E_16sumAHighB_uid297_atan2Test_b, aip1E_16sumAHighB_uid297_atan2Test_s)
    BEGIN
        IF (aip1E_16sumAHighB_uid297_atan2Test_s = "1") THEN
            aip1E_16sumAHighB_uid297_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_16sumAHighB_uid297_atan2Test_a) + SIGNED(aip1E_16sumAHighB_uid297_atan2Test_b));
        ELSE
            aip1E_16sumAHighB_uid297_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_16sumAHighB_uid297_atan2Test_a) - SIGNED(aip1E_16sumAHighB_uid297_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_16sumAHighB_uid297_atan2Test_q <= aip1E_16sumAHighB_uid297_atan2Test_o(57 downto 0);

    -- aip1E_uid300_atan2Test(BITSELECT,299)@3
    aip1E_uid300_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_16sumAHighB_uid297_atan2Test_q(56 downto 0));
    aip1E_uid300_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid300_atan2Test_in(56 downto 0));

    -- alphaPreRnd_uid301_atan2Test(BITSELECT,300)@3
    alphaPreRnd_uid301_atan2Test_b <= aip1E_uid300_atan2Test_b(56 downto 40);

    -- lowRangeA_uid305_atan2Test_merged_bit_select(BITSELECT,328)@3
    lowRangeA_uid305_atan2Test_merged_bit_select_b <= alphaPreRnd_uid301_atan2Test_b(0 downto 0);
    lowRangeA_uid305_atan2Test_merged_bit_select_c <= alphaPreRnd_uid301_atan2Test_b(16 downto 1);

    -- alphaPostRnd_uid308_atan2Test(BITJOIN,307)@3
    alphaPostRnd_uid308_atan2Test_q <= alphaPostRndhigh_uid307_atan2Test_q & lowRangeA_uid305_atan2Test_merged_bit_select_b;

    -- atanRes_uid309_atan2Test(BITSELECT,308)@3
    atanRes_uid309_atan2Test_in <= alphaPostRnd_uid308_atan2Test_q(16 downto 0);
    atanRes_uid309_atan2Test_b <= atanRes_uid309_atan2Test_in(16 downto 0);

    -- xNotZero_uid17_atan2Test(LOGICAL,16)@0 + 1
    xNotZero_uid17_atan2Test_qi <= "1" WHEN x /= "0000000000000000" ELSE "0";
    xNotZero_uid17_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xNotZero_uid17_atan2Test_qi, xout => xNotZero_uid17_atan2Test_q, ena => en(0), clk => clk, aclr => areset );

    -- redist10_xNotZero_uid17_atan2Test_q_3(DELAY,339)
    redist10_xNotZero_uid17_atan2Test_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xNotZero_uid17_atan2Test_q, xout => redist10_xNotZero_uid17_atan2Test_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- xZero_uid18_atan2Test(LOGICAL,17)@3
    xZero_uid18_atan2Test_q <= not (redist10_xNotZero_uid17_atan2Test_q_3_q);

    -- yNotZero_uid15_atan2Test(LOGICAL,14)@0 + 1
    yNotZero_uid15_atan2Test_qi <= "1" WHEN y /= "0000000000000000" ELSE "0";
    yNotZero_uid15_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yNotZero_uid15_atan2Test_qi, xout => yNotZero_uid15_atan2Test_q, ena => en(0), clk => clk, aclr => areset );

    -- redist11_yNotZero_uid15_atan2Test_q_3(DELAY,340)
    redist11_yNotZero_uid15_atan2Test_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yNotZero_uid15_atan2Test_q, xout => redist11_yNotZero_uid15_atan2Test_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- yZero_uid16_atan2Test(LOGICAL,15)@3
    yZero_uid16_atan2Test_q <= not (redist11_yNotZero_uid15_atan2Test_q_3_q);

    -- concXZeroYZero_uid316_atan2Test(BITJOIN,315)@3
    concXZeroYZero_uid316_atan2Test_q <= xZero_uid18_atan2Test_q & yZero_uid16_atan2Test_q;

    -- atanResPostExc_uid317_atan2Test(MUX,316)@3
    atanResPostExc_uid317_atan2Test_s <= concXZeroYZero_uid316_atan2Test_q;
    atanResPostExc_uid317_atan2Test_combproc: PROCESS (atanResPostExc_uid317_atan2Test_s, en, atanRes_uid309_atan2Test_b, cstZeroOutFormat_uid310_atan2Test_q, constPio2P2u_mergedSignalTM_uid314_atan2Test_q)
    BEGIN
        CASE (atanResPostExc_uid317_atan2Test_s) IS
            WHEN "00" => atanResPostExc_uid317_atan2Test_q <= atanRes_uid309_atan2Test_b;
            WHEN "01" => atanResPostExc_uid317_atan2Test_q <= cstZeroOutFormat_uid310_atan2Test_q;
            WHEN "10" => atanResPostExc_uid317_atan2Test_q <= constPio2P2u_mergedSignalTM_uid314_atan2Test_q;
            WHEN "11" => atanResPostExc_uid317_atan2Test_q <= cstZeroOutFormat_uid310_atan2Test_q;
            WHEN OTHERS => atanResPostExc_uid317_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid321_atan2Test(CONSTANT,320)
    constantZeroOutFormat_uid321_atan2Test_q <= "00000000000000000";

    -- redist15_signX_uid7_atan2Test_b_3(DELAY,344)
    redist15_signX_uid7_atan2Test_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_atan2Test_b, xout => redist15_signX_uid7_atan2Test_b_3_q, ena => en(0), clk => clk, aclr => areset );

    -- redist14_signY_uid8_atan2Test_b_3(DELAY,343)
    redist14_signY_uid8_atan2Test_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => signY_uid8_atan2Test_b, xout => redist14_signY_uid8_atan2Test_b_3_q, ena => en(0), clk => clk, aclr => areset );

    -- concSigns_uid318_atan2Test(BITJOIN,317)@3
    concSigns_uid318_atan2Test_q <= redist15_signX_uid7_atan2Test_b_3_q & redist14_signY_uid8_atan2Test_b_3_q;

    -- secondOperand_uid325_atan2Test(MUX,324)@3
    secondOperand_uid325_atan2Test_s <= concSigns_uid318_atan2Test_q;
    secondOperand_uid325_atan2Test_combproc: PROCESS (secondOperand_uid325_atan2Test_s, en, constantZeroOutFormat_uid321_atan2Test_q, atanResPostExc_uid317_atan2Test_q, constPi_uid320_atan2Test_q)
    BEGIN
        CASE (secondOperand_uid325_atan2Test_s) IS
            WHEN "00" => secondOperand_uid325_atan2Test_q <= constantZeroOutFormat_uid321_atan2Test_q;
            WHEN "01" => secondOperand_uid325_atan2Test_q <= atanResPostExc_uid317_atan2Test_q;
            WHEN "10" => secondOperand_uid325_atan2Test_q <= atanResPostExc_uid317_atan2Test_q;
            WHEN "11" => secondOperand_uid325_atan2Test_q <= constPi_uid320_atan2Test_q;
            WHEN OTHERS => secondOperand_uid325_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid319_atan2Test(CONSTANT,318)
    constPiP2u_uid319_atan2Test_q <= "11001001000100011";

    -- constantZeroOutFormatP2u_uid322_atan2Test(CONSTANT,321)
    constantZeroOutFormatP2u_uid322_atan2Test_q <= "00000000000000100";

    -- firstOperand_uid324_atan2Test(MUX,323)@3
    firstOperand_uid324_atan2Test_s <= concSigns_uid318_atan2Test_q;
    firstOperand_uid324_atan2Test_combproc: PROCESS (firstOperand_uid324_atan2Test_s, en, atanResPostExc_uid317_atan2Test_q, constantZeroOutFormatP2u_uid322_atan2Test_q, constPiP2u_uid319_atan2Test_q)
    BEGIN
        CASE (firstOperand_uid324_atan2Test_s) IS
            WHEN "00" => firstOperand_uid324_atan2Test_q <= atanResPostExc_uid317_atan2Test_q;
            WHEN "01" => firstOperand_uid324_atan2Test_q <= constantZeroOutFormatP2u_uid322_atan2Test_q;
            WHEN "10" => firstOperand_uid324_atan2Test_q <= constPiP2u_uid319_atan2Test_q;
            WHEN "11" => firstOperand_uid324_atan2Test_q <= atanResPostExc_uid317_atan2Test_q;
            WHEN OTHERS => firstOperand_uid324_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid326_atan2Test(SUB,325)@3
    outResExtended_uid326_atan2Test_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid324_atan2Test_q);
    outResExtended_uid326_atan2Test_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid325_atan2Test_q);
    outResExtended_uid326_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid326_atan2Test_a) - UNSIGNED(outResExtended_uid326_atan2Test_b));
    outResExtended_uid326_atan2Test_q <= outResExtended_uid326_atan2Test_o(17 downto 0);

    -- atanResPostRR_uid327_atan2Test(BITSELECT,326)@3
    atanResPostRR_uid327_atan2Test_b <= STD_LOGIC_VECTOR(outResExtended_uid326_atan2Test_q(17 downto 2));

    -- xOut(GPOUT,4)@3
    q <= atanResPostRR_uid327_atan2Test_b;

END normal;
