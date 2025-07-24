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

-- VHDL created from vector_translate_CORDIC_0
-- VHDL created on Wed Jul 16 16:12:02 2025


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

entity vector_translate_CORDIC_0 is
    port (
        x : in std_logic_vector(14 downto 0);  -- sfix15
        y : in std_logic_vector(14 downto 0);  -- sfix15
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(15 downto 0);  -- sfix16_en13
        r : out std_logic_vector(15 downto 0);  -- ufix16
        clk : in std_logic;
        areset : in std_logic
    );
end vector_translate_CORDIC_0;

architecture normal of vector_translate_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_vecTranslateTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal signX_uid7_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_vecTranslateTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal absXE_uid10_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal absXE_uid10_vecTranslateTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal absXE_uid10_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal invSignY_uid11_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_vecTranslateTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal absYE_uid12_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal absYE_uid12_vecTranslateTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal absYE_uid12_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal absX_uid13_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal absX_uid13_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal absY_uid14_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal absY_uid14_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yNotZero_uid15_vecTranslateTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotZero_uid15_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_vecTranslateTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid32_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2NA_uid39_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_a : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_o : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2NA_uid42_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_2_uid48_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_2_uid48_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid49_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid49_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid51_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_3NA_uid58_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_a : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_o : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3NA_uid61_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_3_uid67_vecTranslateTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_3_uid67_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_3_uid68_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_3_uid68_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid70_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_4NA_uid77_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_4NA_uid80_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_4_uid86_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_4_uid86_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_4_uid87_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_4_uid87_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid89_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid94_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_5NA_uid96_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_a : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_o : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_5NA_uid99_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_5_uid105_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_5_uid105_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_5_uid106_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_5_uid106_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid108_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid113_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_6NA_uid115_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_a : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_o : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_6NA_uid118_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_6_uid124_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_6_uid124_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_6_uid125_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_6_uid125_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid127_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid131_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid132_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal invSignOfSelectionSignal_uid134_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7NA_uid136_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_7sumAHighB_uid137_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_7sumAHighB_uid137_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid137_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_7NA_uid139_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_7sumAHighB_uid140_vecTranslateTest_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_vecTranslateTest_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_7sumAHighB_uid140_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid140_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_7_uid145_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_7_uid145_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_7_uid146_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_7_uid146_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid148_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid152_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid153_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal invSignOfSelectionSignal_uid155_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid156_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_8_uid156_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid156_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8_uid157_vecTranslateTest_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_vecTranslateTest_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_8_uid157_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8_uid157_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_8_uid162_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_8_uid162_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_8_uid163_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_8_uid163_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid165_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid169_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid170_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal invSignOfSelectionSignal_uid172_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid173_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_9_uid173_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid173_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_9_uid174_vecTranslateTest_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_vecTranslateTest_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_9_uid174_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid174_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_9_uid179_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_9_uid179_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_9_uid180_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_9_uid180_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid182_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid186_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid187_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignOfSelectionSignal_uid189_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid190_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_10_uid190_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid190_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_10_uid191_vecTranslateTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_vecTranslateTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_10_uid191_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid191_vecTranslateTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_10_uid196_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_10_uid196_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_10_uid197_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_10_uid197_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid199_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid203_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid204_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal invSignOfSelectionSignal_uid206_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid207_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_11_uid207_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid207_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_11_uid208_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid208_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid208_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_11_uid213_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_11_uid213_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_11_uid214_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_11_uid214_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid216_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid220_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiYip_uid221_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal invSignOfSelectionSignal_uid223_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid224_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_12_uid224_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid224_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_12_uid225_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_12_uid225_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid225_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_12_uid230_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_12_uid230_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_12_uid231_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_12_uid231_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid233_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid237_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal twoToMiSiYip_uid238_vecTranslateTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal invSignOfSelectionSignal_uid240_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid241_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_13_uid241_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid241_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_13_uid242_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_13_uid242_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid242_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_13_uid247_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_13_uid247_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_13_uid248_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_13_uid248_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid250_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid254_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiYip_uid255_vecTranslateTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal invSignOfSelectionSignal_uid257_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid258_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_14_uid258_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid258_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_14_uid259_vecTranslateTest_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_vecTranslateTest_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_14_uid259_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid259_vecTranslateTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_14_uid264_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_14_uid264_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_14_uid265_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_14_uid265_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid267_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid271_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal twoToMiSiYip_uid272_vecTranslateTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal invSignOfSelectionSignal_uid274_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid275_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_15_uid275_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_15_uid275_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_15_uid275_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid275_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_15_uid276_vecTranslateTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_vecTranslateTest_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_15_uid276_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid276_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_15_uid281_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_15_uid281_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1_15_uid282_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_15_uid282_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid284_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid289_vecTranslateTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal invSignOfSelectionSignal_uid291_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid292_vecTranslateTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_16_uid292_vecTranslateTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_16_uid292_vecTranslateTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal xip1E_16_uid292_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid292_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_16_uid298_vecTranslateTest_in : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1_16_uid298_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal concSignVector_uid301_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal table_l5_uid303_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid304_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal os_uid305_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal table_l11_uid308_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid309_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal os_uid310_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal table_l15_uid313_vecTranslateTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal lev1_a0_uid316_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a0_uid316_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a0_uid316_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a0_uid316_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal lev2_a0_uid317_vecTranslateTest_a : STD_LOGIC_VECTOR (21 downto 0);
    signal lev2_a0_uid317_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal lev2_a0_uid317_vecTranslateTest_o : STD_LOGIC_VECTOR (21 downto 0);
    signal lev2_a0_uid317_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal atanRes_uid318_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal atanRes_uid318_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal cstZeroOutFormat_uid319_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constPiP2uE_uid320_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal constPio2P2u_mergedSignalTM_uid323_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal concXZeroYZero_uid325_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid326_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid326_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal concSigns_uid327_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal constPiP2u_uid328_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constPi_uid329_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constantZeroOutFormat_uid330_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal constantZeroOutFormatP2u_uid331_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal firstOperand_uid333_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid333_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal secondOperand_uid334_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid334_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal outResExtended_uid335_vecTranslateTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid335_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid335_vecTranslateTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal outResExtended_uid335_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal atanResPostRR_uid336_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal outMagPreRnd_uid338_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal outMagPostRnd_uid341_vecTranslateTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal outMagPostRnd_uid341_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal outMagPostRnd_uid341_vecTranslateTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal outMagPostRnd_uid341_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal outMag_uid342_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal outMag_uid342_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal is0_uid302_vecTranslateTest_merged_bit_select_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is0_uid302_vecTranslateTest_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal is0_uid302_vecTranslateTest_merged_bit_select_d : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_yip1_11_uid214_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist1_xip1_11_uid213_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist2_xMSB_uid199_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_xMSB_uid182_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_xMSB_uid165_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_xMSB_uid148_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_xMSB_uid127_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_xMSB_uid108_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_xMSB_uid89_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_yip1_4_uid87_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist10_xip1_4_uid86_vecTranslateTest_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist11_xMSB_uid70_vecTranslateTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_xMSB_uid51_vecTranslateTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_xMSB_uid32_vecTranslateTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_xNotZero_uid17_vecTranslateTest_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_yNotZero_uid15_vecTranslateTest_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_signY_uid8_vecTranslateTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_signX_uid7_vecTranslateTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xMSB_uid267_vecTranslateTest(BITSELECT,266)@2
    xMSB_uid267_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid265_vecTranslateTest_b(20 downto 20));

    -- xMSB_uid233_vecTranslateTest(BITSELECT,232)@2
    xMSB_uid233_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid231_vecTranslateTest_b(22 downto 22));

    -- xMSB_uid199_vecTranslateTest(BITSELECT,198)@1
    xMSB_uid199_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid197_vecTranslateTest_b(24 downto 24));

    -- xMSB_uid165_vecTranslateTest(BITSELECT,164)@1
    xMSB_uid165_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid163_vecTranslateTest_b(26 downto 26));

    -- signX_uid7_vecTranslateTest(BITSELECT,6)@0
    signX_uid7_vecTranslateTest_b <= STD_LOGIC_VECTOR(x(14 downto 14));

    -- invSignX_uid9_vecTranslateTest(LOGICAL,8)@0
    invSignX_uid9_vecTranslateTest_q <= not (signX_uid7_vecTranslateTest_b);

    -- constantZero_uid6_vecTranslateTest(CONSTANT,5)
    constantZero_uid6_vecTranslateTest_q <= "000000000000000";

    -- absXE_uid10_vecTranslateTest(ADDSUB,9)@0
    absXE_uid10_vecTranslateTest_s <= invSignX_uid9_vecTranslateTest_q;
    absXE_uid10_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => constantZero_uid6_vecTranslateTest_q(14)) & constantZero_uid6_vecTranslateTest_q));
    absXE_uid10_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => x(14)) & x));
    absXE_uid10_vecTranslateTest_combproc: PROCESS (absXE_uid10_vecTranslateTest_a, absXE_uid10_vecTranslateTest_b, absXE_uid10_vecTranslateTest_s)
    BEGIN
        IF (absXE_uid10_vecTranslateTest_s = "1") THEN
            absXE_uid10_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_vecTranslateTest_a) + SIGNED(absXE_uid10_vecTranslateTest_b));
        ELSE
            absXE_uid10_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_vecTranslateTest_a) - SIGNED(absXE_uid10_vecTranslateTest_b));
        END IF;
    END PROCESS;
    absXE_uid10_vecTranslateTest_q <= absXE_uid10_vecTranslateTest_o(15 downto 0);

    -- absX_uid13_vecTranslateTest(BITSELECT,12)@0
    absX_uid13_vecTranslateTest_in <= absXE_uid10_vecTranslateTest_q(14 downto 0);
    absX_uid13_vecTranslateTest_b <= absX_uid13_vecTranslateTest_in(14 downto 0);

    -- signY_uid8_vecTranslateTest(BITSELECT,7)@0
    signY_uid8_vecTranslateTest_b <= STD_LOGIC_VECTOR(y(14 downto 14));

    -- invSignY_uid11_vecTranslateTest(LOGICAL,10)@0
    invSignY_uid11_vecTranslateTest_q <= not (signY_uid8_vecTranslateTest_b);

    -- absYE_uid12_vecTranslateTest(ADDSUB,11)@0
    absYE_uid12_vecTranslateTest_s <= invSignY_uid11_vecTranslateTest_q;
    absYE_uid12_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => constantZero_uid6_vecTranslateTest_q(14)) & constantZero_uid6_vecTranslateTest_q));
    absYE_uid12_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => y(14)) & y));
    absYE_uid12_vecTranslateTest_combproc: PROCESS (absYE_uid12_vecTranslateTest_a, absYE_uid12_vecTranslateTest_b, absYE_uid12_vecTranslateTest_s)
    BEGIN
        IF (absYE_uid12_vecTranslateTest_s = "1") THEN
            absYE_uid12_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_vecTranslateTest_a) + SIGNED(absYE_uid12_vecTranslateTest_b));
        ELSE
            absYE_uid12_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_vecTranslateTest_a) - SIGNED(absYE_uid12_vecTranslateTest_b));
        END IF;
    END PROCESS;
    absYE_uid12_vecTranslateTest_q <= absYE_uid12_vecTranslateTest_o(15 downto 0);

    -- absY_uid14_vecTranslateTest(BITSELECT,13)@0
    absY_uid14_vecTranslateTest_in <= absYE_uid12_vecTranslateTest_q(14 downto 0);
    absY_uid14_vecTranslateTest_b <= absY_uid14_vecTranslateTest_in(14 downto 0);

    -- yip1E_1_uid24_vecTranslateTest(SUB,23)@0
    yip1E_1_uid24_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & absY_uid14_vecTranslateTest_b);
    yip1E_1_uid24_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & absX_uid13_vecTranslateTest_b);
    yip1E_1_uid24_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid24_vecTranslateTest_a) - UNSIGNED(yip1E_1_uid24_vecTranslateTest_b));
    yip1E_1_uid24_vecTranslateTest_q <= yip1E_1_uid24_vecTranslateTest_o(15 downto 0);

    -- xMSB_uid32_vecTranslateTest(BITSELECT,31)@0
    xMSB_uid32_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1E_1_uid24_vecTranslateTest_q(15 downto 15));

    -- xip1E_1_uid23_vecTranslateTest(ADD,22)@0
    xip1E_1_uid23_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & absX_uid13_vecTranslateTest_b);
    xip1E_1_uid23_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & absY_uid14_vecTranslateTest_b);
    xip1E_1_uid23_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid23_vecTranslateTest_a) + UNSIGNED(xip1E_1_uid23_vecTranslateTest_b));
    xip1E_1_uid23_vecTranslateTest_q <= xip1E_1_uid23_vecTranslateTest_o(15 downto 0);

    -- yip1E_2NA_uid42_vecTranslateTest(BITJOIN,41)@0
    yip1E_2NA_uid42_vecTranslateTest_q <= yip1E_1_uid24_vecTranslateTest_q & GND_q;

    -- yip1E_2sumAHighB_uid43_vecTranslateTest(ADDSUB,42)@0
    yip1E_2sumAHighB_uid43_vecTranslateTest_s <= xMSB_uid32_vecTranslateTest_b;
    yip1E_2sumAHighB_uid43_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1E_2NA_uid42_vecTranslateTest_q(16)) & yip1E_2NA_uid42_vecTranslateTest_q));
    yip1E_2sumAHighB_uid43_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_1_uid23_vecTranslateTest_q));
    yip1E_2sumAHighB_uid43_vecTranslateTest_combproc: PROCESS (yip1E_2sumAHighB_uid43_vecTranslateTest_a, yip1E_2sumAHighB_uid43_vecTranslateTest_b, yip1E_2sumAHighB_uid43_vecTranslateTest_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid43_vecTranslateTest_s = "1") THEN
            yip1E_2sumAHighB_uid43_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_a) + SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_b));
        ELSE
            yip1E_2sumAHighB_uid43_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_a) - SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid43_vecTranslateTest_q <= yip1E_2sumAHighB_uid43_vecTranslateTest_o(17 downto 0);

    -- yip1_2_uid49_vecTranslateTest(BITSELECT,48)@0
    yip1_2_uid49_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid43_vecTranslateTest_q(16 downto 0));
    yip1_2_uid49_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_2_uid49_vecTranslateTest_in(16 downto 0));

    -- xMSB_uid51_vecTranslateTest(BITSELECT,50)@0
    xMSB_uid51_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_2_uid49_vecTranslateTest_b(16 downto 16));

    -- invSignOfSelectionSignal_uid37_vecTranslateTest(LOGICAL,36)@0
    invSignOfSelectionSignal_uid37_vecTranslateTest_q <= not (xMSB_uid32_vecTranslateTest_b);

    -- xip1E_2NA_uid39_vecTranslateTest(BITJOIN,38)@0
    xip1E_2NA_uid39_vecTranslateTest_q <= xip1E_1_uid23_vecTranslateTest_q & GND_q;

    -- xip1E_2sumAHighB_uid40_vecTranslateTest(ADDSUB,39)@0
    xip1E_2sumAHighB_uid40_vecTranslateTest_s <= invSignOfSelectionSignal_uid37_vecTranslateTest_q;
    xip1E_2sumAHighB_uid40_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_2NA_uid39_vecTranslateTest_q));
    xip1E_2sumAHighB_uid40_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 16 => yip1E_1_uid24_vecTranslateTest_q(15)) & yip1E_1_uid24_vecTranslateTest_q));
    xip1E_2sumAHighB_uid40_vecTranslateTest_combproc: PROCESS (xip1E_2sumAHighB_uid40_vecTranslateTest_a, xip1E_2sumAHighB_uid40_vecTranslateTest_b, xip1E_2sumAHighB_uid40_vecTranslateTest_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid40_vecTranslateTest_s = "1") THEN
            xip1E_2sumAHighB_uid40_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_a) + SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_b));
        ELSE
            xip1E_2sumAHighB_uid40_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_a) - SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid40_vecTranslateTest_q <= xip1E_2sumAHighB_uid40_vecTranslateTest_o(18 downto 0);

    -- xip1_2_uid48_vecTranslateTest(BITSELECT,47)@0
    xip1_2_uid48_vecTranslateTest_in <= xip1E_2sumAHighB_uid40_vecTranslateTest_q(16 downto 0);
    xip1_2_uid48_vecTranslateTest_b <= xip1_2_uid48_vecTranslateTest_in(16 downto 0);

    -- xip1E_3CostZeroPaddingA_uid57_vecTranslateTest(CONSTANT,56)
    xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q <= "00";

    -- yip1E_3NA_uid61_vecTranslateTest(BITJOIN,60)@0
    yip1E_3NA_uid61_vecTranslateTest_q <= yip1_2_uid49_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- yip1E_3sumAHighB_uid62_vecTranslateTest(ADDSUB,61)@0
    yip1E_3sumAHighB_uid62_vecTranslateTest_s <= xMSB_uid51_vecTranslateTest_b;
    yip1E_3sumAHighB_uid62_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1E_3NA_uid61_vecTranslateTest_q(18)) & yip1E_3NA_uid61_vecTranslateTest_q));
    yip1E_3sumAHighB_uid62_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_2_uid48_vecTranslateTest_b));
    yip1E_3sumAHighB_uid62_vecTranslateTest_combproc: PROCESS (yip1E_3sumAHighB_uid62_vecTranslateTest_a, yip1E_3sumAHighB_uid62_vecTranslateTest_b, yip1E_3sumAHighB_uid62_vecTranslateTest_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid62_vecTranslateTest_s = "1") THEN
            yip1E_3sumAHighB_uid62_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_a) + SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_b));
        ELSE
            yip1E_3sumAHighB_uid62_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_a) - SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid62_vecTranslateTest_q <= yip1E_3sumAHighB_uid62_vecTranslateTest_o(19 downto 0);

    -- yip1_3_uid68_vecTranslateTest(BITSELECT,67)@0
    yip1_3_uid68_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid62_vecTranslateTest_q(17 downto 0));
    yip1_3_uid68_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_3_uid68_vecTranslateTest_in(17 downto 0));

    -- xMSB_uid70_vecTranslateTest(BITSELECT,69)@0
    xMSB_uid70_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_3_uid68_vecTranslateTest_b(17 downto 17));

    -- invSignOfSelectionSignal_uid56_vecTranslateTest(LOGICAL,55)@0
    invSignOfSelectionSignal_uid56_vecTranslateTest_q <= not (xMSB_uid51_vecTranslateTest_b);

    -- xip1E_3NA_uid58_vecTranslateTest(BITJOIN,57)@0
    xip1E_3NA_uid58_vecTranslateTest_q <= xip1_2_uid48_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- xip1E_3sumAHighB_uid59_vecTranslateTest(ADDSUB,58)@0
    xip1E_3sumAHighB_uid59_vecTranslateTest_s <= invSignOfSelectionSignal_uid56_vecTranslateTest_q;
    xip1E_3sumAHighB_uid59_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_3NA_uid58_vecTranslateTest_q));
    xip1E_3sumAHighB_uid59_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 17 => yip1_2_uid49_vecTranslateTest_b(16)) & yip1_2_uid49_vecTranslateTest_b));
    xip1E_3sumAHighB_uid59_vecTranslateTest_combproc: PROCESS (xip1E_3sumAHighB_uid59_vecTranslateTest_a, xip1E_3sumAHighB_uid59_vecTranslateTest_b, xip1E_3sumAHighB_uid59_vecTranslateTest_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid59_vecTranslateTest_s = "1") THEN
            xip1E_3sumAHighB_uid59_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_a) + SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_b));
        ELSE
            xip1E_3sumAHighB_uid59_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_a) - SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid59_vecTranslateTest_q <= xip1E_3sumAHighB_uid59_vecTranslateTest_o(20 downto 0);

    -- xip1_3_uid67_vecTranslateTest(BITSELECT,66)@0
    xip1_3_uid67_vecTranslateTest_in <= xip1E_3sumAHighB_uid59_vecTranslateTest_q(18 downto 0);
    xip1_3_uid67_vecTranslateTest_b <= xip1_3_uid67_vecTranslateTest_in(18 downto 0);

    -- xip1E_4CostZeroPaddingA_uid76_vecTranslateTest(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q <= "000";

    -- yip1E_4NA_uid80_vecTranslateTest(BITJOIN,79)@0
    yip1E_4NA_uid80_vecTranslateTest_q <= yip1_3_uid68_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- yip1E_4sumAHighB_uid81_vecTranslateTest(ADDSUB,80)@0
    yip1E_4sumAHighB_uid81_vecTranslateTest_s <= xMSB_uid70_vecTranslateTest_b;
    yip1E_4sumAHighB_uid81_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1E_4NA_uid80_vecTranslateTest_q(20)) & yip1E_4NA_uid80_vecTranslateTest_q));
    yip1E_4sumAHighB_uid81_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_3_uid67_vecTranslateTest_b));
    yip1E_4sumAHighB_uid81_vecTranslateTest_combproc: PROCESS (yip1E_4sumAHighB_uid81_vecTranslateTest_a, yip1E_4sumAHighB_uid81_vecTranslateTest_b, yip1E_4sumAHighB_uid81_vecTranslateTest_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid81_vecTranslateTest_s = "1") THEN
            yip1E_4sumAHighB_uid81_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_a) + SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_b));
        ELSE
            yip1E_4sumAHighB_uid81_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_a) - SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid81_vecTranslateTest_q <= yip1E_4sumAHighB_uid81_vecTranslateTest_o(21 downto 0);

    -- yip1_4_uid87_vecTranslateTest(BITSELECT,86)@0
    yip1_4_uid87_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid81_vecTranslateTest_q(19 downto 0));
    yip1_4_uid87_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_4_uid87_vecTranslateTest_in(19 downto 0));

    -- redist9_yip1_4_uid87_vecTranslateTest_b_1(DELAY,353)
    redist9_yip1_4_uid87_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_4_uid87_vecTranslateTest_b, xout => redist9_yip1_4_uid87_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xMSB_uid89_vecTranslateTest(BITSELECT,88)@1
    xMSB_uid89_vecTranslateTest_b <= STD_LOGIC_VECTOR(redist9_yip1_4_uid87_vecTranslateTest_b_1_q(19 downto 19));

    -- invSignOfSelectionSignal_uid75_vecTranslateTest(LOGICAL,74)@0
    invSignOfSelectionSignal_uid75_vecTranslateTest_q <= not (xMSB_uid70_vecTranslateTest_b);

    -- xip1E_4NA_uid77_vecTranslateTest(BITJOIN,76)@0
    xip1E_4NA_uid77_vecTranslateTest_q <= xip1_3_uid67_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- xip1E_4sumAHighB_uid78_vecTranslateTest(ADDSUB,77)@0
    xip1E_4sumAHighB_uid78_vecTranslateTest_s <= invSignOfSelectionSignal_uid75_vecTranslateTest_q;
    xip1E_4sumAHighB_uid78_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_4NA_uid77_vecTranslateTest_q));
    xip1E_4sumAHighB_uid78_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 18 => yip1_3_uid68_vecTranslateTest_b(17)) & yip1_3_uid68_vecTranslateTest_b));
    xip1E_4sumAHighB_uid78_vecTranslateTest_combproc: PROCESS (xip1E_4sumAHighB_uid78_vecTranslateTest_a, xip1E_4sumAHighB_uid78_vecTranslateTest_b, xip1E_4sumAHighB_uid78_vecTranslateTest_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid78_vecTranslateTest_s = "1") THEN
            xip1E_4sumAHighB_uid78_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_a) + SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_b));
        ELSE
            xip1E_4sumAHighB_uid78_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_a) - SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid78_vecTranslateTest_q <= xip1E_4sumAHighB_uid78_vecTranslateTest_o(23 downto 0);

    -- xip1_4_uid86_vecTranslateTest(BITSELECT,85)@0
    xip1_4_uid86_vecTranslateTest_in <= xip1E_4sumAHighB_uid78_vecTranslateTest_q(21 downto 0);
    xip1_4_uid86_vecTranslateTest_b <= xip1_4_uid86_vecTranslateTest_in(21 downto 0);

    -- redist10_xip1_4_uid86_vecTranslateTest_b_1(DELAY,354)
    redist10_xip1_4_uid86_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_4_uid86_vecTranslateTest_b, xout => redist10_xip1_4_uid86_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xip1E_5CostZeroPaddingA_uid95_vecTranslateTest(CONSTANT,94)
    xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q <= "0000";

    -- yip1E_5NA_uid99_vecTranslateTest(BITJOIN,98)@1
    yip1E_5NA_uid99_vecTranslateTest_q <= redist9_yip1_4_uid87_vecTranslateTest_b_1_q & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- yip1E_5sumAHighB_uid100_vecTranslateTest(ADDSUB,99)@1
    yip1E_5sumAHighB_uid100_vecTranslateTest_s <= xMSB_uid89_vecTranslateTest_b;
    yip1E_5sumAHighB_uid100_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => yip1E_5NA_uid99_vecTranslateTest_q(23)) & yip1E_5NA_uid99_vecTranslateTest_q));
    yip1E_5sumAHighB_uid100_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & redist10_xip1_4_uid86_vecTranslateTest_b_1_q));
    yip1E_5sumAHighB_uid100_vecTranslateTest_combproc: PROCESS (yip1E_5sumAHighB_uid100_vecTranslateTest_a, yip1E_5sumAHighB_uid100_vecTranslateTest_b, yip1E_5sumAHighB_uid100_vecTranslateTest_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid100_vecTranslateTest_s = "1") THEN
            yip1E_5sumAHighB_uid100_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_a) + SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_b));
        ELSE
            yip1E_5sumAHighB_uid100_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_a) - SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid100_vecTranslateTest_q <= yip1E_5sumAHighB_uid100_vecTranslateTest_o(24 downto 0);

    -- yip1_5_uid106_vecTranslateTest(BITSELECT,105)@1
    yip1_5_uid106_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid100_vecTranslateTest_q(22 downto 0));
    yip1_5_uid106_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_5_uid106_vecTranslateTest_in(22 downto 0));

    -- xMSB_uid108_vecTranslateTest(BITSELECT,107)@1
    xMSB_uid108_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_5_uid106_vecTranslateTest_b(22 downto 22));

    -- invSignOfSelectionSignal_uid94_vecTranslateTest(LOGICAL,93)@1
    invSignOfSelectionSignal_uid94_vecTranslateTest_q <= not (xMSB_uid89_vecTranslateTest_b);

    -- xip1E_5NA_uid96_vecTranslateTest(BITJOIN,95)@1
    xip1E_5NA_uid96_vecTranslateTest_q <= redist10_xip1_4_uid86_vecTranslateTest_b_1_q & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- xip1E_5sumAHighB_uid97_vecTranslateTest(ADDSUB,96)@1
    xip1E_5sumAHighB_uid97_vecTranslateTest_s <= invSignOfSelectionSignal_uid94_vecTranslateTest_q;
    xip1E_5sumAHighB_uid97_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_5NA_uid96_vecTranslateTest_q));
    xip1E_5sumAHighB_uid97_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 20 => redist9_yip1_4_uid87_vecTranslateTest_b_1_q(19)) & redist9_yip1_4_uid87_vecTranslateTest_b_1_q));
    xip1E_5sumAHighB_uid97_vecTranslateTest_combproc: PROCESS (xip1E_5sumAHighB_uid97_vecTranslateTest_a, xip1E_5sumAHighB_uid97_vecTranslateTest_b, xip1E_5sumAHighB_uid97_vecTranslateTest_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid97_vecTranslateTest_s = "1") THEN
            xip1E_5sumAHighB_uid97_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_a) + SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_b));
        ELSE
            xip1E_5sumAHighB_uid97_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_a) - SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid97_vecTranslateTest_q <= xip1E_5sumAHighB_uid97_vecTranslateTest_o(27 downto 0);

    -- xip1_5_uid105_vecTranslateTest(BITSELECT,104)@1
    xip1_5_uid105_vecTranslateTest_in <= xip1E_5sumAHighB_uid97_vecTranslateTest_q(25 downto 0);
    xip1_5_uid105_vecTranslateTest_b <= xip1_5_uid105_vecTranslateTest_in(25 downto 0);

    -- xip1E_6CostZeroPaddingA_uid114_vecTranslateTest(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q <= "00000";

    -- yip1E_6NA_uid118_vecTranslateTest(BITJOIN,117)@1
    yip1E_6NA_uid118_vecTranslateTest_q <= yip1_5_uid106_vecTranslateTest_b & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- yip1E_6sumAHighB_uid119_vecTranslateTest(ADDSUB,118)@1
    yip1E_6sumAHighB_uid119_vecTranslateTest_s <= xMSB_uid108_vecTranslateTest_b;
    yip1E_6sumAHighB_uid119_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => yip1E_6NA_uid118_vecTranslateTest_q(27)) & yip1E_6NA_uid118_vecTranslateTest_q));
    yip1E_6sumAHighB_uid119_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_5_uid105_vecTranslateTest_b));
    yip1E_6sumAHighB_uid119_vecTranslateTest_combproc: PROCESS (yip1E_6sumAHighB_uid119_vecTranslateTest_a, yip1E_6sumAHighB_uid119_vecTranslateTest_b, yip1E_6sumAHighB_uid119_vecTranslateTest_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid119_vecTranslateTest_s = "1") THEN
            yip1E_6sumAHighB_uid119_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_a) + SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_b));
        ELSE
            yip1E_6sumAHighB_uid119_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_a) - SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid119_vecTranslateTest_q <= yip1E_6sumAHighB_uid119_vecTranslateTest_o(28 downto 0);

    -- yip1_6_uid125_vecTranslateTest(BITSELECT,124)@1
    yip1_6_uid125_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid119_vecTranslateTest_q(26 downto 0));
    yip1_6_uid125_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_6_uid125_vecTranslateTest_in(26 downto 0));

    -- xMSB_uid127_vecTranslateTest(BITSELECT,126)@1
    xMSB_uid127_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_6_uid125_vecTranslateTest_b(26 downto 26));

    -- invSignOfSelectionSignal_uid113_vecTranslateTest(LOGICAL,112)@1
    invSignOfSelectionSignal_uid113_vecTranslateTest_q <= not (xMSB_uid108_vecTranslateTest_b);

    -- xip1E_6NA_uid115_vecTranslateTest(BITJOIN,114)@1
    xip1E_6NA_uid115_vecTranslateTest_q <= xip1_5_uid105_vecTranslateTest_b & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- xip1E_6sumAHighB_uid116_vecTranslateTest(ADDSUB,115)@1
    xip1E_6sumAHighB_uid116_vecTranslateTest_s <= invSignOfSelectionSignal_uid113_vecTranslateTest_q;
    xip1E_6sumAHighB_uid116_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_6NA_uid115_vecTranslateTest_q));
    xip1E_6sumAHighB_uid116_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 23 => yip1_5_uid106_vecTranslateTest_b(22)) & yip1_5_uid106_vecTranslateTest_b));
    xip1E_6sumAHighB_uid116_vecTranslateTest_combproc: PROCESS (xip1E_6sumAHighB_uid116_vecTranslateTest_a, xip1E_6sumAHighB_uid116_vecTranslateTest_b, xip1E_6sumAHighB_uid116_vecTranslateTest_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid116_vecTranslateTest_s = "1") THEN
            xip1E_6sumAHighB_uid116_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_a) + SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_b));
        ELSE
            xip1E_6sumAHighB_uid116_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_a) - SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid116_vecTranslateTest_q <= xip1E_6sumAHighB_uid116_vecTranslateTest_o(32 downto 0);

    -- xip1_6_uid124_vecTranslateTest(BITSELECT,123)@1
    xip1_6_uid124_vecTranslateTest_in <= xip1E_6sumAHighB_uid116_vecTranslateTest_q(30 downto 0);
    xip1_6_uid124_vecTranslateTest_b <= xip1_6_uid124_vecTranslateTest_in(30 downto 0);

    -- twoToMiSiXip_uid131_vecTranslateTest(BITSELECT,130)@1
    twoToMiSiXip_uid131_vecTranslateTest_b <= xip1_6_uid124_vecTranslateTest_b(30 downto 4);

    -- yip1E_7NA_uid139_vecTranslateTest(BITJOIN,138)@1
    yip1E_7NA_uid139_vecTranslateTest_q <= yip1_6_uid125_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- yip1E_7sumAHighB_uid140_vecTranslateTest(ADDSUB,139)@1
    yip1E_7sumAHighB_uid140_vecTranslateTest_s <= xMSB_uid127_vecTranslateTest_b;
    yip1E_7sumAHighB_uid140_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1E_7NA_uid139_vecTranslateTest_q(28)) & yip1E_7NA_uid139_vecTranslateTest_q));
    yip1E_7sumAHighB_uid140_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid131_vecTranslateTest_b));
    yip1E_7sumAHighB_uid140_vecTranslateTest_combproc: PROCESS (yip1E_7sumAHighB_uid140_vecTranslateTest_a, yip1E_7sumAHighB_uid140_vecTranslateTest_b, yip1E_7sumAHighB_uid140_vecTranslateTest_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid140_vecTranslateTest_s = "1") THEN
            yip1E_7sumAHighB_uid140_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid140_vecTranslateTest_a) + SIGNED(yip1E_7sumAHighB_uid140_vecTranslateTest_b));
        ELSE
            yip1E_7sumAHighB_uid140_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid140_vecTranslateTest_a) - SIGNED(yip1E_7sumAHighB_uid140_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid140_vecTranslateTest_q <= yip1E_7sumAHighB_uid140_vecTranslateTest_o(29 downto 0);

    -- yip1_7_uid146_vecTranslateTest(BITSELECT,145)@1
    yip1_7_uid146_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid140_vecTranslateTest_q(27 downto 0));
    yip1_7_uid146_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_7_uid146_vecTranslateTest_in(27 downto 0));

    -- xMSB_uid148_vecTranslateTest(BITSELECT,147)@1
    xMSB_uid148_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_7_uid146_vecTranslateTest_b(27 downto 27));

    -- invSignOfSelectionSignal_uid155_vecTranslateTest(LOGICAL,154)@1
    invSignOfSelectionSignal_uid155_vecTranslateTest_q <= not (xMSB_uid148_vecTranslateTest_b);

    -- twoToMiSiYip_uid153_vecTranslateTest(BITSELECT,152)@1
    twoToMiSiYip_uid153_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_7_uid146_vecTranslateTest_b(27 downto 7));

    -- invSignOfSelectionSignal_uid134_vecTranslateTest(LOGICAL,133)@1
    invSignOfSelectionSignal_uid134_vecTranslateTest_q <= not (xMSB_uid127_vecTranslateTest_b);

    -- twoToMiSiYip_uid132_vecTranslateTest(BITSELECT,131)@1
    twoToMiSiYip_uid132_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_6_uid125_vecTranslateTest_b(26 downto 4));

    -- xip1E_7NA_uid136_vecTranslateTest(BITJOIN,135)@1
    xip1E_7NA_uid136_vecTranslateTest_q <= xip1_6_uid124_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- xip1E_7sumAHighB_uid137_vecTranslateTest(ADDSUB,136)@1
    xip1E_7sumAHighB_uid137_vecTranslateTest_s <= invSignOfSelectionSignal_uid134_vecTranslateTest_q;
    xip1E_7sumAHighB_uid137_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_7NA_uid136_vecTranslateTest_q));
    xip1E_7sumAHighB_uid137_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 23 => twoToMiSiYip_uid132_vecTranslateTest_b(22)) & twoToMiSiYip_uid132_vecTranslateTest_b));
    xip1E_7sumAHighB_uid137_vecTranslateTest_combproc: PROCESS (xip1E_7sumAHighB_uid137_vecTranslateTest_a, xip1E_7sumAHighB_uid137_vecTranslateTest_b, xip1E_7sumAHighB_uid137_vecTranslateTest_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid137_vecTranslateTest_s = "1") THEN
            xip1E_7sumAHighB_uid137_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid137_vecTranslateTest_a) + SIGNED(xip1E_7sumAHighB_uid137_vecTranslateTest_b));
        ELSE
            xip1E_7sumAHighB_uid137_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid137_vecTranslateTest_a) - SIGNED(xip1E_7sumAHighB_uid137_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid137_vecTranslateTest_q <= xip1E_7sumAHighB_uid137_vecTranslateTest_o(34 downto 0);

    -- xip1_7_uid145_vecTranslateTest(BITSELECT,144)@1
    xip1_7_uid145_vecTranslateTest_in <= xip1E_7sumAHighB_uid137_vecTranslateTest_q(32 downto 0);
    xip1_7_uid145_vecTranslateTest_b <= xip1_7_uid145_vecTranslateTest_in(32 downto 0);

    -- xip1E_8_uid156_vecTranslateTest(ADDSUB,155)@1
    xip1E_8_uid156_vecTranslateTest_s <= invSignOfSelectionSignal_uid155_vecTranslateTest_q;
    xip1E_8_uid156_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_7_uid145_vecTranslateTest_b));
    xip1E_8_uid156_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 21 => twoToMiSiYip_uid153_vecTranslateTest_b(20)) & twoToMiSiYip_uid153_vecTranslateTest_b));
    xip1E_8_uid156_vecTranslateTest_combproc: PROCESS (xip1E_8_uid156_vecTranslateTest_a, xip1E_8_uid156_vecTranslateTest_b, xip1E_8_uid156_vecTranslateTest_s)
    BEGIN
        IF (xip1E_8_uid156_vecTranslateTest_s = "1") THEN
            xip1E_8_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid156_vecTranslateTest_a) + SIGNED(xip1E_8_uid156_vecTranslateTest_b));
        ELSE
            xip1E_8_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid156_vecTranslateTest_a) - SIGNED(xip1E_8_uid156_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_8_uid156_vecTranslateTest_q <= xip1E_8_uid156_vecTranslateTest_o(34 downto 0);

    -- xip1_8_uid162_vecTranslateTest(BITSELECT,161)@1
    xip1_8_uid162_vecTranslateTest_in <= xip1E_8_uid156_vecTranslateTest_q(32 downto 0);
    xip1_8_uid162_vecTranslateTest_b <= xip1_8_uid162_vecTranslateTest_in(32 downto 0);

    -- twoToMiSiXip_uid169_vecTranslateTest(BITSELECT,168)@1
    twoToMiSiXip_uid169_vecTranslateTest_b <= xip1_8_uid162_vecTranslateTest_b(32 downto 8);

    -- twoToMiSiXip_uid152_vecTranslateTest(BITSELECT,151)@1
    twoToMiSiXip_uid152_vecTranslateTest_b <= xip1_7_uid145_vecTranslateTest_b(32 downto 7);

    -- yip1E_8_uid157_vecTranslateTest(ADDSUB,156)@1
    yip1E_8_uid157_vecTranslateTest_s <= xMSB_uid148_vecTranslateTest_b;
    yip1E_8_uid157_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => yip1_7_uid146_vecTranslateTest_b(27)) & yip1_7_uid146_vecTranslateTest_b));
    yip1E_8_uid157_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid152_vecTranslateTest_b));
    yip1E_8_uid157_vecTranslateTest_combproc: PROCESS (yip1E_8_uid157_vecTranslateTest_a, yip1E_8_uid157_vecTranslateTest_b, yip1E_8_uid157_vecTranslateTest_s)
    BEGIN
        IF (yip1E_8_uid157_vecTranslateTest_s = "1") THEN
            yip1E_8_uid157_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid157_vecTranslateTest_a) + SIGNED(yip1E_8_uid157_vecTranslateTest_b));
        ELSE
            yip1E_8_uid157_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid157_vecTranslateTest_a) - SIGNED(yip1E_8_uid157_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_8_uid157_vecTranslateTest_q <= yip1E_8_uid157_vecTranslateTest_o(28 downto 0);

    -- yip1_8_uid163_vecTranslateTest(BITSELECT,162)@1
    yip1_8_uid163_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_8_uid157_vecTranslateTest_q(26 downto 0));
    yip1_8_uid163_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid163_vecTranslateTest_in(26 downto 0));

    -- yip1E_9_uid174_vecTranslateTest(ADDSUB,173)@1
    yip1E_9_uid174_vecTranslateTest_s <= xMSB_uid165_vecTranslateTest_b;
    yip1E_9_uid174_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => yip1_8_uid163_vecTranslateTest_b(26)) & yip1_8_uid163_vecTranslateTest_b));
    yip1E_9_uid174_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid169_vecTranslateTest_b));
    yip1E_9_uid174_vecTranslateTest_combproc: PROCESS (yip1E_9_uid174_vecTranslateTest_a, yip1E_9_uid174_vecTranslateTest_b, yip1E_9_uid174_vecTranslateTest_s)
    BEGIN
        IF (yip1E_9_uid174_vecTranslateTest_s = "1") THEN
            yip1E_9_uid174_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid174_vecTranslateTest_a) + SIGNED(yip1E_9_uid174_vecTranslateTest_b));
        ELSE
            yip1E_9_uid174_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid174_vecTranslateTest_a) - SIGNED(yip1E_9_uid174_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_9_uid174_vecTranslateTest_q <= yip1E_9_uid174_vecTranslateTest_o(27 downto 0);

    -- yip1_9_uid180_vecTranslateTest(BITSELECT,179)@1
    yip1_9_uid180_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_9_uid174_vecTranslateTest_q(25 downto 0));
    yip1_9_uid180_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid180_vecTranslateTest_in(25 downto 0));

    -- xMSB_uid182_vecTranslateTest(BITSELECT,181)@1
    xMSB_uid182_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid180_vecTranslateTest_b(25 downto 25));

    -- invSignOfSelectionSignal_uid189_vecTranslateTest(LOGICAL,188)@1
    invSignOfSelectionSignal_uid189_vecTranslateTest_q <= not (xMSB_uid182_vecTranslateTest_b);

    -- twoToMiSiYip_uid187_vecTranslateTest(BITSELECT,186)@1
    twoToMiSiYip_uid187_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid180_vecTranslateTest_b(25 downto 9));

    -- invSignOfSelectionSignal_uid172_vecTranslateTest(LOGICAL,171)@1
    invSignOfSelectionSignal_uid172_vecTranslateTest_q <= not (xMSB_uid165_vecTranslateTest_b);

    -- twoToMiSiYip_uid170_vecTranslateTest(BITSELECT,169)@1
    twoToMiSiYip_uid170_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid163_vecTranslateTest_b(26 downto 8));

    -- xip1E_9_uid173_vecTranslateTest(ADDSUB,172)@1
    xip1E_9_uid173_vecTranslateTest_s <= invSignOfSelectionSignal_uid172_vecTranslateTest_q;
    xip1E_9_uid173_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_8_uid162_vecTranslateTest_b));
    xip1E_9_uid173_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 19 => twoToMiSiYip_uid170_vecTranslateTest_b(18)) & twoToMiSiYip_uid170_vecTranslateTest_b));
    xip1E_9_uid173_vecTranslateTest_combproc: PROCESS (xip1E_9_uid173_vecTranslateTest_a, xip1E_9_uid173_vecTranslateTest_b, xip1E_9_uid173_vecTranslateTest_s)
    BEGIN
        IF (xip1E_9_uid173_vecTranslateTest_s = "1") THEN
            xip1E_9_uid173_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid173_vecTranslateTest_a) + SIGNED(xip1E_9_uid173_vecTranslateTest_b));
        ELSE
            xip1E_9_uid173_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid173_vecTranslateTest_a) - SIGNED(xip1E_9_uid173_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_9_uid173_vecTranslateTest_q <= xip1E_9_uid173_vecTranslateTest_o(34 downto 0);

    -- xip1_9_uid179_vecTranslateTest(BITSELECT,178)@1
    xip1_9_uid179_vecTranslateTest_in <= xip1E_9_uid173_vecTranslateTest_q(32 downto 0);
    xip1_9_uid179_vecTranslateTest_b <= xip1_9_uid179_vecTranslateTest_in(32 downto 0);

    -- xip1E_10_uid190_vecTranslateTest(ADDSUB,189)@1
    xip1E_10_uid190_vecTranslateTest_s <= invSignOfSelectionSignal_uid189_vecTranslateTest_q;
    xip1E_10_uid190_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_9_uid179_vecTranslateTest_b));
    xip1E_10_uid190_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 17 => twoToMiSiYip_uid187_vecTranslateTest_b(16)) & twoToMiSiYip_uid187_vecTranslateTest_b));
    xip1E_10_uid190_vecTranslateTest_combproc: PROCESS (xip1E_10_uid190_vecTranslateTest_a, xip1E_10_uid190_vecTranslateTest_b, xip1E_10_uid190_vecTranslateTest_s)
    BEGIN
        IF (xip1E_10_uid190_vecTranslateTest_s = "1") THEN
            xip1E_10_uid190_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid190_vecTranslateTest_a) + SIGNED(xip1E_10_uid190_vecTranslateTest_b));
        ELSE
            xip1E_10_uid190_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid190_vecTranslateTest_a) - SIGNED(xip1E_10_uid190_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_10_uid190_vecTranslateTest_q <= xip1E_10_uid190_vecTranslateTest_o(34 downto 0);

    -- xip1_10_uid196_vecTranslateTest(BITSELECT,195)@1
    xip1_10_uid196_vecTranslateTest_in <= xip1E_10_uid190_vecTranslateTest_q(32 downto 0);
    xip1_10_uid196_vecTranslateTest_b <= xip1_10_uid196_vecTranslateTest_in(32 downto 0);

    -- twoToMiSiXip_uid203_vecTranslateTest(BITSELECT,202)@1
    twoToMiSiXip_uid203_vecTranslateTest_b <= xip1_10_uid196_vecTranslateTest_b(32 downto 10);

    -- twoToMiSiXip_uid186_vecTranslateTest(BITSELECT,185)@1
    twoToMiSiXip_uid186_vecTranslateTest_b <= xip1_9_uid179_vecTranslateTest_b(32 downto 9);

    -- yip1E_10_uid191_vecTranslateTest(ADDSUB,190)@1
    yip1E_10_uid191_vecTranslateTest_s <= xMSB_uid182_vecTranslateTest_b;
    yip1E_10_uid191_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1_9_uid180_vecTranslateTest_b(25)) & yip1_9_uid180_vecTranslateTest_b));
    yip1E_10_uid191_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid186_vecTranslateTest_b));
    yip1E_10_uid191_vecTranslateTest_combproc: PROCESS (yip1E_10_uid191_vecTranslateTest_a, yip1E_10_uid191_vecTranslateTest_b, yip1E_10_uid191_vecTranslateTest_s)
    BEGIN
        IF (yip1E_10_uid191_vecTranslateTest_s = "1") THEN
            yip1E_10_uid191_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid191_vecTranslateTest_a) + SIGNED(yip1E_10_uid191_vecTranslateTest_b));
        ELSE
            yip1E_10_uid191_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid191_vecTranslateTest_a) - SIGNED(yip1E_10_uid191_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_10_uid191_vecTranslateTest_q <= yip1E_10_uid191_vecTranslateTest_o(26 downto 0);

    -- yip1_10_uid197_vecTranslateTest(BITSELECT,196)@1
    yip1_10_uid197_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_10_uid191_vecTranslateTest_q(24 downto 0));
    yip1_10_uid197_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid197_vecTranslateTest_in(24 downto 0));

    -- yip1E_11_uid208_vecTranslateTest(ADDSUB,207)@1
    yip1E_11_uid208_vecTranslateTest_s <= xMSB_uid199_vecTranslateTest_b;
    yip1E_11_uid208_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_10_uid197_vecTranslateTest_b(24)) & yip1_10_uid197_vecTranslateTest_b));
    yip1E_11_uid208_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid203_vecTranslateTest_b));
    yip1E_11_uid208_vecTranslateTest_combproc: PROCESS (yip1E_11_uid208_vecTranslateTest_a, yip1E_11_uid208_vecTranslateTest_b, yip1E_11_uid208_vecTranslateTest_s)
    BEGIN
        IF (yip1E_11_uid208_vecTranslateTest_s = "1") THEN
            yip1E_11_uid208_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid208_vecTranslateTest_a) + SIGNED(yip1E_11_uid208_vecTranslateTest_b));
        ELSE
            yip1E_11_uid208_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid208_vecTranslateTest_a) - SIGNED(yip1E_11_uid208_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_11_uid208_vecTranslateTest_q <= yip1E_11_uid208_vecTranslateTest_o(25 downto 0);

    -- yip1_11_uid214_vecTranslateTest(BITSELECT,213)@1
    yip1_11_uid214_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_11_uid208_vecTranslateTest_q(23 downto 0));
    yip1_11_uid214_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_11_uid214_vecTranslateTest_in(23 downto 0));

    -- redist0_yip1_11_uid214_vecTranslateTest_b_1(DELAY,344)
    redist0_yip1_11_uid214_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid214_vecTranslateTest_b, xout => redist0_yip1_11_uid214_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xMSB_uid216_vecTranslateTest(BITSELECT,215)@2
    xMSB_uid216_vecTranslateTest_b <= STD_LOGIC_VECTOR(redist0_yip1_11_uid214_vecTranslateTest_b_1_q(23 downto 23));

    -- invSignOfSelectionSignal_uid223_vecTranslateTest(LOGICAL,222)@2
    invSignOfSelectionSignal_uid223_vecTranslateTest_q <= not (xMSB_uid216_vecTranslateTest_b);

    -- twoToMiSiYip_uid221_vecTranslateTest(BITSELECT,220)@2
    twoToMiSiYip_uid221_vecTranslateTest_b <= STD_LOGIC_VECTOR(redist0_yip1_11_uid214_vecTranslateTest_b_1_q(23 downto 11));

    -- invSignOfSelectionSignal_uid206_vecTranslateTest(LOGICAL,205)@1
    invSignOfSelectionSignal_uid206_vecTranslateTest_q <= not (xMSB_uid199_vecTranslateTest_b);

    -- twoToMiSiYip_uid204_vecTranslateTest(BITSELECT,203)@1
    twoToMiSiYip_uid204_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid197_vecTranslateTest_b(24 downto 10));

    -- xip1E_11_uid207_vecTranslateTest(ADDSUB,206)@1
    xip1E_11_uid207_vecTranslateTest_s <= invSignOfSelectionSignal_uid206_vecTranslateTest_q;
    xip1E_11_uid207_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_10_uid196_vecTranslateTest_b));
    xip1E_11_uid207_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 15 => twoToMiSiYip_uid204_vecTranslateTest_b(14)) & twoToMiSiYip_uid204_vecTranslateTest_b));
    xip1E_11_uid207_vecTranslateTest_combproc: PROCESS (xip1E_11_uid207_vecTranslateTest_a, xip1E_11_uid207_vecTranslateTest_b, xip1E_11_uid207_vecTranslateTest_s)
    BEGIN
        IF (xip1E_11_uid207_vecTranslateTest_s = "1") THEN
            xip1E_11_uid207_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid207_vecTranslateTest_a) + SIGNED(xip1E_11_uid207_vecTranslateTest_b));
        ELSE
            xip1E_11_uid207_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid207_vecTranslateTest_a) - SIGNED(xip1E_11_uid207_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_11_uid207_vecTranslateTest_q <= xip1E_11_uid207_vecTranslateTest_o(34 downto 0);

    -- xip1_11_uid213_vecTranslateTest(BITSELECT,212)@1
    xip1_11_uid213_vecTranslateTest_in <= xip1E_11_uid207_vecTranslateTest_q(32 downto 0);
    xip1_11_uid213_vecTranslateTest_b <= xip1_11_uid213_vecTranslateTest_in(32 downto 0);

    -- redist1_xip1_11_uid213_vecTranslateTest_b_1(DELAY,345)
    redist1_xip1_11_uid213_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid213_vecTranslateTest_b, xout => redist1_xip1_11_uid213_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xip1E_12_uid224_vecTranslateTest(ADDSUB,223)@2
    xip1E_12_uid224_vecTranslateTest_s <= invSignOfSelectionSignal_uid223_vecTranslateTest_q;
    xip1E_12_uid224_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist1_xip1_11_uid213_vecTranslateTest_b_1_q));
    xip1E_12_uid224_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 13 => twoToMiSiYip_uid221_vecTranslateTest_b(12)) & twoToMiSiYip_uid221_vecTranslateTest_b));
    xip1E_12_uid224_vecTranslateTest_combproc: PROCESS (xip1E_12_uid224_vecTranslateTest_a, xip1E_12_uid224_vecTranslateTest_b, xip1E_12_uid224_vecTranslateTest_s)
    BEGIN
        IF (xip1E_12_uid224_vecTranslateTest_s = "1") THEN
            xip1E_12_uid224_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid224_vecTranslateTest_a) + SIGNED(xip1E_12_uid224_vecTranslateTest_b));
        ELSE
            xip1E_12_uid224_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid224_vecTranslateTest_a) - SIGNED(xip1E_12_uid224_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_12_uid224_vecTranslateTest_q <= xip1E_12_uid224_vecTranslateTest_o(34 downto 0);

    -- xip1_12_uid230_vecTranslateTest(BITSELECT,229)@2
    xip1_12_uid230_vecTranslateTest_in <= xip1E_12_uid224_vecTranslateTest_q(32 downto 0);
    xip1_12_uid230_vecTranslateTest_b <= xip1_12_uid230_vecTranslateTest_in(32 downto 0);

    -- twoToMiSiXip_uid237_vecTranslateTest(BITSELECT,236)@2
    twoToMiSiXip_uid237_vecTranslateTest_b <= xip1_12_uid230_vecTranslateTest_b(32 downto 12);

    -- twoToMiSiXip_uid220_vecTranslateTest(BITSELECT,219)@2
    twoToMiSiXip_uid220_vecTranslateTest_b <= redist1_xip1_11_uid213_vecTranslateTest_b_1_q(32 downto 11);

    -- yip1E_12_uid225_vecTranslateTest(ADDSUB,224)@2
    yip1E_12_uid225_vecTranslateTest_s <= xMSB_uid216_vecTranslateTest_b;
    yip1E_12_uid225_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => redist0_yip1_11_uid214_vecTranslateTest_b_1_q(23)) & redist0_yip1_11_uid214_vecTranslateTest_b_1_q));
    yip1E_12_uid225_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid220_vecTranslateTest_b));
    yip1E_12_uid225_vecTranslateTest_combproc: PROCESS (yip1E_12_uid225_vecTranslateTest_a, yip1E_12_uid225_vecTranslateTest_b, yip1E_12_uid225_vecTranslateTest_s)
    BEGIN
        IF (yip1E_12_uid225_vecTranslateTest_s = "1") THEN
            yip1E_12_uid225_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid225_vecTranslateTest_a) + SIGNED(yip1E_12_uid225_vecTranslateTest_b));
        ELSE
            yip1E_12_uid225_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid225_vecTranslateTest_a) - SIGNED(yip1E_12_uid225_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_12_uid225_vecTranslateTest_q <= yip1E_12_uid225_vecTranslateTest_o(24 downto 0);

    -- yip1_12_uid231_vecTranslateTest(BITSELECT,230)@2
    yip1_12_uid231_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_12_uid225_vecTranslateTest_q(22 downto 0));
    yip1_12_uid231_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid231_vecTranslateTest_in(22 downto 0));

    -- yip1E_13_uid242_vecTranslateTest(ADDSUB,241)@2
    yip1E_13_uid242_vecTranslateTest_s <= xMSB_uid233_vecTranslateTest_b;
    yip1E_13_uid242_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => yip1_12_uid231_vecTranslateTest_b(22)) & yip1_12_uid231_vecTranslateTest_b));
    yip1E_13_uid242_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid237_vecTranslateTest_b));
    yip1E_13_uid242_vecTranslateTest_combproc: PROCESS (yip1E_13_uid242_vecTranslateTest_a, yip1E_13_uid242_vecTranslateTest_b, yip1E_13_uid242_vecTranslateTest_s)
    BEGIN
        IF (yip1E_13_uid242_vecTranslateTest_s = "1") THEN
            yip1E_13_uid242_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid242_vecTranslateTest_a) + SIGNED(yip1E_13_uid242_vecTranslateTest_b));
        ELSE
            yip1E_13_uid242_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid242_vecTranslateTest_a) - SIGNED(yip1E_13_uid242_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_13_uid242_vecTranslateTest_q <= yip1E_13_uid242_vecTranslateTest_o(23 downto 0);

    -- yip1_13_uid248_vecTranslateTest(BITSELECT,247)@2
    yip1_13_uid248_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_13_uid242_vecTranslateTest_q(21 downto 0));
    yip1_13_uid248_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid248_vecTranslateTest_in(21 downto 0));

    -- xMSB_uid250_vecTranslateTest(BITSELECT,249)@2
    xMSB_uid250_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid248_vecTranslateTest_b(21 downto 21));

    -- invSignOfSelectionSignal_uid257_vecTranslateTest(LOGICAL,256)@2
    invSignOfSelectionSignal_uid257_vecTranslateTest_q <= not (xMSB_uid250_vecTranslateTest_b);

    -- twoToMiSiYip_uid255_vecTranslateTest(BITSELECT,254)@2
    twoToMiSiYip_uid255_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid248_vecTranslateTest_b(21 downto 13));

    -- invSignOfSelectionSignal_uid240_vecTranslateTest(LOGICAL,239)@2
    invSignOfSelectionSignal_uid240_vecTranslateTest_q <= not (xMSB_uid233_vecTranslateTest_b);

    -- twoToMiSiYip_uid238_vecTranslateTest(BITSELECT,237)@2
    twoToMiSiYip_uid238_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid231_vecTranslateTest_b(22 downto 12));

    -- xip1E_13_uid241_vecTranslateTest(ADDSUB,240)@2
    xip1E_13_uid241_vecTranslateTest_s <= invSignOfSelectionSignal_uid240_vecTranslateTest_q;
    xip1E_13_uid241_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_12_uid230_vecTranslateTest_b));
    xip1E_13_uid241_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 11 => twoToMiSiYip_uid238_vecTranslateTest_b(10)) & twoToMiSiYip_uid238_vecTranslateTest_b));
    xip1E_13_uid241_vecTranslateTest_combproc: PROCESS (xip1E_13_uid241_vecTranslateTest_a, xip1E_13_uid241_vecTranslateTest_b, xip1E_13_uid241_vecTranslateTest_s)
    BEGIN
        IF (xip1E_13_uid241_vecTranslateTest_s = "1") THEN
            xip1E_13_uid241_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid241_vecTranslateTest_a) + SIGNED(xip1E_13_uid241_vecTranslateTest_b));
        ELSE
            xip1E_13_uid241_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid241_vecTranslateTest_a) - SIGNED(xip1E_13_uid241_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_13_uid241_vecTranslateTest_q <= xip1E_13_uid241_vecTranslateTest_o(34 downto 0);

    -- xip1_13_uid247_vecTranslateTest(BITSELECT,246)@2
    xip1_13_uid247_vecTranslateTest_in <= xip1E_13_uid241_vecTranslateTest_q(32 downto 0);
    xip1_13_uid247_vecTranslateTest_b <= xip1_13_uid247_vecTranslateTest_in(32 downto 0);

    -- xip1E_14_uid258_vecTranslateTest(ADDSUB,257)@2
    xip1E_14_uid258_vecTranslateTest_s <= invSignOfSelectionSignal_uid257_vecTranslateTest_q;
    xip1E_14_uid258_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_13_uid247_vecTranslateTest_b));
    xip1E_14_uid258_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 9 => twoToMiSiYip_uid255_vecTranslateTest_b(8)) & twoToMiSiYip_uid255_vecTranslateTest_b));
    xip1E_14_uid258_vecTranslateTest_combproc: PROCESS (xip1E_14_uid258_vecTranslateTest_a, xip1E_14_uid258_vecTranslateTest_b, xip1E_14_uid258_vecTranslateTest_s)
    BEGIN
        IF (xip1E_14_uid258_vecTranslateTest_s = "1") THEN
            xip1E_14_uid258_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid258_vecTranslateTest_a) + SIGNED(xip1E_14_uid258_vecTranslateTest_b));
        ELSE
            xip1E_14_uid258_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid258_vecTranslateTest_a) - SIGNED(xip1E_14_uid258_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_14_uid258_vecTranslateTest_q <= xip1E_14_uid258_vecTranslateTest_o(34 downto 0);

    -- xip1_14_uid264_vecTranslateTest(BITSELECT,263)@2
    xip1_14_uid264_vecTranslateTest_in <= xip1E_14_uid258_vecTranslateTest_q(32 downto 0);
    xip1_14_uid264_vecTranslateTest_b <= xip1_14_uid264_vecTranslateTest_in(32 downto 0);

    -- twoToMiSiXip_uid271_vecTranslateTest(BITSELECT,270)@2
    twoToMiSiXip_uid271_vecTranslateTest_b <= xip1_14_uid264_vecTranslateTest_b(32 downto 14);

    -- twoToMiSiXip_uid254_vecTranslateTest(BITSELECT,253)@2
    twoToMiSiXip_uid254_vecTranslateTest_b <= xip1_13_uid247_vecTranslateTest_b(32 downto 13);

    -- yip1E_14_uid259_vecTranslateTest(ADDSUB,258)@2
    yip1E_14_uid259_vecTranslateTest_s <= xMSB_uid250_vecTranslateTest_b;
    yip1E_14_uid259_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1_13_uid248_vecTranslateTest_b(21)) & yip1_13_uid248_vecTranslateTest_b));
    yip1E_14_uid259_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid254_vecTranslateTest_b));
    yip1E_14_uid259_vecTranslateTest_combproc: PROCESS (yip1E_14_uid259_vecTranslateTest_a, yip1E_14_uid259_vecTranslateTest_b, yip1E_14_uid259_vecTranslateTest_s)
    BEGIN
        IF (yip1E_14_uid259_vecTranslateTest_s = "1") THEN
            yip1E_14_uid259_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid259_vecTranslateTest_a) + SIGNED(yip1E_14_uid259_vecTranslateTest_b));
        ELSE
            yip1E_14_uid259_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid259_vecTranslateTest_a) - SIGNED(yip1E_14_uid259_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_14_uid259_vecTranslateTest_q <= yip1E_14_uid259_vecTranslateTest_o(22 downto 0);

    -- yip1_14_uid265_vecTranslateTest(BITSELECT,264)@2
    yip1_14_uid265_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_14_uid259_vecTranslateTest_q(20 downto 0));
    yip1_14_uid265_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid265_vecTranslateTest_in(20 downto 0));

    -- yip1E_15_uid276_vecTranslateTest(ADDSUB,275)@2
    yip1E_15_uid276_vecTranslateTest_s <= xMSB_uid267_vecTranslateTest_b;
    yip1E_15_uid276_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1_14_uid265_vecTranslateTest_b(20)) & yip1_14_uid265_vecTranslateTest_b));
    yip1E_15_uid276_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid271_vecTranslateTest_b));
    yip1E_15_uid276_vecTranslateTest_combproc: PROCESS (yip1E_15_uid276_vecTranslateTest_a, yip1E_15_uid276_vecTranslateTest_b, yip1E_15_uid276_vecTranslateTest_s)
    BEGIN
        IF (yip1E_15_uid276_vecTranslateTest_s = "1") THEN
            yip1E_15_uid276_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid276_vecTranslateTest_a) + SIGNED(yip1E_15_uid276_vecTranslateTest_b));
        ELSE
            yip1E_15_uid276_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid276_vecTranslateTest_a) - SIGNED(yip1E_15_uid276_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_15_uid276_vecTranslateTest_q <= yip1E_15_uid276_vecTranslateTest_o(21 downto 0);

    -- yip1_15_uid282_vecTranslateTest(BITSELECT,281)@2
    yip1_15_uid282_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_15_uid276_vecTranslateTest_q(19 downto 0));
    yip1_15_uid282_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid282_vecTranslateTest_in(19 downto 0));

    -- xMSB_uid284_vecTranslateTest(BITSELECT,283)@2
    xMSB_uid284_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid282_vecTranslateTest_b(19 downto 19));

    -- invSignOfSelectionSignal_uid291_vecTranslateTest(LOGICAL,290)@2
    invSignOfSelectionSignal_uid291_vecTranslateTest_q <= not (xMSB_uid284_vecTranslateTest_b);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- twoToMiSiYip_uid289_vecTranslateTest(BITSELECT,288)@2
    twoToMiSiYip_uid289_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid282_vecTranslateTest_b(19 downto 15));

    -- invSignOfSelectionSignal_uid274_vecTranslateTest(LOGICAL,273)@2
    invSignOfSelectionSignal_uid274_vecTranslateTest_q <= not (xMSB_uid267_vecTranslateTest_b);

    -- twoToMiSiYip_uid272_vecTranslateTest(BITSELECT,271)@2
    twoToMiSiYip_uid272_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid265_vecTranslateTest_b(20 downto 14));

    -- xip1E_15_uid275_vecTranslateTest(ADDSUB,274)@2
    xip1E_15_uid275_vecTranslateTest_s <= invSignOfSelectionSignal_uid274_vecTranslateTest_q;
    xip1E_15_uid275_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_14_uid264_vecTranslateTest_b));
    xip1E_15_uid275_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 7 => twoToMiSiYip_uid272_vecTranslateTest_b(6)) & twoToMiSiYip_uid272_vecTranslateTest_b));
    xip1E_15_uid275_vecTranslateTest_combproc: PROCESS (xip1E_15_uid275_vecTranslateTest_a, xip1E_15_uid275_vecTranslateTest_b, xip1E_15_uid275_vecTranslateTest_s)
    BEGIN
        IF (xip1E_15_uid275_vecTranslateTest_s = "1") THEN
            xip1E_15_uid275_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid275_vecTranslateTest_a) + SIGNED(xip1E_15_uid275_vecTranslateTest_b));
        ELSE
            xip1E_15_uid275_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid275_vecTranslateTest_a) - SIGNED(xip1E_15_uid275_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_15_uid275_vecTranslateTest_q <= xip1E_15_uid275_vecTranslateTest_o(34 downto 0);

    -- xip1_15_uid281_vecTranslateTest(BITSELECT,280)@2
    xip1_15_uid281_vecTranslateTest_in <= xip1E_15_uid275_vecTranslateTest_q(32 downto 0);
    xip1_15_uid281_vecTranslateTest_b <= xip1_15_uid281_vecTranslateTest_in(32 downto 0);

    -- xip1E_16_uid292_vecTranslateTest(ADDSUB,291)@2
    xip1E_16_uid292_vecTranslateTest_s <= invSignOfSelectionSignal_uid291_vecTranslateTest_q;
    xip1E_16_uid292_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_15_uid281_vecTranslateTest_b));
    xip1E_16_uid292_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 5 => twoToMiSiYip_uid289_vecTranslateTest_b(4)) & twoToMiSiYip_uid289_vecTranslateTest_b));
    xip1E_16_uid292_vecTranslateTest_combproc: PROCESS (xip1E_16_uid292_vecTranslateTest_a, xip1E_16_uid292_vecTranslateTest_b, xip1E_16_uid292_vecTranslateTest_s)
    BEGIN
        IF (xip1E_16_uid292_vecTranslateTest_s = "1") THEN
            xip1E_16_uid292_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid292_vecTranslateTest_a) + SIGNED(xip1E_16_uid292_vecTranslateTest_b));
        ELSE
            xip1E_16_uid292_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid292_vecTranslateTest_a) - SIGNED(xip1E_16_uid292_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_16_uid292_vecTranslateTest_q <= xip1E_16_uid292_vecTranslateTest_o(34 downto 0);

    -- xip1_16_uid298_vecTranslateTest(BITSELECT,297)@2
    xip1_16_uid298_vecTranslateTest_in <= xip1E_16_uid292_vecTranslateTest_q(32 downto 0);
    xip1_16_uid298_vecTranslateTest_b <= xip1_16_uid298_vecTranslateTest_in(32 downto 0);

    -- outMagPreRnd_uid338_vecTranslateTest(BITSELECT,337)@2
    outMagPreRnd_uid338_vecTranslateTest_b <= xip1_16_uid298_vecTranslateTest_b(32 downto 16);

    -- outMagPostRnd_uid341_vecTranslateTest(ADD,340)@2
    outMagPostRnd_uid341_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & outMagPreRnd_uid338_vecTranslateTest_b);
    outMagPostRnd_uid341_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000000000000000" & VCC_q);
    outMagPostRnd_uid341_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outMagPostRnd_uid341_vecTranslateTest_a) + UNSIGNED(outMagPostRnd_uid341_vecTranslateTest_b));
    outMagPostRnd_uid341_vecTranslateTest_q <= outMagPostRnd_uid341_vecTranslateTest_o(17 downto 0);

    -- outMag_uid342_vecTranslateTest(BITSELECT,341)@2
    outMag_uid342_vecTranslateTest_in <= outMagPostRnd_uid341_vecTranslateTest_q(16 downto 0);
    outMag_uid342_vecTranslateTest_b <= outMag_uid342_vecTranslateTest_in(16 downto 1);

    -- constPi_uid329_vecTranslateTest(CONSTANT,328)
    constPi_uid329_vecTranslateTest_q <= "11001001000100000";

    -- constPiP2uE_uid320_vecTranslateTest(CONSTANT,319)
    constPiP2uE_uid320_vecTranslateTest_q <= "1100100100010010";

    -- constPio2P2u_mergedSignalTM_uid323_vecTranslateTest(BITJOIN,322)@2
    constPio2P2u_mergedSignalTM_uid323_vecTranslateTest_q <= GND_q & constPiP2uE_uid320_vecTranslateTest_q;

    -- cstZeroOutFormat_uid319_vecTranslateTest(CONSTANT,318)
    cstZeroOutFormat_uid319_vecTranslateTest_q <= "00000000000000010";

    -- redist13_xMSB_uid32_vecTranslateTest_b_2(DELAY,357)
    redist13_xMSB_uid32_vecTranslateTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid32_vecTranslateTest_b, xout => redist13_xMSB_uid32_vecTranslateTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- redist12_xMSB_uid51_vecTranslateTest_b_2(DELAY,356)
    redist12_xMSB_uid51_vecTranslateTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid51_vecTranslateTest_b, xout => redist12_xMSB_uid51_vecTranslateTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- redist11_xMSB_uid70_vecTranslateTest_b_2(DELAY,355)
    redist11_xMSB_uid70_vecTranslateTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid70_vecTranslateTest_b, xout => redist11_xMSB_uid70_vecTranslateTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- redist8_xMSB_uid89_vecTranslateTest_b_1(DELAY,352)
    redist8_xMSB_uid89_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid89_vecTranslateTest_b, xout => redist8_xMSB_uid89_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist7_xMSB_uid108_vecTranslateTest_b_1(DELAY,351)
    redist7_xMSB_uid108_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid108_vecTranslateTest_b, xout => redist7_xMSB_uid108_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist6_xMSB_uid127_vecTranslateTest_b_1(DELAY,350)
    redist6_xMSB_uid127_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid127_vecTranslateTest_b, xout => redist6_xMSB_uid127_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist5_xMSB_uid148_vecTranslateTest_b_1(DELAY,349)
    redist5_xMSB_uid148_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid148_vecTranslateTest_b, xout => redist5_xMSB_uid148_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist4_xMSB_uid165_vecTranslateTest_b_1(DELAY,348)
    redist4_xMSB_uid165_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid165_vecTranslateTest_b, xout => redist4_xMSB_uid165_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist3_xMSB_uid182_vecTranslateTest_b_1(DELAY,347)
    redist3_xMSB_uid182_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid182_vecTranslateTest_b, xout => redist3_xMSB_uid182_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist2_xMSB_uid199_vecTranslateTest_b_1(DELAY,346)
    redist2_xMSB_uid199_vecTranslateTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid199_vecTranslateTest_b, xout => redist2_xMSB_uid199_vecTranslateTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- concSignVector_uid301_vecTranslateTest(BITJOIN,300)@2
    concSignVector_uid301_vecTranslateTest_q <= GND_q & redist13_xMSB_uid32_vecTranslateTest_b_2_q & redist12_xMSB_uid51_vecTranslateTest_b_2_q & redist11_xMSB_uid70_vecTranslateTest_b_2_q & redist8_xMSB_uid89_vecTranslateTest_b_1_q & redist7_xMSB_uid108_vecTranslateTest_b_1_q & redist6_xMSB_uid127_vecTranslateTest_b_1_q & redist5_xMSB_uid148_vecTranslateTest_b_1_q & redist4_xMSB_uid165_vecTranslateTest_b_1_q & redist3_xMSB_uid182_vecTranslateTest_b_1_q & redist2_xMSB_uid199_vecTranslateTest_b_1_q & xMSB_uid216_vecTranslateTest_b & xMSB_uid233_vecTranslateTest_b & xMSB_uid250_vecTranslateTest_b & xMSB_uid267_vecTranslateTest_b & xMSB_uid284_vecTranslateTest_b;

    -- is0_uid302_vecTranslateTest_merged_bit_select(BITSELECT,343)@2
    is0_uid302_vecTranslateTest_merged_bit_select_b <= concSignVector_uid301_vecTranslateTest_q(15 downto 10);
    is0_uid302_vecTranslateTest_merged_bit_select_c <= concSignVector_uid301_vecTranslateTest_q(9 downto 4);
    is0_uid302_vecTranslateTest_merged_bit_select_d <= concSignVector_uid301_vecTranslateTest_q(3 downto 0);

    -- table_l15_uid313_vecTranslateTest(LOOKUP,312)@2
    table_l15_uid313_vecTranslateTest_combproc: PROCESS (is0_uid302_vecTranslateTest_merged_bit_select_d)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid302_vecTranslateTest_merged_bit_select_d) IS
            WHEN "0000" => table_l15_uid313_vecTranslateTest_q <= "01111000";
            WHEN "0001" => table_l15_uid313_vecTranslateTest_q <= "01101000";
            WHEN "0010" => table_l15_uid313_vecTranslateTest_q <= "01011000";
            WHEN "0011" => table_l15_uid313_vecTranslateTest_q <= "01001000";
            WHEN "0100" => table_l15_uid313_vecTranslateTest_q <= "00111000";
            WHEN "0101" => table_l15_uid313_vecTranslateTest_q <= "00101000";
            WHEN "0110" => table_l15_uid313_vecTranslateTest_q <= "00011000";
            WHEN "0111" => table_l15_uid313_vecTranslateTest_q <= "00001000";
            WHEN "1000" => table_l15_uid313_vecTranslateTest_q <= "11111000";
            WHEN "1001" => table_l15_uid313_vecTranslateTest_q <= "11101000";
            WHEN "1010" => table_l15_uid313_vecTranslateTest_q <= "11011000";
            WHEN "1011" => table_l15_uid313_vecTranslateTest_q <= "11001000";
            WHEN "1100" => table_l15_uid313_vecTranslateTest_q <= "10111000";
            WHEN "1101" => table_l15_uid313_vecTranslateTest_q <= "10101000";
            WHEN "1110" => table_l15_uid313_vecTranslateTest_q <= "10011000";
            WHEN "1111" => table_l15_uid313_vecTranslateTest_q <= "10001000";
            WHEN OTHERS => -- unreachable
                           table_l15_uid313_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid309_vecTranslateTest(LOOKUP,308)@2
    table_l11_uid309_vecTranslateTest_combproc: PROCESS (is0_uid302_vecTranslateTest_merged_bit_select_c)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid302_vecTranslateTest_merged_bit_select_c) IS
            WHEN "000000" => table_l11_uid309_vecTranslateTest_q <= "0111";
            WHEN "000001" => table_l11_uid309_vecTranslateTest_q <= "0111";
            WHEN "000010" => table_l11_uid309_vecTranslateTest_q <= "0111";
            WHEN "000011" => table_l11_uid309_vecTranslateTest_q <= "0111";
            WHEN "000100" => table_l11_uid309_vecTranslateTest_q <= "0110";
            WHEN "000101" => table_l11_uid309_vecTranslateTest_q <= "0110";
            WHEN "000110" => table_l11_uid309_vecTranslateTest_q <= "0110";
            WHEN "000111" => table_l11_uid309_vecTranslateTest_q <= "0110";
            WHEN "001000" => table_l11_uid309_vecTranslateTest_q <= "0101";
            WHEN "001001" => table_l11_uid309_vecTranslateTest_q <= "0101";
            WHEN "001010" => table_l11_uid309_vecTranslateTest_q <= "0101";
            WHEN "001011" => table_l11_uid309_vecTranslateTest_q <= "0101";
            WHEN "001100" => table_l11_uid309_vecTranslateTest_q <= "0100";
            WHEN "001101" => table_l11_uid309_vecTranslateTest_q <= "0100";
            WHEN "001110" => table_l11_uid309_vecTranslateTest_q <= "0100";
            WHEN "001111" => table_l11_uid309_vecTranslateTest_q <= "0100";
            WHEN "010000" => table_l11_uid309_vecTranslateTest_q <= "0011";
            WHEN "010001" => table_l11_uid309_vecTranslateTest_q <= "0011";
            WHEN "010010" => table_l11_uid309_vecTranslateTest_q <= "0011";
            WHEN "010011" => table_l11_uid309_vecTranslateTest_q <= "0011";
            WHEN "010100" => table_l11_uid309_vecTranslateTest_q <= "0010";
            WHEN "010101" => table_l11_uid309_vecTranslateTest_q <= "0010";
            WHEN "010110" => table_l11_uid309_vecTranslateTest_q <= "0010";
            WHEN "010111" => table_l11_uid309_vecTranslateTest_q <= "0010";
            WHEN "011000" => table_l11_uid309_vecTranslateTest_q <= "0001";
            WHEN "011001" => table_l11_uid309_vecTranslateTest_q <= "0001";
            WHEN "011010" => table_l11_uid309_vecTranslateTest_q <= "0001";
            WHEN "011011" => table_l11_uid309_vecTranslateTest_q <= "0001";
            WHEN "011100" => table_l11_uid309_vecTranslateTest_q <= "0000";
            WHEN "011101" => table_l11_uid309_vecTranslateTest_q <= "0000";
            WHEN "011110" => table_l11_uid309_vecTranslateTest_q <= "0000";
            WHEN "011111" => table_l11_uid309_vecTranslateTest_q <= "0000";
            WHEN "100000" => table_l11_uid309_vecTranslateTest_q <= "1111";
            WHEN "100001" => table_l11_uid309_vecTranslateTest_q <= "1111";
            WHEN "100010" => table_l11_uid309_vecTranslateTest_q <= "1111";
            WHEN "100011" => table_l11_uid309_vecTranslateTest_q <= "1111";
            WHEN "100100" => table_l11_uid309_vecTranslateTest_q <= "1110";
            WHEN "100101" => table_l11_uid309_vecTranslateTest_q <= "1110";
            WHEN "100110" => table_l11_uid309_vecTranslateTest_q <= "1110";
            WHEN "100111" => table_l11_uid309_vecTranslateTest_q <= "1110";
            WHEN "101000" => table_l11_uid309_vecTranslateTest_q <= "1101";
            WHEN "101001" => table_l11_uid309_vecTranslateTest_q <= "1101";
            WHEN "101010" => table_l11_uid309_vecTranslateTest_q <= "1101";
            WHEN "101011" => table_l11_uid309_vecTranslateTest_q <= "1101";
            WHEN "101100" => table_l11_uid309_vecTranslateTest_q <= "1100";
            WHEN "101101" => table_l11_uid309_vecTranslateTest_q <= "1100";
            WHEN "101110" => table_l11_uid309_vecTranslateTest_q <= "1100";
            WHEN "101111" => table_l11_uid309_vecTranslateTest_q <= "1100";
            WHEN "110000" => table_l11_uid309_vecTranslateTest_q <= "1011";
            WHEN "110001" => table_l11_uid309_vecTranslateTest_q <= "1011";
            WHEN "110010" => table_l11_uid309_vecTranslateTest_q <= "1011";
            WHEN "110011" => table_l11_uid309_vecTranslateTest_q <= "1011";
            WHEN "110100" => table_l11_uid309_vecTranslateTest_q <= "1010";
            WHEN "110101" => table_l11_uid309_vecTranslateTest_q <= "1010";
            WHEN "110110" => table_l11_uid309_vecTranslateTest_q <= "1010";
            WHEN "110111" => table_l11_uid309_vecTranslateTest_q <= "1010";
            WHEN "111000" => table_l11_uid309_vecTranslateTest_q <= "1001";
            WHEN "111001" => table_l11_uid309_vecTranslateTest_q <= "1001";
            WHEN "111010" => table_l11_uid309_vecTranslateTest_q <= "1001";
            WHEN "111011" => table_l11_uid309_vecTranslateTest_q <= "1001";
            WHEN "111100" => table_l11_uid309_vecTranslateTest_q <= "1000";
            WHEN "111101" => table_l11_uid309_vecTranslateTest_q <= "1000";
            WHEN "111110" => table_l11_uid309_vecTranslateTest_q <= "1000";
            WHEN "111111" => table_l11_uid309_vecTranslateTest_q <= "1000";
            WHEN OTHERS => -- unreachable
                           table_l11_uid309_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid308_vecTranslateTest(LOOKUP,307)@2
    table_l11_uid308_vecTranslateTest_combproc: PROCESS (is0_uid302_vecTranslateTest_merged_bit_select_c)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid302_vecTranslateTest_merged_bit_select_c) IS
            WHEN "000000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "000001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "000010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "000011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "000100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "000101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "000110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "000111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "001000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "001001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "001010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "001011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "001100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "001101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "001110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "001111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "010000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "010001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "010010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "010011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "010100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "010101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "010110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "010111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "011000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "011001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "011010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "011011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "011100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "011101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "011110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "011111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "100000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "100001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "100010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "100011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "100100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "100101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "100110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "100111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "101000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "101001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "101010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "101011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "101100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "101101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "101110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "101111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "110000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "110001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "110010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "110011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "110100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "110101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "110110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "110111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "111000" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "111001" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "111010" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "111011" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN "111100" => table_l11_uid308_vecTranslateTest_q <= "1110000000";
            WHEN "111101" => table_l11_uid308_vecTranslateTest_q <= "1010000000";
            WHEN "111110" => table_l11_uid308_vecTranslateTest_q <= "0110000000";
            WHEN "111111" => table_l11_uid308_vecTranslateTest_q <= "0010000000";
            WHEN OTHERS => -- unreachable
                           table_l11_uid308_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid310_vecTranslateTest(BITJOIN,309)@2
    os_uid310_vecTranslateTest_q <= table_l11_uid309_vecTranslateTest_q & table_l11_uid308_vecTranslateTest_q;

    -- table_l5_uid304_vecTranslateTest(LOOKUP,303)@2
    table_l5_uid304_vecTranslateTest_combproc: PROCESS (is0_uid302_vecTranslateTest_merged_bit_select_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid302_vecTranslateTest_merged_bit_select_b) IS
            WHEN "000000" => table_l5_uid304_vecTranslateTest_q <= "0110110110";
            WHEN "000001" => table_l5_uid304_vecTranslateTest_q <= "0110100110";
            WHEN "000010" => table_l5_uid304_vecTranslateTest_q <= "0110010110";
            WHEN "000011" => table_l5_uid304_vecTranslateTest_q <= "0110000110";
            WHEN "000100" => table_l5_uid304_vecTranslateTest_q <= "0101110110";
            WHEN "000101" => table_l5_uid304_vecTranslateTest_q <= "0101100110";
            WHEN "000110" => table_l5_uid304_vecTranslateTest_q <= "0101010110";
            WHEN "000111" => table_l5_uid304_vecTranslateTest_q <= "0101000110";
            WHEN "001000" => table_l5_uid304_vecTranslateTest_q <= "0100111000";
            WHEN "001001" => table_l5_uid304_vecTranslateTest_q <= "0100101000";
            WHEN "001010" => table_l5_uid304_vecTranslateTest_q <= "0100011000";
            WHEN "001011" => table_l5_uid304_vecTranslateTest_q <= "0100001000";
            WHEN "001100" => table_l5_uid304_vecTranslateTest_q <= "0011111001";
            WHEN "001101" => table_l5_uid304_vecTranslateTest_q <= "0011101001";
            WHEN "001110" => table_l5_uid304_vecTranslateTest_q <= "0011011001";
            WHEN "001111" => table_l5_uid304_vecTranslateTest_q <= "0011001001";
            WHEN "010000" => table_l5_uid304_vecTranslateTest_q <= "0011001000";
            WHEN "010001" => table_l5_uid304_vecTranslateTest_q <= "0010111000";
            WHEN "010010" => table_l5_uid304_vecTranslateTest_q <= "0010101000";
            WHEN "010011" => table_l5_uid304_vecTranslateTest_q <= "0010011000";
            WHEN "010100" => table_l5_uid304_vecTranslateTest_q <= "0010001001";
            WHEN "010101" => table_l5_uid304_vecTranslateTest_q <= "0001111001";
            WHEN "010110" => table_l5_uid304_vecTranslateTest_q <= "0001101001";
            WHEN "010111" => table_l5_uid304_vecTranslateTest_q <= "0001011001";
            WHEN "011000" => table_l5_uid304_vecTranslateTest_q <= "0001001011";
            WHEN "011001" => table_l5_uid304_vecTranslateTest_q <= "0000111011";
            WHEN "011010" => table_l5_uid304_vecTranslateTest_q <= "0000101011";
            WHEN "011011" => table_l5_uid304_vecTranslateTest_q <= "0000011011";
            WHEN "011100" => table_l5_uid304_vecTranslateTest_q <= "0000001011";
            WHEN "011101" => table_l5_uid304_vecTranslateTest_q <= "1111111011";
            WHEN "011110" => table_l5_uid304_vecTranslateTest_q <= "1111101011";
            WHEN "011111" => table_l5_uid304_vecTranslateTest_q <= "1111011011";
            WHEN "100000" => table_l5_uid304_vecTranslateTest_q <= "0000100100";
            WHEN "100001" => table_l5_uid304_vecTranslateTest_q <= "0000010100";
            WHEN "100010" => table_l5_uid304_vecTranslateTest_q <= "0000000100";
            WHEN "100011" => table_l5_uid304_vecTranslateTest_q <= "1111110100";
            WHEN "100100" => table_l5_uid304_vecTranslateTest_q <= "1111100100";
            WHEN "100101" => table_l5_uid304_vecTranslateTest_q <= "1111010100";
            WHEN "100110" => table_l5_uid304_vecTranslateTest_q <= "1111000100";
            WHEN "100111" => table_l5_uid304_vecTranslateTest_q <= "1110110100";
            WHEN "101000" => table_l5_uid304_vecTranslateTest_q <= "1110100110";
            WHEN "101001" => table_l5_uid304_vecTranslateTest_q <= "1110010110";
            WHEN "101010" => table_l5_uid304_vecTranslateTest_q <= "1110000110";
            WHEN "101011" => table_l5_uid304_vecTranslateTest_q <= "1101110110";
            WHEN "101100" => table_l5_uid304_vecTranslateTest_q <= "1101100111";
            WHEN "101101" => table_l5_uid304_vecTranslateTest_q <= "1101010111";
            WHEN "101110" => table_l5_uid304_vecTranslateTest_q <= "1101000111";
            WHEN "101111" => table_l5_uid304_vecTranslateTest_q <= "1100110111";
            WHEN "110000" => table_l5_uid304_vecTranslateTest_q <= "1100110110";
            WHEN "110001" => table_l5_uid304_vecTranslateTest_q <= "1100100110";
            WHEN "110010" => table_l5_uid304_vecTranslateTest_q <= "1100010110";
            WHEN "110011" => table_l5_uid304_vecTranslateTest_q <= "1100000110";
            WHEN "110100" => table_l5_uid304_vecTranslateTest_q <= "1011110111";
            WHEN "110101" => table_l5_uid304_vecTranslateTest_q <= "1011100111";
            WHEN "110110" => table_l5_uid304_vecTranslateTest_q <= "1011010111";
            WHEN "110111" => table_l5_uid304_vecTranslateTest_q <= "1011000111";
            WHEN "111000" => table_l5_uid304_vecTranslateTest_q <= "1010111001";
            WHEN "111001" => table_l5_uid304_vecTranslateTest_q <= "1010101001";
            WHEN "111010" => table_l5_uid304_vecTranslateTest_q <= "1010011001";
            WHEN "111011" => table_l5_uid304_vecTranslateTest_q <= "1010001001";
            WHEN "111100" => table_l5_uid304_vecTranslateTest_q <= "1001111001";
            WHEN "111101" => table_l5_uid304_vecTranslateTest_q <= "1001101001";
            WHEN "111110" => table_l5_uid304_vecTranslateTest_q <= "1001011001";
            WHEN "111111" => table_l5_uid304_vecTranslateTest_q <= "1001001001";
            WHEN OTHERS => -- unreachable
                           table_l5_uid304_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid303_vecTranslateTest(LOOKUP,302)@2
    table_l5_uid303_vecTranslateTest_combproc: PROCESS (is0_uid302_vecTranslateTest_merged_bit_select_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid302_vecTranslateTest_merged_bit_select_b) IS
            WHEN "000000" => table_l5_uid303_vecTranslateTest_q <= "0100110001";
            WHEN "000001" => table_l5_uid303_vecTranslateTest_q <= "0100110110";
            WHEN "000010" => table_l5_uid303_vecTranslateTest_q <= "0101011011";
            WHEN "000011" => table_l5_uid303_vecTranslateTest_q <= "0101100000";
            WHEN "000100" => table_l5_uid303_vecTranslateTest_q <= "1010000011";
            WHEN "000101" => table_l5_uid303_vecTranslateTest_q <= "1010001000";
            WHEN "000110" => table_l5_uid303_vecTranslateTest_q <= "1010101101";
            WHEN "000111" => table_l5_uid303_vecTranslateTest_q <= "1010110011";
            WHEN "001000" => table_l5_uid303_vecTranslateTest_q <= "1101111001";
            WHEN "001001" => table_l5_uid303_vecTranslateTest_q <= "1101111110";
            WHEN "001010" => table_l5_uid303_vecTranslateTest_q <= "1110100100";
            WHEN "001011" => table_l5_uid303_vecTranslateTest_q <= "1110101001";
            WHEN "001100" => table_l5_uid303_vecTranslateTest_q <= "0011001011";
            WHEN "001101" => table_l5_uid303_vecTranslateTest_q <= "0011010001";
            WHEN "001110" => table_l5_uid303_vecTranslateTest_q <= "0011110110";
            WHEN "001111" => table_l5_uid303_vecTranslateTest_q <= "0011111011";
            WHEN "010000" => table_l5_uid303_vecTranslateTest_q <= "1110100100";
            WHEN "010001" => table_l5_uid303_vecTranslateTest_q <= "1110101001";
            WHEN "010010" => table_l5_uid303_vecTranslateTest_q <= "1111001110";
            WHEN "010011" => table_l5_uid303_vecTranslateTest_q <= "1111010100";
            WHEN "010100" => table_l5_uid303_vecTranslateTest_q <= "0011110110";
            WHEN "010101" => table_l5_uid303_vecTranslateTest_q <= "0011111011";
            WHEN "010110" => table_l5_uid303_vecTranslateTest_q <= "0100100000";
            WHEN "010111" => table_l5_uid303_vecTranslateTest_q <= "0100100110";
            WHEN "011000" => table_l5_uid303_vecTranslateTest_q <= "0111101100";
            WHEN "011001" => table_l5_uid303_vecTranslateTest_q <= "0111110010";
            WHEN "011010" => table_l5_uid303_vecTranslateTest_q <= "1000010111";
            WHEN "011011" => table_l5_uid303_vecTranslateTest_q <= "1000011100";
            WHEN "011100" => table_l5_uid303_vecTranslateTest_q <= "1100111110";
            WHEN "011101" => table_l5_uid303_vecTranslateTest_q <= "1101000100";
            WHEN "011110" => table_l5_uid303_vecTranslateTest_q <= "1101101001";
            WHEN "011111" => table_l5_uid303_vecTranslateTest_q <= "1101101110";
            WHEN "100000" => table_l5_uid303_vecTranslateTest_q <= "0010110010";
            WHEN "100001" => table_l5_uid303_vecTranslateTest_q <= "0010110111";
            WHEN "100010" => table_l5_uid303_vecTranslateTest_q <= "0011011100";
            WHEN "100011" => table_l5_uid303_vecTranslateTest_q <= "0011100010";
            WHEN "100100" => table_l5_uid303_vecTranslateTest_q <= "1000000100";
            WHEN "100101" => table_l5_uid303_vecTranslateTest_q <= "1000001001";
            WHEN "100110" => table_l5_uid303_vecTranslateTest_q <= "1000101110";
            WHEN "100111" => table_l5_uid303_vecTranslateTest_q <= "1000110100";
            WHEN "101000" => table_l5_uid303_vecTranslateTest_q <= "1011111010";
            WHEN "101001" => table_l5_uid303_vecTranslateTest_q <= "1100000000";
            WHEN "101010" => table_l5_uid303_vecTranslateTest_q <= "1100100101";
            WHEN "101011" => table_l5_uid303_vecTranslateTest_q <= "1100101010";
            WHEN "101100" => table_l5_uid303_vecTranslateTest_q <= "0001001100";
            WHEN "101101" => table_l5_uid303_vecTranslateTest_q <= "0001010010";
            WHEN "101110" => table_l5_uid303_vecTranslateTest_q <= "0001110111";
            WHEN "101111" => table_l5_uid303_vecTranslateTest_q <= "0001111100";
            WHEN "110000" => table_l5_uid303_vecTranslateTest_q <= "1100100101";
            WHEN "110001" => table_l5_uid303_vecTranslateTest_q <= "1100101010";
            WHEN "110010" => table_l5_uid303_vecTranslateTest_q <= "1101001111";
            WHEN "110011" => table_l5_uid303_vecTranslateTest_q <= "1101010101";
            WHEN "110100" => table_l5_uid303_vecTranslateTest_q <= "0001110111";
            WHEN "110101" => table_l5_uid303_vecTranslateTest_q <= "0001111100";
            WHEN "110110" => table_l5_uid303_vecTranslateTest_q <= "0010100010";
            WHEN "110111" => table_l5_uid303_vecTranslateTest_q <= "0010100111";
            WHEN "111000" => table_l5_uid303_vecTranslateTest_q <= "0101101101";
            WHEN "111001" => table_l5_uid303_vecTranslateTest_q <= "0101110011";
            WHEN "111010" => table_l5_uid303_vecTranslateTest_q <= "0110011000";
            WHEN "111011" => table_l5_uid303_vecTranslateTest_q <= "0110011101";
            WHEN "111100" => table_l5_uid303_vecTranslateTest_q <= "1011000000";
            WHEN "111101" => table_l5_uid303_vecTranslateTest_q <= "1011000101";
            WHEN "111110" => table_l5_uid303_vecTranslateTest_q <= "1011101010";
            WHEN "111111" => table_l5_uid303_vecTranslateTest_q <= "1011101111";
            WHEN OTHERS => -- unreachable
                           table_l5_uid303_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid305_vecTranslateTest(BITJOIN,304)@2
    os_uid305_vecTranslateTest_q <= table_l5_uid304_vecTranslateTest_q & table_l5_uid303_vecTranslateTest_q;

    -- lev1_a0_uid316_vecTranslateTest(ADD,315)@2
    lev1_a0_uid316_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => os_uid305_vecTranslateTest_q(19)) & os_uid305_vecTranslateTest_q));
    lev1_a0_uid316_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 14 => os_uid310_vecTranslateTest_q(13)) & os_uid310_vecTranslateTest_q));
    lev1_a0_uid316_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid316_vecTranslateTest_a) + SIGNED(lev1_a0_uid316_vecTranslateTest_b));
    lev1_a0_uid316_vecTranslateTest_q <= lev1_a0_uid316_vecTranslateTest_o(20 downto 0);

    -- lev2_a0_uid317_vecTranslateTest(ADD,316)@2
    lev2_a0_uid317_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => lev1_a0_uid316_vecTranslateTest_q(20)) & lev1_a0_uid316_vecTranslateTest_q));
    lev2_a0_uid317_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 8 => table_l15_uid313_vecTranslateTest_q(7)) & table_l15_uid313_vecTranslateTest_q));
    lev2_a0_uid317_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid317_vecTranslateTest_a) + SIGNED(lev2_a0_uid317_vecTranslateTest_b));
    lev2_a0_uid317_vecTranslateTest_q <= lev2_a0_uid317_vecTranslateTest_o(21 downto 0);

    -- atanRes_uid318_vecTranslateTest(BITSELECT,317)@2
    atanRes_uid318_vecTranslateTest_in <= lev2_a0_uid317_vecTranslateTest_q(19 downto 0);
    atanRes_uid318_vecTranslateTest_b <= atanRes_uid318_vecTranslateTest_in(19 downto 3);

    -- xNotZero_uid17_vecTranslateTest(LOGICAL,16)@0 + 1
    xNotZero_uid17_vecTranslateTest_qi <= "1" WHEN x /= "000000000000000" ELSE "0";
    xNotZero_uid17_vecTranslateTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xNotZero_uid17_vecTranslateTest_qi, xout => xNotZero_uid17_vecTranslateTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist14_xNotZero_uid17_vecTranslateTest_q_2(DELAY,358)
    redist14_xNotZero_uid17_vecTranslateTest_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xNotZero_uid17_vecTranslateTest_q, xout => redist14_xNotZero_uid17_vecTranslateTest_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- xZero_uid18_vecTranslateTest(LOGICAL,17)@2
    xZero_uid18_vecTranslateTest_q <= not (redist14_xNotZero_uid17_vecTranslateTest_q_2_q);

    -- yNotZero_uid15_vecTranslateTest(LOGICAL,14)@0 + 1
    yNotZero_uid15_vecTranslateTest_qi <= "1" WHEN y /= "000000000000000" ELSE "0";
    yNotZero_uid15_vecTranslateTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yNotZero_uid15_vecTranslateTest_qi, xout => yNotZero_uid15_vecTranslateTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist15_yNotZero_uid15_vecTranslateTest_q_2(DELAY,359)
    redist15_yNotZero_uid15_vecTranslateTest_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yNotZero_uid15_vecTranslateTest_q, xout => redist15_yNotZero_uid15_vecTranslateTest_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- yZero_uid16_vecTranslateTest(LOGICAL,15)@2
    yZero_uid16_vecTranslateTest_q <= not (redist15_yNotZero_uid15_vecTranslateTest_q_2_q);

    -- concXZeroYZero_uid325_vecTranslateTest(BITJOIN,324)@2
    concXZeroYZero_uid325_vecTranslateTest_q <= xZero_uid18_vecTranslateTest_q & yZero_uid16_vecTranslateTest_q;

    -- atanResPostExc_uid326_vecTranslateTest(MUX,325)@2
    atanResPostExc_uid326_vecTranslateTest_s <= concXZeroYZero_uid325_vecTranslateTest_q;
    atanResPostExc_uid326_vecTranslateTest_combproc: PROCESS (atanResPostExc_uid326_vecTranslateTest_s, en, atanRes_uid318_vecTranslateTest_b, cstZeroOutFormat_uid319_vecTranslateTest_q, constPio2P2u_mergedSignalTM_uid323_vecTranslateTest_q)
    BEGIN
        CASE (atanResPostExc_uid326_vecTranslateTest_s) IS
            WHEN "00" => atanResPostExc_uid326_vecTranslateTest_q <= atanRes_uid318_vecTranslateTest_b;
            WHEN "01" => atanResPostExc_uid326_vecTranslateTest_q <= cstZeroOutFormat_uid319_vecTranslateTest_q;
            WHEN "10" => atanResPostExc_uid326_vecTranslateTest_q <= constPio2P2u_mergedSignalTM_uid323_vecTranslateTest_q;
            WHEN "11" => atanResPostExc_uid326_vecTranslateTest_q <= cstZeroOutFormat_uid319_vecTranslateTest_q;
            WHEN OTHERS => atanResPostExc_uid326_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid330_vecTranslateTest(CONSTANT,329)
    constantZeroOutFormat_uid330_vecTranslateTest_q <= "00000000000000000";

    -- redist17_signX_uid7_vecTranslateTest_b_2(DELAY,361)
    redist17_signX_uid7_vecTranslateTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_vecTranslateTest_b, xout => redist17_signX_uid7_vecTranslateTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- redist16_signY_uid8_vecTranslateTest_b_2(DELAY,360)
    redist16_signY_uid8_vecTranslateTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signY_uid8_vecTranslateTest_b, xout => redist16_signY_uid8_vecTranslateTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- concSigns_uid327_vecTranslateTest(BITJOIN,326)@2
    concSigns_uid327_vecTranslateTest_q <= redist17_signX_uid7_vecTranslateTest_b_2_q & redist16_signY_uid8_vecTranslateTest_b_2_q;

    -- secondOperand_uid334_vecTranslateTest(MUX,333)@2
    secondOperand_uid334_vecTranslateTest_s <= concSigns_uid327_vecTranslateTest_q;
    secondOperand_uid334_vecTranslateTest_combproc: PROCESS (secondOperand_uid334_vecTranslateTest_s, en, constantZeroOutFormat_uid330_vecTranslateTest_q, atanResPostExc_uid326_vecTranslateTest_q, constPi_uid329_vecTranslateTest_q)
    BEGIN
        CASE (secondOperand_uid334_vecTranslateTest_s) IS
            WHEN "00" => secondOperand_uid334_vecTranslateTest_q <= constantZeroOutFormat_uid330_vecTranslateTest_q;
            WHEN "01" => secondOperand_uid334_vecTranslateTest_q <= atanResPostExc_uid326_vecTranslateTest_q;
            WHEN "10" => secondOperand_uid334_vecTranslateTest_q <= atanResPostExc_uid326_vecTranslateTest_q;
            WHEN "11" => secondOperand_uid334_vecTranslateTest_q <= constPi_uid329_vecTranslateTest_q;
            WHEN OTHERS => secondOperand_uid334_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid328_vecTranslateTest(CONSTANT,327)
    constPiP2u_uid328_vecTranslateTest_q <= "11001001000100011";

    -- constantZeroOutFormatP2u_uid331_vecTranslateTest(CONSTANT,330)
    constantZeroOutFormatP2u_uid331_vecTranslateTest_q <= "00000000000000100";

    -- firstOperand_uid333_vecTranslateTest(MUX,332)@2
    firstOperand_uid333_vecTranslateTest_s <= concSigns_uid327_vecTranslateTest_q;
    firstOperand_uid333_vecTranslateTest_combproc: PROCESS (firstOperand_uid333_vecTranslateTest_s, en, atanResPostExc_uid326_vecTranslateTest_q, constantZeroOutFormatP2u_uid331_vecTranslateTest_q, constPiP2u_uid328_vecTranslateTest_q)
    BEGIN
        CASE (firstOperand_uid333_vecTranslateTest_s) IS
            WHEN "00" => firstOperand_uid333_vecTranslateTest_q <= atanResPostExc_uid326_vecTranslateTest_q;
            WHEN "01" => firstOperand_uid333_vecTranslateTest_q <= constantZeroOutFormatP2u_uid331_vecTranslateTest_q;
            WHEN "10" => firstOperand_uid333_vecTranslateTest_q <= constPiP2u_uid328_vecTranslateTest_q;
            WHEN "11" => firstOperand_uid333_vecTranslateTest_q <= atanResPostExc_uid326_vecTranslateTest_q;
            WHEN OTHERS => firstOperand_uid333_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid335_vecTranslateTest(SUB,334)@2
    outResExtended_uid335_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid333_vecTranslateTest_q);
    outResExtended_uid335_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid334_vecTranslateTest_q);
    outResExtended_uid335_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid335_vecTranslateTest_a) - UNSIGNED(outResExtended_uid335_vecTranslateTest_b));
    outResExtended_uid335_vecTranslateTest_q <= outResExtended_uid335_vecTranslateTest_o(17 downto 0);

    -- atanResPostRR_uid336_vecTranslateTest(BITSELECT,335)@2
    atanResPostRR_uid336_vecTranslateTest_b <= STD_LOGIC_VECTOR(outResExtended_uid335_vecTranslateTest_q(17 downto 2));

    -- xOut(GPOUT,4)@2
    q <= atanResPostRR_uid336_vecTranslateTest_b;
    r <= outMag_uid342_vecTranslateTest_b;

END normal;
