// Copyright (C) 2024  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Standard Edition"

// DATE "07/13/2025 15:42:47"

// 
// Device: Altera 5AGXMB1G4F40C4 Package FBGA1517
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sincos (
	a,
	areset,
	c,
	clk,
	en,
	s)/* synthesis synthesis_greybox=0 */;
input 	[15:0] a;
input 	areset;
output 	[14:0] c;
input 	clk;
input 	[0:0] en;
output 	[14:0] s;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \cordic_0|c[0]~0_combout ;
wire \cordic_0|c[1]~1_combout ;
wire \cordic_0|c[2]~2_combout ;
wire \cordic_0|c[3]~3_combout ;
wire \cordic_0|c[4]~4_combout ;
wire \cordic_0|c[5]~5_combout ;
wire \cordic_0|c[6]~6_combout ;
wire \cordic_0|c[7]~7_combout ;
wire \cordic_0|c[8]~8_combout ;
wire \cordic_0|c[9]~9_combout ;
wire \cordic_0|c[10]~10_combout ;
wire \cordic_0|c[11]~11_combout ;
wire \cordic_0|c[12]~12_combout ;
wire \cordic_0|c[13]~13_combout ;
wire \cordic_0|c[14]~14_combout ;
wire \cordic_0|s[0]~0_combout ;
wire \cordic_0|s[1]~1_combout ;
wire \cordic_0|s[2]~2_combout ;
wire \cordic_0|s[3]~3_combout ;
wire \cordic_0|s[4]~4_combout ;
wire \cordic_0|s[5]~5_combout ;
wire \cordic_0|s[6]~6_combout ;
wire \cordic_0|s[7]~7_combout ;
wire \cordic_0|s[8]~8_combout ;
wire \cordic_0|s[9]~9_combout ;
wire \cordic_0|s[10]~10_combout ;
wire \cordic_0|s[11]~11_combout ;
wire \cordic_0|s[12]~12_combout ;
wire \cordic_0|s[13]~13_combout ;
wire \cordic_0|s[14]~14_combout ;
wire \clk~input_o ;
wire \areset~input_o ;
wire \en[0]~input_o ;
wire \a[15]~input_o ;
wire \a[14]~input_o ;
wire \a[13]~input_o ;
wire \a[12]~input_o ;
wire \a[11]~input_o ;
wire \a[10]~input_o ;
wire \a[9]~input_o ;
wire \a[8]~input_o ;
wire \a[7]~input_o ;
wire \a[6]~input_o ;
wire \a[5]~input_o ;
wire \a[4]~input_o ;
wire \a[3]~input_o ;
wire \a[2]~input_o ;
wire \a[1]~input_o ;
wire \a[0]~input_o ;


sincos_sincos_CORDIC_0 cordic_0(
	.c_0(\cordic_0|c[0]~0_combout ),
	.c_1(\cordic_0|c[1]~1_combout ),
	.c_2(\cordic_0|c[2]~2_combout ),
	.c_3(\cordic_0|c[3]~3_combout ),
	.c_4(\cordic_0|c[4]~4_combout ),
	.c_5(\cordic_0|c[5]~5_combout ),
	.c_6(\cordic_0|c[6]~6_combout ),
	.c_7(\cordic_0|c[7]~7_combout ),
	.c_8(\cordic_0|c[8]~8_combout ),
	.c_9(\cordic_0|c[9]~9_combout ),
	.c_10(\cordic_0|c[10]~10_combout ),
	.c_11(\cordic_0|c[11]~11_combout ),
	.c_12(\cordic_0|c[12]~12_combout ),
	.c_13(\cordic_0|c[13]~13_combout ),
	.c_14(\cordic_0|c[14]~14_combout ),
	.s_0(\cordic_0|s[0]~0_combout ),
	.s_1(\cordic_0|s[1]~1_combout ),
	.s_2(\cordic_0|s[2]~2_combout ),
	.s_3(\cordic_0|s[3]~3_combout ),
	.s_4(\cordic_0|s[4]~4_combout ),
	.s_5(\cordic_0|s[5]~5_combout ),
	.s_6(\cordic_0|s[6]~6_combout ),
	.s_7(\cordic_0|s[7]~7_combout ),
	.s_8(\cordic_0|s[8]~8_combout ),
	.s_9(\cordic_0|s[9]~9_combout ),
	.s_10(\cordic_0|s[10]~10_combout ),
	.s_11(\cordic_0|s[11]~11_combout ),
	.s_12(\cordic_0|s[12]~12_combout ),
	.s_13(\cordic_0|s[13]~13_combout ),
	.s_14(\cordic_0|s[14]~14_combout ),
	.clk(\clk~input_o ),
	.areset(\areset~input_o ),
	.en({\en[0]~input_o }),
	.a({\a[15]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.a_14(\a[14]~input_o ),
	.a_13(\a[13]~input_o ),
	.a_12(\a[12]~input_o ),
	.a_11(\a[11]~input_o ),
	.a_10(\a[10]~input_o ),
	.a_9(\a[9]~input_o ),
	.a_8(\a[8]~input_o ),
	.a_7(\a[7]~input_o ),
	.a_6(\a[6]~input_o ),
	.a_5(\a[5]~input_o ),
	.a_4(\a[4]~input_o ),
	.a_3(\a[3]~input_o ),
	.a_2(\a[2]~input_o ),
	.a_1(\a[1]~input_o ),
	.a_0(\a[0]~input_o ));

assign \clk~input_o  = clk;

assign \areset~input_o  = areset;

assign \en[0]~input_o  = en[0];

assign \a[15]~input_o  = a[15];

assign \a[14]~input_o  = a[14];

assign \a[13]~input_o  = a[13];

assign \a[12]~input_o  = a[12];

assign \a[11]~input_o  = a[11];

assign \a[10]~input_o  = a[10];

assign \a[9]~input_o  = a[9];

assign \a[8]~input_o  = a[8];

assign \a[7]~input_o  = a[7];

assign \a[6]~input_o  = a[6];

assign \a[5]~input_o  = a[5];

assign \a[4]~input_o  = a[4];

assign \a[3]~input_o  = a[3];

assign \a[2]~input_o  = a[2];

assign \a[1]~input_o  = a[1];

assign \a[0]~input_o  = a[0];

assign c[0] = \cordic_0|c[0]~0_combout ;

assign c[1] = \cordic_0|c[1]~1_combout ;

assign c[2] = \cordic_0|c[2]~2_combout ;

assign c[3] = \cordic_0|c[3]~3_combout ;

assign c[4] = \cordic_0|c[4]~4_combout ;

assign c[5] = \cordic_0|c[5]~5_combout ;

assign c[6] = \cordic_0|c[6]~6_combout ;

assign c[7] = \cordic_0|c[7]~7_combout ;

assign c[8] = \cordic_0|c[8]~8_combout ;

assign c[9] = \cordic_0|c[9]~9_combout ;

assign c[10] = \cordic_0|c[10]~10_combout ;

assign c[11] = \cordic_0|c[11]~11_combout ;

assign c[12] = \cordic_0|c[12]~12_combout ;

assign c[13] = \cordic_0|c[13]~13_combout ;

assign c[14] = \cordic_0|c[14]~14_combout ;

assign s[0] = \cordic_0|s[0]~0_combout ;

assign s[1] = \cordic_0|s[1]~1_combout ;

assign s[2] = \cordic_0|s[2]~2_combout ;

assign s[3] = \cordic_0|s[3]~3_combout ;

assign s[4] = \cordic_0|s[4]~4_combout ;

assign s[5] = \cordic_0|s[5]~5_combout ;

assign s[6] = \cordic_0|s[6]~6_combout ;

assign s[7] = \cordic_0|s[7]~7_combout ;

assign s[8] = \cordic_0|s[8]~8_combout ;

assign s[9] = \cordic_0|s[9]~9_combout ;

assign s[10] = \cordic_0|s[10]~10_combout ;

assign s[11] = \cordic_0|s[11]~11_combout ;

assign s[12] = \cordic_0|s[12]~12_combout ;

assign s[13] = \cordic_0|s[13]~13_combout ;

assign s[14] = \cordic_0|s[14]~14_combout ;

endmodule

module sincos_sincos_CORDIC_0 (
	c_0,
	c_1,
	c_2,
	c_3,
	c_4,
	c_5,
	c_6,
	c_7,
	c_8,
	c_9,
	c_10,
	c_11,
	c_12,
	c_13,
	c_14,
	s_0,
	s_1,
	s_2,
	s_3,
	s_4,
	s_5,
	s_6,
	s_7,
	s_8,
	s_9,
	s_10,
	s_11,
	s_12,
	s_13,
	s_14,
	clk,
	areset,
	en,
	a,
	a_14,
	a_13,
	a_12,
	a_11,
	a_10,
	a_9,
	a_8,
	a_7,
	a_6,
	a_5,
	a_4,
	a_3,
	a_2,
	a_1,
	a_0)/* synthesis synthesis_greybox=0 */;
output 	c_0;
output 	c_1;
output 	c_2;
output 	c_3;
output 	c_4;
output 	c_5;
output 	c_6;
output 	c_7;
output 	c_8;
output 	c_9;
output 	c_10;
output 	c_11;
output 	c_12;
output 	c_13;
output 	c_14;
output 	s_0;
output 	s_1;
output 	s_2;
output 	s_3;
output 	s_4;
output 	s_5;
output 	s_6;
output 	s_7;
output 	s_8;
output 	s_9;
output 	s_10;
output 	s_11;
output 	s_12;
output 	s_13;
output 	s_14;
input 	clk;
input 	areset;
input 	[0:0] en;
input 	[15:0] a;
input 	a_14;
input 	a_13;
input 	a_12;
input 	a_11;
input 	a_10;
input 	a_9;
input 	a_8;
input 	a_7;
input 	a_6;
input 	a_5;
input 	a_4;
input 	a_3;
input 	a_2;
input 	a_1;
input 	a_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add2~1_sumout ;
wire \Add2~6_cout ;
wire \Add1~1_sumout ;
wire \Add2~9_sumout ;
wire \Add2~10 ;
wire \Add29~1_sumout ;
wire \Add21~1_sumout ;
wire \Add17~1_sumout ;
wire \Add15~1_sumout ;
wire \Add16~1_sumout ;
wire \Add18~1_sumout ;
wire \Add19~1_sumout ;
wire \Add17~5_sumout ;
wire \Add17~6 ;
wire \Add18~5_sumout ;
wire \Add18~6 ;
wire \Add17~9_sumout ;
wire \Add17~10 ;
wire \Add18~9_sumout ;
wire \Add18~10 ;
wire \Add19~5_sumout ;
wire \Add19~6 ;
wire \Add17~13_sumout ;
wire \Add17~14 ;
wire \Add18~13_sumout ;
wire \Add18~14 ;
wire \Add17~17_sumout ;
wire \Add17~18 ;
wire \Add18~17_sumout ;
wire \Add18~18 ;
wire \Add23~1_sumout ;
wire \Add23~2 ;
wire \Add25~1_sumout ;
wire \Add23~5_sumout ;
wire \Add21~5_sumout ;
wire \Add21~6 ;
wire \Add17~21_sumout ;
wire \Add17~22 ;
wire \Add18~21_sumout ;
wire \Add18~22 ;
wire \Add17~25_sumout ;
wire \Add17~26 ;
wire \Add18~25_sumout ;
wire \Add18~26 ;
wire \Add25~5_sumout ;
wire \Add25~6 ;
wire \Add27~1_sumout ;
wire \Add1~5_sumout ;
wire \Add1~6 ;
wire \Add2~13_sumout ;
wire \Add2~14 ;
wire \Add27~5_sumout ;
wire \Add27~6 ;
wire \Add29~6_cout ;
wire \Add13~1_sumout ;
wire \Add15~5_sumout ;
wire \Add15~6 ;
wire \Add16~5_sumout ;
wire \Add16~6 ;
wire \Add15~9_sumout ;
wire \Add15~10 ;
wire \Add16~9_sumout ;
wire \Add16~10 ;
wire \Add15~13_sumout ;
wire \Add15~14 ;
wire \Add16~13_sumout ;
wire \Add16~14 ;
wire \Add15~17_sumout ;
wire \Add15~18 ;
wire \Add16~17_sumout ;
wire \Add16~18 ;
wire \Add15~21_sumout ;
wire \Add15~22 ;
wire \Add16~21_sumout ;
wire \Add16~22 ;
wire \Add15~25_sumout ;
wire \Add15~26 ;
wire \Add16~25_sumout ;
wire \Add16~26 ;
wire \Add15~29_sumout ;
wire \Add15~30 ;
wire \Add16~29_sumout ;
wire \Add16~30 ;
wire \Add17~29_sumout ;
wire \Add17~30 ;
wire \Add18~29_sumout ;
wire \Add18~30 ;
wire \Add1~9_sumout ;
wire \Add1~10 ;
wire \Add2~17_sumout ;
wire \Add2~18 ;
wire \Add29~10_cout ;
wire \Add9~1_sumout ;
wire \Add4~1_sumout ;
wire \Add5~1_sumout ;
wire \Add6~1_sumout ;
wire \Add7~1_sumout ;
wire \Add8~1_sumout ;
wire \Add10~1_sumout ;
wire \Add11~1_sumout ;
wire \Add11~5_sumout ;
wire \Add11~6 ;
wire \Add12~1_sumout ;
wire \Add12~5_sumout ;
wire \Add12~6 ;
wire \Add13~5_sumout ;
wire \Add13~6 ;
wire \Add15~33_sumout ;
wire \Add15~34 ;
wire \Add16~33_sumout ;
wire \Add16~34 ;
wire \Add17~33_sumout ;
wire \Add17~34 ;
wire \Add18~33_sumout ;
wire \Add18~34 ;
wire \Add75~1_sumout ;
wire \Add73~1_sumout ;
wire \Add75~5_sumout ;
wire \Add75~6 ;
wire \Add75~9_sumout ;
wire \Add75~10 ;
wire \Add75~13_sumout ;
wire \Add75~14 ;
wire \Add73~5_sumout ;
wire \Add73~6 ;
wire \Add75~17_sumout ;
wire \Add75~18 ;
wire \Add73~9_sumout ;
wire \Add73~10 ;
wire \Add73~13_sumout ;
wire \Add73~14 ;
wire \Add73~17_sumout ;
wire \Add73~18 ;
wire \Add73~21_sumout ;
wire \Add73~22 ;
wire \Add75~21_sumout ;
wire \Add75~22 ;
wire \Add73~25_sumout ;
wire \Add73~26 ;
wire \Add75~25_sumout ;
wire \Add75~26 ;
wire \Add73~29_sumout ;
wire \Add73~30 ;
wire \Add75~29_sumout ;
wire \Add75~30 ;
wire \Add73~33_sumout ;
wire \Add73~34 ;
wire \Add75~33_sumout ;
wire \Add75~34 ;
wire \Add73~37_sumout ;
wire \Add73~38 ;
wire \Add75~37_sumout ;
wire \Add75~38 ;
wire \Add73~41_sumout ;
wire \Add73~42 ;
wire \Add75~41_sumout ;
wire \Add75~42 ;
wire \Add73~45_sumout ;
wire \Add73~46 ;
wire \Add75~45_sumout ;
wire \Add75~46 ;
wire \Add73~49_sumout ;
wire \Add73~50 ;
wire \Add75~49_sumout ;
wire \Add75~50 ;
wire \Add73~53_sumout ;
wire \Add73~54 ;
wire \Add75~53_sumout ;
wire \Add75~54 ;
wire \Add73~57_sumout ;
wire \Add73~58 ;
wire \Add75~57_sumout ;
wire \Add75~58 ;
wire \Add73~61_sumout ;
wire \Add73~62 ;
wire \Add75~61_sumout ;
wire \Add75~62 ;
wire \Add73~65_sumout ;
wire \Add73~66 ;
wire \Add75~65_sumout ;
wire \Add75~66 ;
wire \Add1~13_sumout ;
wire \Add1~14 ;
wire \Add2~21_sumout ;
wire \Add2~22 ;
wire \Add29~14_cout ;
wire \Add7~5_sumout ;
wire \Add7~6 ;
wire \Add8~5_sumout ;
wire \Add8~6 ;
wire \Add9~5_sumout ;
wire \Add9~6 ;
wire \Add4~5_sumout ;
wire \Add4~6 ;
wire \Add5~5_sumout ;
wire \Add5~6 ;
wire \Add6~5_sumout ;
wire \Add6~6 ;
wire \Add6~7 ;
wire \Add10~5_sumout ;
wire \Add10~6 ;
wire \Add9~9_sumout ;
wire \Add9~10 ;
wire \Add10~9_sumout ;
wire \Add10~10 ;
wire \Add11~9_sumout ;
wire \Add11~10 ;
wire \Add12~9_sumout ;
wire \Add12~10 ;
wire \Add13~9_sumout ;
wire \Add13~10 ;
wire \Add13~13_sumout ;
wire \Add13~14 ;
wire \Add13~17_sumout ;
wire \Add13~18 ;
wire \Add13~21_sumout ;
wire \Add13~22 ;
wire \Add13~25_sumout ;
wire \Add13~26 ;
wire \Add13~29_sumout ;
wire \Add13~30 ;
wire \Add13~33_sumout ;
wire \Add13~34 ;
wire \Add15~37_sumout ;
wire \Add15~38 ;
wire \Add16~37_sumout ;
wire \Add16~38 ;
wire \Add17~37_sumout ;
wire \Add17~38 ;
wire \Add18~37_sumout ;
wire \Add18~38 ;
wire \Add71~1_sumout ;
wire \Add69~1_sumout ;
wire \Add69~5_sumout ;
wire \Add69~6 ;
wire \Add69~9_sumout ;
wire \Add69~10 ;
wire \Add69~13_sumout ;
wire \Add69~14 ;
wire \Add71~5_sumout ;
wire \Add71~6 ;
wire \Add69~17_sumout ;
wire \Add69~18 ;
wire \Add73~69_sumout ;
wire \Add73~70 ;
wire \Add69~21_sumout ;
wire \Add69~22 ;
wire \Add71~9_sumout ;
wire \Add71~10 ;
wire \Add71~13_sumout ;
wire \Add71~14 ;
wire \Add71~17_sumout ;
wire \Add71~18 ;
wire \Add71~21_sumout ;
wire \Add71~22 ;
wire \Add69~25_sumout ;
wire \Add69~26 ;
wire \Add71~25_sumout ;
wire \Add71~26 ;
wire \Add75~69_sumout ;
wire \Add75~70 ;
wire \Add71~29_sumout ;
wire \Add71~30 ;
wire \Add69~29_sumout ;
wire \Add69~30 ;
wire \Add71~33_sumout ;
wire \Add71~34 ;
wire \Add69~33_sumout ;
wire \Add69~34 ;
wire \Add71~37_sumout ;
wire \Add71~38 ;
wire \Add69~37_sumout ;
wire \Add69~38 ;
wire \Add71~41_sumout ;
wire \Add71~42 ;
wire \Add69~41_sumout ;
wire \Add69~42 ;
wire \Add71~45_sumout ;
wire \Add71~46 ;
wire \Add69~45_sumout ;
wire \Add69~46 ;
wire \Add71~49_sumout ;
wire \Add71~50 ;
wire \Add69~49_sumout ;
wire \Add69~50 ;
wire \Add71~53_sumout ;
wire \Add71~54 ;
wire \Add69~53_sumout ;
wire \Add69~54 ;
wire \Add71~57_sumout ;
wire \Add71~58 ;
wire \Add69~57_sumout ;
wire \Add69~58 ;
wire \Add71~61_sumout ;
wire \Add71~62 ;
wire \Add69~61_sumout ;
wire \Add69~62 ;
wire \Add71~65_sumout ;
wire \Add71~66 ;
wire \Add69~65_sumout ;
wire \Add69~66 ;
wire \Add1~17_sumout ;
wire \Add1~18 ;
wire \Add2~25_sumout ;
wire \Add2~26 ;
wire \Add29~18_cout ;
wire \Add5~9_sumout ;
wire \Add5~10 ;
wire \Add6~9_sumout ;
wire \Add6~10 ;
wire \Add6~11 ;
wire \Add7~9_sumout ;
wire \Add7~10 ;
wire \Add8~9_sumout ;
wire \Add8~10 ;
wire \Add4~9_sumout ;
wire \Add4~10 ;
wire \Add7~13_sumout ;
wire \Add7~14 ;
wire \Add8~13_sumout ;
wire \Add8~14 ;
wire \Add9~13_sumout ;
wire \Add9~14 ;
wire \Add10~13_sumout ;
wire \Add10~14 ;
wire \Add11~13_sumout ;
wire \Add11~14 ;
wire \Add12~13_sumout ;
wire \Add12~14 ;
wire \Add11~17_sumout ;
wire \Add11~18 ;
wire \Add12~17_sumout ;
wire \Add12~18 ;
wire \Add11~21_sumout ;
wire \Add11~22 ;
wire \Add12~21_sumout ;
wire \Add12~22 ;
wire \Add11~25_sumout ;
wire \Add11~26 ;
wire \Add12~25_sumout ;
wire \Add12~26 ;
wire \Add11~29_sumout ;
wire \Add11~30 ;
wire \Add12~29_sumout ;
wire \Add12~30 ;
wire \Add11~33_sumout ;
wire \Add11~34 ;
wire \Add12~33_sumout ;
wire \Add12~34 ;
wire \Add11~37_sumout ;
wire \Add11~38 ;
wire \Add12~37_sumout ;
wire \Add12~38 ;
wire \Add13~37_sumout ;
wire \Add13~38 ;
wire \Add15~41_sumout ;
wire \Add15~42 ;
wire \Add16~41_sumout ;
wire \Add16~42 ;
wire \Add17~41_sumout ;
wire \Add17~42 ;
wire \Add18~41_sumout ;
wire \Add18~42 ;
wire \Add67~1_sumout ;
wire \Add65~1_sumout ;
wire \Add67~5_sumout ;
wire \Add67~6 ;
wire \Add67~9_sumout ;
wire \Add67~10 ;
wire \Add67~13_sumout ;
wire \Add67~14 ;
wire \Add67~17_sumout ;
wire \Add67~18 ;
wire \Add65~5_sumout ;
wire \Add65~6 ;
wire \Add71~69_sumout ;
wire \Add71~70 ;
wire \Add67~21_sumout ;
wire \Add67~22 ;
wire \Add73~73_sumout ;
wire \Add73~74 ;
wire \Add67~25_sumout ;
wire \Add67~26 ;
wire \Add65~9_sumout ;
wire \Add65~10 ;
wire \Add65~13_sumout ;
wire \Add65~14 ;
wire \Add65~17_sumout ;
wire \Add65~18 ;
wire \Add65~21_sumout ;
wire \Add65~22 ;
wire \Add65~25_sumout ;
wire \Add65~26 ;
wire \Add67~29_sumout ;
wire \Add67~30 ;
wire \Add69~69_sumout ;
wire \Add69~70 ;
wire \Add65~29_sumout ;
wire \Add65~30 ;
wire \Add75~73_sumout ;
wire \Add75~74 ;
wire \Add65~33_sumout ;
wire \Add65~34 ;
wire \Add67~33_sumout ;
wire \Add67~34 ;
wire \Add65~37_sumout ;
wire \Add65~38 ;
wire \Add67~37_sumout ;
wire \Add67~38 ;
wire \Add65~41_sumout ;
wire \Add65~42 ;
wire \Add67~41_sumout ;
wire \Add67~42 ;
wire \Add65~45_sumout ;
wire \Add65~46 ;
wire \Add67~45_sumout ;
wire \Add67~46 ;
wire \Add65~49_sumout ;
wire \Add65~50 ;
wire \Add67~49_sumout ;
wire \Add67~50 ;
wire \Add65~53_sumout ;
wire \Add65~54 ;
wire \Add67~53_sumout ;
wire \Add67~54 ;
wire \Add65~57_sumout ;
wire \Add65~58 ;
wire \Add67~57_sumout ;
wire \Add67~58 ;
wire \Add65~61_sumout ;
wire \Add65~62 ;
wire \Add67~61_sumout ;
wire \Add67~62 ;
wire \Add65~65_sumout ;
wire \Add65~66 ;
wire \Add67~65_sumout ;
wire \Add67~66 ;
wire \Add1~21_sumout ;
wire \Add1~22 ;
wire \Add2~29_sumout ;
wire \Add2~30 ;
wire \Add29~22_cout ;
wire \Add4~13_sumout ;
wire \Add4~14 ;
wire \Add5~13_sumout ;
wire \Add5~14 ;
wire \Add6~13_sumout ;
wire \Add6~14 ;
wire \Add6~15 ;
wire \Add5~17_sumout ;
wire \Add5~18 ;
wire \Add6~17_sumout ;
wire \Add6~18 ;
wire \Add6~19 ;
wire \Add7~17_sumout ;
wire \Add7~18 ;
wire \Add8~17_sumout ;
wire \Add8~18 ;
wire \Add9~17_sumout ;
wire \Add9~18 ;
wire \Add10~17_sumout ;
wire \Add10~18 ;
wire \Add9~21_sumout ;
wire \Add9~22 ;
wire \Add10~21_sumout ;
wire \Add10~22 ;
wire \Add9~25_sumout ;
wire \Add9~26 ;
wire \Add10~25_sumout ;
wire \Add10~26 ;
wire \Add9~29_sumout ;
wire \Add9~30 ;
wire \Add10~29_sumout ;
wire \Add10~30 ;
wire \Add9~33_sumout ;
wire \Add9~34 ;
wire \Add10~33_sumout ;
wire \Add10~34 ;
wire \Add9~37_sumout ;
wire \Add9~38 ;
wire \Add10~37_sumout ;
wire \Add10~38 ;
wire \Add9~41_sumout ;
wire \Add9~42 ;
wire \Add10~41_sumout ;
wire \Add10~42 ;
wire \Add11~41_sumout ;
wire \Add11~42 ;
wire \Add12~41_sumout ;
wire \Add12~42 ;
wire \Add13~41_sumout ;
wire \Add13~42 ;
wire \Add15~45_sumout ;
wire \Add15~46 ;
wire \Add16~45_sumout ;
wire \Add16~46 ;
wire \Add17~45_sumout ;
wire \Add17~46 ;
wire \Add18~45_sumout ;
wire \Add18~46 ;
wire \Add63~1_sumout ;
wire \Add61~1_sumout ;
wire \Add61~5_sumout ;
wire \Add61~6 ;
wire \Add61~9_sumout ;
wire \Add61~10 ;
wire \Add61~13_sumout ;
wire \Add61~14 ;
wire \Add61~17_sumout ;
wire \Add61~18 ;
wire \Add61~21_sumout ;
wire \Add61~22 ;
wire \Add63~5_sumout ;
wire \Add63~6 ;
wire \Add65~69_sumout ;
wire \Add65~70 ;
wire \Add71~73_sumout ;
wire \Add71~74 ;
wire \Add61~25_sumout ;
wire \Add61~26 ;
wire \Add73~77_sumout ;
wire \Add73~78 ;
wire \Add61~29_sumout ;
wire \Add61~30 ;
wire \Add63~9_sumout ;
wire \Add63~10 ;
wire \Add63~13_sumout ;
wire \Add63~14 ;
wire \Add63~17_sumout ;
wire \Add63~18 ;
wire \Add63~21_sumout ;
wire \Add63~22 ;
wire \Add63~25_sumout ;
wire \Add63~26 ;
wire \Add63~29_sumout ;
wire \Add63~30 ;
wire \Add61~33_sumout ;
wire \Add61~34 ;
wire \Add67~69_sumout ;
wire \Add67~70 ;
wire \Add69~73_sumout ;
wire \Add69~74 ;
wire \Add63~33_sumout ;
wire \Add63~34 ;
wire \Add75~77_sumout ;
wire \Add75~78 ;
wire \Add63~37_sumout ;
wire \Add63~38 ;
wire \Add61~37_sumout ;
wire \Add61~38 ;
wire \Add63~41_sumout ;
wire \Add63~42 ;
wire \Add61~41_sumout ;
wire \Add61~42 ;
wire \Add63~45_sumout ;
wire \Add63~46 ;
wire \Add61~45_sumout ;
wire \Add61~46 ;
wire \Add63~49_sumout ;
wire \Add63~50 ;
wire \Add61~49_sumout ;
wire \Add61~50 ;
wire \Add63~53_sumout ;
wire \Add63~54 ;
wire \Add61~53_sumout ;
wire \Add61~54 ;
wire \Add63~57_sumout ;
wire \Add63~58 ;
wire \Add61~57_sumout ;
wire \Add61~58 ;
wire \Add63~61_sumout ;
wire \Add63~62 ;
wire \Add61~61_sumout ;
wire \Add61~62 ;
wire \Add63~65_sumout ;
wire \Add63~66 ;
wire \Add61~65_sumout ;
wire \Add61~66 ;
wire \Add1~25_sumout ;
wire \Add1~26 ;
wire \Add2~33_sumout ;
wire \Add2~34 ;
wire \Add29~26_cout ;
wire \Add4~17_sumout ;
wire \Add4~18 ;
wire \Add4~21_sumout ;
wire \Add4~22 ;
wire \Add5~21_sumout ;
wire \Add5~22 ;
wire \Add6~21_sumout ;
wire \Add6~22 ;
wire \Add6~23 ;
wire \Add7~21_sumout ;
wire \Add7~22 ;
wire \Add8~21_sumout ;
wire \Add8~22 ;
wire \Add7~25_sumout ;
wire \Add7~26 ;
wire \Add8~25_sumout ;
wire \Add8~26 ;
wire \Add7~29_sumout ;
wire \Add7~30 ;
wire \Add8~29_sumout ;
wire \Add8~30 ;
wire \Add7~33_sumout ;
wire \Add7~34 ;
wire \Add8~33_sumout ;
wire \Add8~34 ;
wire \Add7~37_sumout ;
wire \Add7~38 ;
wire \Add8~37_sumout ;
wire \Add8~38 ;
wire \Add7~41_sumout ;
wire \Add7~42 ;
wire \Add8~41_sumout ;
wire \Add8~42 ;
wire \Add7~45_sumout ;
wire \Add7~46 ;
wire \Add8~45_sumout ;
wire \Add8~46 ;
wire \Add9~45_sumout ;
wire \Add9~46 ;
wire \Add10~45_sumout ;
wire \Add10~46 ;
wire \Add11~45_sumout ;
wire \Add11~46 ;
wire \Add12~45_sumout ;
wire \Add12~46 ;
wire \Add13~45_sumout ;
wire \Add13~46 ;
wire \Add15~49_sumout ;
wire \Add15~50 ;
wire \Add16~49_sumout ;
wire \Add16~50 ;
wire \Add17~49_sumout ;
wire \Add17~50 ;
wire \Add18~49_sumout ;
wire \Add18~50 ;
wire \Add59~1_sumout ;
wire \Add57~1_sumout ;
wire \Add59~5_sumout ;
wire \Add59~6 ;
wire \Add59~9_sumout ;
wire \Add59~10 ;
wire \Add59~13_sumout ;
wire \Add59~14 ;
wire \Add59~17_sumout ;
wire \Add59~18 ;
wire \Add59~21_sumout ;
wire \Add59~22 ;
wire \Add59~25_sumout ;
wire \Add59~26 ;
wire \Add57~5_sumout ;
wire \Add57~6 ;
wire \Add63~69_sumout ;
wire \Add63~70 ;
wire \Add65~73_sumout ;
wire \Add65~74 ;
wire \Add71~77_sumout ;
wire \Add71~78 ;
wire \Add59~29_sumout ;
wire \Add59~30 ;
wire \Add73~81_sumout ;
wire \Add73~82 ;
wire \Add59~33_sumout ;
wire \Add59~34 ;
wire \Add57~9_sumout ;
wire \Add57~10 ;
wire \Add57~13_sumout ;
wire \Add57~14 ;
wire \Add57~17_sumout ;
wire \Add57~18 ;
wire \Add57~21_sumout ;
wire \Add57~22 ;
wire \Add57~25_sumout ;
wire \Add57~26 ;
wire \Add57~29_sumout ;
wire \Add57~30 ;
wire \Add57~33_sumout ;
wire \Add57~34 ;
wire \Add59~37_sumout ;
wire \Add59~38 ;
wire \Add61~69_sumout ;
wire \Add61~70 ;
wire \Add67~73_sumout ;
wire \Add67~74 ;
wire \Add69~77_sumout ;
wire \Add69~78 ;
wire \Add57~37_sumout ;
wire \Add57~38 ;
wire \Add75~81_sumout ;
wire \Add75~82 ;
wire \Add57~41_sumout ;
wire \Add57~42 ;
wire \Add59~41_sumout ;
wire \Add59~42 ;
wire \Add57~45_sumout ;
wire \Add57~46 ;
wire \Add59~45_sumout ;
wire \Add59~46 ;
wire \Add57~49_sumout ;
wire \Add57~50 ;
wire \Add59~49_sumout ;
wire \Add59~50 ;
wire \Add57~53_sumout ;
wire \Add57~54 ;
wire \Add59~53_sumout ;
wire \Add59~54 ;
wire \Add57~57_sumout ;
wire \Add57~58 ;
wire \Add59~57_sumout ;
wire \Add59~58 ;
wire \Add57~61_sumout ;
wire \Add57~62 ;
wire \Add59~61_sumout ;
wire \Add59~62 ;
wire \Add57~65_sumout ;
wire \Add57~66 ;
wire \Add59~65_sumout ;
wire \Add59~66 ;
wire \Add1~29_sumout ;
wire \Add1~30 ;
wire \Add2~37_sumout ;
wire \Add2~38 ;
wire \Add29~30_cout ;
wire \Add4~25_sumout ;
wire \Add4~26 ;
wire \Add5~25_sumout ;
wire \Add5~26 ;
wire \Add6~25_sumout ;
wire \Add6~26 ;
wire \Add6~27 ;
wire \Add5~29_sumout ;
wire \Add5~30 ;
wire \Add6~29_sumout ;
wire \Add6~30 ;
wire \Add6~31 ;
wire \Add5~33_sumout ;
wire \Add5~34 ;
wire \Add6~33_sumout ;
wire \Add6~34 ;
wire \Add6~35 ;
wire \Add5~37_sumout ;
wire \Add5~38 ;
wire \Add6~37_sumout ;
wire \Add6~38 ;
wire \Add6~39 ;
wire \Add5~41_sumout ;
wire \Add5~42 ;
wire \Add6~41_sumout ;
wire \Add6~42 ;
wire \Add6~43 ;
wire \Add5~45_sumout ;
wire \Add5~46 ;
wire \Add6~45_sumout ;
wire \Add6~46 ;
wire \Add6~47 ;
wire \Add5~49_sumout ;
wire \Add5~50 ;
wire \Add6~49_sumout ;
wire \Add6~50 ;
wire \Add6~51 ;
wire \Add7~49_sumout ;
wire \Add7~50 ;
wire \Add8~49_sumout ;
wire \Add8~50 ;
wire \Add9~49_sumout ;
wire \Add9~50 ;
wire \Add10~49_sumout ;
wire \Add10~50 ;
wire \Add11~49_sumout ;
wire \Add11~50 ;
wire \Add12~49_sumout ;
wire \Add12~50 ;
wire \Add13~49_sumout ;
wire \Add13~50 ;
wire \Add15~53_sumout ;
wire \Add15~54 ;
wire \Add16~53_sumout ;
wire \Add16~54 ;
wire \Add17~53_sumout ;
wire \Add17~54 ;
wire \Add18~53_sumout ;
wire \Add18~54 ;
wire \Add55~1_sumout ;
wire \Add53~1_sumout ;
wire \Add53~5_sumout ;
wire \Add53~6 ;
wire \Add53~9_sumout ;
wire \Add53~10 ;
wire \Add53~13_sumout ;
wire \Add53~14 ;
wire \Add53~17_sumout ;
wire \Add53~18 ;
wire \Add53~21_sumout ;
wire \Add53~22 ;
wire \Add55~5_sumout ;
wire \Add55~6 ;
wire \Add53~25_sumout ;
wire \Add53~26 ;
wire \Add53~29_sumout ;
wire \Add53~30 ;
wire \Add55~9_sumout ;
wire \Add55~10 ;
wire \Add57~69_sumout ;
wire \Add57~70 ;
wire \Add63~73_sumout ;
wire \Add63~74 ;
wire \Add65~77_sumout ;
wire \Add65~78 ;
wire \Add71~81_sumout ;
wire \Add71~82 ;
wire \Add53~33_sumout ;
wire \Add53~34 ;
wire \Add73~85_sumout ;
wire \Add73~86 ;
wire \Add53~37_sumout ;
wire \Add53~38 ;
wire \Add55~13_sumout ;
wire \Add55~14 ;
wire \Add55~17_sumout ;
wire \Add55~18 ;
wire \Add55~21_sumout ;
wire \Add55~22 ;
wire \Add55~25_sumout ;
wire \Add55~26 ;
wire \Add55~29_sumout ;
wire \Add55~30 ;
wire \Add55~33_sumout ;
wire \Add55~34 ;
wire \Add55~37_sumout ;
wire \Add55~38 ;
wire \Add55~41_sumout ;
wire \Add55~42 ;
wire \Add53~41_sumout ;
wire \Add53~42 ;
wire \Add59~69_sumout ;
wire \Add59~70 ;
wire \Add61~73_sumout ;
wire \Add61~74 ;
wire \Add67~77_sumout ;
wire \Add67~78 ;
wire \Add69~81_sumout ;
wire \Add69~82 ;
wire \Add55~45_sumout ;
wire \Add55~46 ;
wire \Add75~85_sumout ;
wire \Add75~86 ;
wire \Add53~45_sumout ;
wire \Add53~46 ;
wire \Add55~49_sumout ;
wire \Add55~50 ;
wire \Add53~49_sumout ;
wire \Add53~50 ;
wire \Add55~53_sumout ;
wire \Add55~54 ;
wire \Add53~53_sumout ;
wire \Add53~54 ;
wire \Add55~57_sumout ;
wire \Add55~58 ;
wire \Add53~57_sumout ;
wire \Add53~58 ;
wire \Add55~61_sumout ;
wire \Add55~62 ;
wire \Add53~61_sumout ;
wire \Add53~62 ;
wire \Add55~65_sumout ;
wire \Add55~66 ;
wire \Add53~65_sumout ;
wire \Add53~66 ;
wire \Add1~33_sumout ;
wire \Add1~34 ;
wire \Add2~41_sumout ;
wire \Add2~42 ;
wire \Add29~34_cout ;
wire \Add4~29_sumout ;
wire \Add4~30 ;
wire \Add4~33_sumout ;
wire \Add4~34 ;
wire \Add4~37_sumout ;
wire \Add4~38 ;
wire \Add4~41_sumout ;
wire \Add4~42 ;
wire \Add4~45_sumout ;
wire \Add4~46 ;
wire \Add4~49_sumout ;
wire \Add4~50 ;
wire \Add4~53_sumout ;
wire \Add4~54 ;
wire \Add5~53_sumout ;
wire \Add5~54 ;
wire \Add6~53_sumout ;
wire \Add6~54 ;
wire \Add6~55 ;
wire \Add7~53_sumout ;
wire \Add7~54 ;
wire \Add8~53_sumout ;
wire \Add8~54 ;
wire \Add9~53_sumout ;
wire \Add9~54 ;
wire \Add10~53_sumout ;
wire \Add10~54 ;
wire \Add11~53_sumout ;
wire \Add11~54 ;
wire \Add12~53_sumout ;
wire \Add12~54 ;
wire \Add13~53_sumout ;
wire \Add13~54 ;
wire \Add15~57_sumout ;
wire \Add15~58 ;
wire \Add16~57_sumout ;
wire \Add16~58 ;
wire \Add17~57_sumout ;
wire \Add17~58 ;
wire \Add18~57_sumout ;
wire \Add18~58 ;
wire \Add51~1_sumout ;
wire \Add49~1_sumout ;
wire \Add51~5_sumout ;
wire \Add51~6 ;
wire \Add51~9_sumout ;
wire \Add51~10 ;
wire \Add51~13_sumout ;
wire \Add51~14 ;
wire \Add51~17_sumout ;
wire \Add51~18 ;
wire \Add49~5_sumout ;
wire \Add49~6 ;
wire \Add51~21_sumout ;
wire \Add51~22 ;
wire \Add49~9_sumout ;
wire \Add49~10 ;
wire \Add51~25_sumout ;
wire \Add51~26 ;
wire \Add49~13_sumout ;
wire \Add49~14 ;
wire \Add51~29_sumout ;
wire \Add51~30 ;
wire \Add51~33_sumout ;
wire \Add51~34 ;
wire \Add49~17_sumout ;
wire \Add49~18 ;
wire \Add55~69_sumout ;
wire \Add55~70 ;
wire \Add57~73_sumout ;
wire \Add57~74 ;
wire \Add63~77_sumout ;
wire \Add63~78 ;
wire \Add65~81_sumout ;
wire \Add65~82 ;
wire \Add71~85_sumout ;
wire \Add71~86 ;
wire \Add51~37_sumout ;
wire \Add51~38 ;
wire \Add73~89_sumout ;
wire \Add73~90 ;
wire \Add51~41_sumout ;
wire \Add51~42 ;
wire \Add49~21_sumout ;
wire \Add49~22 ;
wire \Add49~25_sumout ;
wire \Add49~26 ;
wire \Add49~29_sumout ;
wire \Add49~30 ;
wire \Add49~33_sumout ;
wire \Add49~34 ;
wire \Add49~37_sumout ;
wire \Add49~38 ;
wire \Add49~41_sumout ;
wire \Add49~42 ;
wire \Add49~45_sumout ;
wire \Add49~46 ;
wire \Add51~45_sumout ;
wire \Add51~46 ;
wire \Add53~69_sumout ;
wire \Add53~70 ;
wire \Add59~73_sumout ;
wire \Add59~74 ;
wire \Add61~77_sumout ;
wire \Add61~78 ;
wire \Add67~81_sumout ;
wire \Add67~82 ;
wire \Add69~85_sumout ;
wire \Add69~86 ;
wire \Add49~49_sumout ;
wire \Add49~50 ;
wire \Add75~89_sumout ;
wire \Add75~90 ;
wire \Add51~49_sumout ;
wire \Add51~50 ;
wire \Add49~53_sumout ;
wire \Add49~54 ;
wire \Add51~53_sumout ;
wire \Add51~54 ;
wire \Add49~57_sumout ;
wire \Add49~58 ;
wire \Add51~57_sumout ;
wire \Add51~58 ;
wire \Add49~61_sumout ;
wire \Add49~62 ;
wire \Add51~61_sumout ;
wire \Add51~62 ;
wire \Add49~65_sumout ;
wire \Add49~66 ;
wire \Add51~65_sumout ;
wire \Add51~66 ;
wire \Add1~37_sumout ;
wire \Add1~38 ;
wire \Add2~45_sumout ;
wire \Add2~46 ;
wire \Add29~38_cout ;
wire \Add1~41_sumout ;
wire \Add1~42 ;
wire \Add1~45_sumout ;
wire \Add1~46 ;
wire \Add2~49_sumout ;
wire \Add2~50 ;
wire \Add1~49_sumout ;
wire \Add1~50 ;
wire \Add2~53_sumout ;
wire \Add2~54 ;
wire \Add1~53_sumout ;
wire \Add1~54 ;
wire \Add1~57_sumout ;
wire \Add1~58 ;
wire \Add5~57_sumout ;
wire \Add5~58 ;
wire \Add6~57_sumout ;
wire \Add6~58 ;
wire \Add6~59 ;
wire \Add7~57_sumout ;
wire \Add7~58 ;
wire \Add8~57_sumout ;
wire \Add8~58 ;
wire \Add9~57_sumout ;
wire \Add9~58 ;
wire \Add10~57_sumout ;
wire \Add10~58 ;
wire \Add11~57_sumout ;
wire \Add11~58 ;
wire \Add12~57_sumout ;
wire \Add12~58 ;
wire \Add13~57_sumout ;
wire \Add13~58 ;
wire \Add15~61_sumout ;
wire \Add15~62 ;
wire \Add16~61_sumout ;
wire \Add16~62 ;
wire \Add17~61_sumout ;
wire \Add17~62 ;
wire \Add18~61_sumout ;
wire \Add18~62 ;
wire \Add49~69_sumout ;
wire \Add49~70 ;
wire \Add55~73_sumout ;
wire \Add55~74 ;
wire \Add57~77_sumout ;
wire \Add57~78 ;
wire \Add63~81_sumout ;
wire \Add63~82 ;
wire \Add65~85_sumout ;
wire \Add65~86 ;
wire \Add71~89_sumout ;
wire \Add71~90 ;
wire \Add73~93_sumout ;
wire \Add73~94 ;
wire \Add51~69_sumout ;
wire \Add51~70 ;
wire \Add53~73_sumout ;
wire \Add53~74 ;
wire \Add59~77_sumout ;
wire \Add59~78 ;
wire \Add61~81_sumout ;
wire \Add61~82 ;
wire \Add67~85_sumout ;
wire \Add67~86 ;
wire \Add69~89_sumout ;
wire \Add69~90 ;
wire \Add75~93_sumout ;
wire \Add75~94 ;
wire \Add29~42_cout ;
wire \Add5~61_sumout ;
wire \Add5~62 ;
wire \Add6~61_sumout ;
wire \Add6~62 ;
wire \Add6~63 ;
wire \Add7~61_sumout ;
wire \Add7~62 ;
wire \Add8~61_sumout ;
wire \Add8~62 ;
wire \Add9~61_sumout ;
wire \Add9~62 ;
wire \Add10~61_sumout ;
wire \Add10~62 ;
wire \Add11~61_sumout ;
wire \Add11~62 ;
wire \Add12~61_sumout ;
wire \Add12~62 ;
wire \Add13~61_sumout ;
wire \Add13~62 ;
wire \Add15~65_sumout ;
wire \Add15~66 ;
wire \Add16~65_sumout ;
wire \Add16~66 ;
wire \Add17~65_sumout ;
wire \Add17~66 ;
wire \Add18~65_sumout ;
wire \Add18~66 ;
wire \Add47~1_sumout ;
wire \Add45~1_sumout ;
wire \Add45~5_sumout ;
wire \Add45~6 ;
wire \Add45~9_sumout ;
wire \Add45~10 ;
wire \Add45~13_sumout ;
wire \Add45~14 ;
wire \Add47~5_sumout ;
wire \Add47~6 ;
wire \Add45~17_sumout ;
wire \Add45~18 ;
wire \Add47~9_sumout ;
wire \Add47~10 ;
wire \Add45~21_sumout ;
wire \Add45~22 ;
wire \Add47~13_sumout ;
wire \Add47~14 ;
wire \Add45~25_sumout ;
wire \Add45~26 ;
wire \Add47~17_sumout ;
wire \Add47~18 ;
wire \Add45~29_sumout ;
wire \Add45~30 ;
wire \Add47~21_sumout ;
wire \Add47~22 ;
wire \Add45~33_sumout ;
wire \Add45~34 ;
wire \Add45~37_sumout ;
wire \Add45~38 ;
wire \Add47~25_sumout ;
wire \Add47~26 ;
wire \Add49~73_sumout ;
wire \Add49~74 ;
wire \Add55~77_sumout ;
wire \Add55~78 ;
wire \Add57~81_sumout ;
wire \Add57~82 ;
wire \Add63~85_sumout ;
wire \Add63~86 ;
wire \Add65~89_sumout ;
wire \Add65~90 ;
wire \Add71~93_sumout ;
wire \Add71~94 ;
wire \Add45~41_sumout ;
wire \Add45~42 ;
wire \Add73~97_sumout ;
wire \Add73~98 ;
wire \Add45~45_sumout ;
wire \Add45~46 ;
wire \Add47~29_sumout ;
wire \Add47~30 ;
wire \Add47~33_sumout ;
wire \Add47~34 ;
wire \Add47~37_sumout ;
wire \Add47~38 ;
wire \Add47~41_sumout ;
wire \Add47~42 ;
wire \Add47~45_sumout ;
wire \Add47~46 ;
wire \Add47~49_sumout ;
wire \Add47~50 ;
wire \Add47~53_sumout ;
wire \Add47~54 ;
wire \Add45~49_sumout ;
wire \Add45~50 ;
wire \Add51~73_sumout ;
wire \Add51~74 ;
wire \Add53~77_sumout ;
wire \Add53~78 ;
wire \Add59~81_sumout ;
wire \Add59~82 ;
wire \Add61~85_sumout ;
wire \Add61~86 ;
wire \Add67~89_sumout ;
wire \Add67~90 ;
wire \Add69~93_sumout ;
wire \Add69~94 ;
wire \Add75~97_sumout ;
wire \Add75~98 ;
wire \Add45~53_sumout ;
wire \Add45~54 ;
wire \Add47~57_sumout ;
wire \Add47~58 ;
wire \Add45~57_sumout ;
wire \Add45~58 ;
wire \Add47~61_sumout ;
wire \Add47~62 ;
wire \Add45~61_sumout ;
wire \Add45~62 ;
wire \Add47~65_sumout ;
wire \Add47~66 ;
wire \Add45~65_sumout ;
wire \Add45~66 ;
wire \Add29~46_cout ;
wire \Add5~65_sumout ;
wire \Add5~66 ;
wire \Add6~65_sumout ;
wire \Add6~66 ;
wire \Add6~67 ;
wire \Add7~65_sumout ;
wire \Add7~66 ;
wire \Add8~65_sumout ;
wire \Add8~66 ;
wire \Add9~65_sumout ;
wire \Add9~66 ;
wire \Add10~65_sumout ;
wire \Add10~66 ;
wire \Add11~65_sumout ;
wire \Add11~66 ;
wire \Add12~65_sumout ;
wire \Add12~66 ;
wire \Add13~65_sumout ;
wire \Add13~66 ;
wire \Add16~69_sumout ;
wire \Add16~70 ;
wire \Add17~70_cout ;
wire \Add44~1_sumout ;
wire \Add43~1_sumout ;
wire \Add41~1_sumout ;
wire \Add42~1_sumout ;
wire \Add44~5_sumout ;
wire \Add44~6 ;
wire \Add43~5_sumout ;
wire \Add43~6 ;
wire \Add44~9_sumout ;
wire \Add44~10 ;
wire \Add43~9_sumout ;
wire \Add43~10 ;
wire \Add44~13_sumout ;
wire \Add44~14 ;
wire \Add43~13_sumout ;
wire \Add43~14 ;
wire \Add41~5_sumout ;
wire \Add41~6 ;
wire \Add42~5_sumout ;
wire \Add42~6 ;
wire \Add44~17_sumout ;
wire \Add44~18 ;
wire \Add43~17_sumout ;
wire \Add43~18 ;
wire \Add41~9_sumout ;
wire \Add41~10 ;
wire \Add42~9_sumout ;
wire \Add42~10 ;
wire \Add44~21_sumout ;
wire \Add44~22 ;
wire \Add43~21_sumout ;
wire \Add43~22 ;
wire \Add41~13_sumout ;
wire \Add41~14 ;
wire \Add42~13_sumout ;
wire \Add42~14 ;
wire \Add44~25_sumout ;
wire \Add44~26 ;
wire \Add43~25_sumout ;
wire \Add43~26 ;
wire \Add41~17_sumout ;
wire \Add41~18 ;
wire \Add42~17_sumout ;
wire \Add42~18 ;
wire \Add44~29_sumout ;
wire \Add44~30 ;
wire \Add43~29_sumout ;
wire \Add43~30 ;
wire \Add41~21_sumout ;
wire \Add41~22 ;
wire \Add42~21_sumout ;
wire \Add42~22 ;
wire \Add44~33_sumout ;
wire \Add44~34 ;
wire \Add43~33_sumout ;
wire \Add43~34 ;
wire \Add41~25_sumout ;
wire \Add41~26 ;
wire \Add42~25_sumout ;
wire \Add42~26 ;
wire \Add44~37_sumout ;
wire \Add44~38 ;
wire \Add43~37_sumout ;
wire \Add43~38 ;
wire \Add44~41_sumout ;
wire \Add44~42 ;
wire \Add43~41_sumout ;
wire \Add43~42 ;
wire \Add41~29_sumout ;
wire \Add41~30 ;
wire \Add42~29_sumout ;
wire \Add42~30 ;
wire \Add47~69_sumout ;
wire \Add47~70 ;
wire \Add49~77_sumout ;
wire \Add49~78 ;
wire \Add55~81_sumout ;
wire \Add55~82 ;
wire \Add57~85_sumout ;
wire \Add57~86 ;
wire \Add63~89_sumout ;
wire \Add63~90 ;
wire \Add65~93_sumout ;
wire \Add65~94 ;
wire \Add71~97_sumout ;
wire \Add71~98 ;
wire \Add44~45_sumout ;
wire \Add44~46 ;
wire \Add43~45_sumout ;
wire \Add43~46 ;
wire \Add73~101_sumout ;
wire \Add73~102 ;
wire \Add41~33_sumout ;
wire \Add41~34 ;
wire \Add42~33_sumout ;
wire \Add42~34 ;
wire \Add41~37_sumout ;
wire \Add41~38 ;
wire \Add42~37_sumout ;
wire \Add42~38 ;
wire \Add41~41_sumout ;
wire \Add41~42 ;
wire \Add42~41_sumout ;
wire \Add42~42 ;
wire \Add41~45_sumout ;
wire \Add41~46 ;
wire \Add42~45_sumout ;
wire \Add42~46 ;
wire \Add41~49_sumout ;
wire \Add41~50 ;
wire \Add42~49_sumout ;
wire \Add42~50 ;
wire \Add41~53_sumout ;
wire \Add41~54 ;
wire \Add42~53_sumout ;
wire \Add42~54 ;
wire \Add44~49_sumout ;
wire \Add44~50 ;
wire \Add43~49_sumout ;
wire \Add43~50 ;
wire \Add45~69_sumout ;
wire \Add45~70 ;
wire \Add51~77_sumout ;
wire \Add51~78 ;
wire \Add53~81_sumout ;
wire \Add53~82 ;
wire \Add59~85_sumout ;
wire \Add59~86 ;
wire \Add61~89_sumout ;
wire \Add61~90 ;
wire \Add67~93_sumout ;
wire \Add67~94 ;
wire \Add69~97_sumout ;
wire \Add69~98 ;
wire \Add75~101_sumout ;
wire \Add75~102 ;
wire \Add44~53_sumout ;
wire \Add44~54 ;
wire \Add43~53_sumout ;
wire \Add43~54 ;
wire \Add41~57_sumout ;
wire \Add41~58 ;
wire \Add42~57_sumout ;
wire \Add42~58 ;
wire \Add44~57_sumout ;
wire \Add44~58 ;
wire \Add43~57_sumout ;
wire \Add43~58 ;
wire \Add41~61_sumout ;
wire \Add41~62 ;
wire \Add42~61_sumout ;
wire \Add42~62 ;
wire \Add44~61_sumout ;
wire \Add44~62 ;
wire \Add43~61_sumout ;
wire \Add43~62 ;
wire \Add5~69_sumout ;
wire \Add5~70 ;
wire \Add6~69_sumout ;
wire \Add6~70 ;
wire \Add6~71 ;
wire \Add7~69_sumout ;
wire \Add7~70 ;
wire \Add8~69_sumout ;
wire \Add8~70 ;
wire \Add9~69_sumout ;
wire \Add9~70 ;
wire \Add10~69_sumout ;
wire \Add10~70 ;
wire \Add11~69_sumout ;
wire \Add11~70 ;
wire \Add12~69_sumout ;
wire \Add12~70 ;
wire \Add13~69_sumout ;
wire \Add13~70 ;
wire \Add13~73_sumout ;
wire \Add13~74 ;
wire \Add41~65_sumout ;
wire \Add41~66 ;
wire \Add42~65_sumout ;
wire \Add42~66 ;
wire \Add47~73_sumout ;
wire \Add47~74 ;
wire \Add49~81_sumout ;
wire \Add49~82 ;
wire \Add55~85_sumout ;
wire \Add55~86 ;
wire \Add57~89_sumout ;
wire \Add57~90 ;
wire \Add63~93_sumout ;
wire \Add63~94 ;
wire \Add65~97_sumout ;
wire \Add65~98 ;
wire \Add71~101_sumout ;
wire \Add71~102 ;
wire \Add73~105_sumout ;
wire \Add73~106 ;
wire \Add44~65_sumout ;
wire \Add44~66 ;
wire \Add43~65_sumout ;
wire \Add43~66 ;
wire \Add45~73_sumout ;
wire \Add45~74 ;
wire \Add51~81_sumout ;
wire \Add51~82 ;
wire \Add53~85_sumout ;
wire \Add53~86 ;
wire \Add59~89_sumout ;
wire \Add59~90 ;
wire \Add61~93_sumout ;
wire \Add61~94 ;
wire \Add67~97_sumout ;
wire \Add67~98 ;
wire \Add69~101_sumout ;
wire \Add69~102 ;
wire \Add75~105_sumout ;
wire \Add75~106 ;
wire \Add5~73_sumout ;
wire \Add5~74 ;
wire \Add6~73_sumout ;
wire \Add6~74 ;
wire \Add6~75 ;
wire \Add7~73_sumout ;
wire \Add7~74 ;
wire \Add8~73_sumout ;
wire \Add8~74 ;
wire \Add9~73_sumout ;
wire \Add9~74 ;
wire \Add10~73_sumout ;
wire \Add10~74 ;
wire \Add11~73_sumout ;
wire \Add11~74 ;
wire \Add9~77_sumout ;
wire \Add9~78 ;
wire \Add10~77_sumout ;
wire \Add10~78 ;
wire \Add9~81_sumout ;
wire \Add9~82 ;
wire \Add11~77_sumout ;
wire \Add11~78 ;
wire \Add13~78_cout ;
wire \Add41~69_sumout ;
wire \Add41~70 ;
wire \Add42~69_sumout ;
wire \Add42~70 ;
wire \Add47~77_sumout ;
wire \Add47~78 ;
wire \Add49~85_sumout ;
wire \Add49~86 ;
wire \Add55~89_sumout ;
wire \Add55~90 ;
wire \Add57~93_sumout ;
wire \Add57~94 ;
wire \Add63~97_sumout ;
wire \Add63~98 ;
wire \Add65~101_sumout ;
wire \Add65~102 ;
wire \Add71~105_sumout ;
wire \Add71~106 ;
wire \Add73~109_sumout ;
wire \Add73~110 ;
wire \Add44~69_sumout ;
wire \Add44~70 ;
wire \Add43~69_sumout ;
wire \Add43~70 ;
wire \Add45~77_sumout ;
wire \Add45~78 ;
wire \Add51~85_sumout ;
wire \Add51~86 ;
wire \Add53~89_sumout ;
wire \Add53~90 ;
wire \Add59~93_sumout ;
wire \Add59~94 ;
wire \Add61~97_sumout ;
wire \Add61~98 ;
wire \Add67~101_sumout ;
wire \Add67~102 ;
wire \Add69~105_sumout ;
wire \Add69~106 ;
wire \Add75~109_sumout ;
wire \Add75~110 ;
wire \Add6~78_cout ;
wire \Add6~79 ;
wire \Add7~77_sumout ;
wire \Add7~78 ;
wire \Add8~77_sumout ;
wire \Add8~78 ;
wire \Add7~81_sumout ;
wire \Add7~82 ;
wire \Add8~81_sumout ;
wire \Add8~82 ;
wire \Add10~82_cout ;
wire \Add41~73_sumout ;
wire \Add41~74 ;
wire \Add42~73_sumout ;
wire \Add42~74 ;
wire \Add47~81_sumout ;
wire \Add47~82 ;
wire \Add49~89_sumout ;
wire \Add49~90 ;
wire \Add55~93_sumout ;
wire \Add55~94 ;
wire \Add57~97_sumout ;
wire \Add57~98 ;
wire \Add63~101_sumout ;
wire \Add63~102 ;
wire \Add65~105_sumout ;
wire \Add65~106 ;
wire \Add71~109_sumout ;
wire \Add71~110 ;
wire \Add73~113_sumout ;
wire \Add73~114 ;
wire \Add44~73_sumout ;
wire \Add44~74 ;
wire \Add43~73_sumout ;
wire \Add43~74 ;
wire \Add45~81_sumout ;
wire \Add45~82 ;
wire \Add51~89_sumout ;
wire \Add51~90 ;
wire \Add53~93_sumout ;
wire \Add53~94 ;
wire \Add59~97_sumout ;
wire \Add59~98 ;
wire \Add61~101_sumout ;
wire \Add61~102 ;
wire \Add67~105_sumout ;
wire \Add67~106 ;
wire \Add69~109_sumout ;
wire \Add69~110 ;
wire \Add75~113_sumout ;
wire \Add75~114 ;
wire \Add6~82_cout ;
wire \Add6~83 ;
wire \Add8~86_cout ;
wire \Add10~86_cout ;
wire \Add41~77_sumout ;
wire \Add41~78 ;
wire \Add42~77_sumout ;
wire \Add42~78 ;
wire \Add47~85_sumout ;
wire \Add47~86 ;
wire \Add49~93_sumout ;
wire \Add49~94 ;
wire \Add55~97_sumout ;
wire \Add55~98 ;
wire \Add57~101_sumout ;
wire \Add57~102 ;
wire \Add63~105_sumout ;
wire \Add63~106 ;
wire \Add65~109_sumout ;
wire \Add65~110 ;
wire \Add71~113_sumout ;
wire \Add71~114 ;
wire \Add73~117_sumout ;
wire \Add73~118 ;
wire \Add44~77_sumout ;
wire \Add44~78 ;
wire \Add43~77_sumout ;
wire \Add43~78 ;
wire \Add45~85_sumout ;
wire \Add45~86 ;
wire \Add51~93_sumout ;
wire \Add51~94 ;
wire \Add53~97_sumout ;
wire \Add53~98 ;
wire \Add59~101_sumout ;
wire \Add59~102 ;
wire \Add61~105_sumout ;
wire \Add61~106 ;
wire \Add67~109_sumout ;
wire \Add67~110 ;
wire \Add69~113_sumout ;
wire \Add69~114 ;
wire \Add75~117_sumout ;
wire \Add75~118 ;
wire \Add6~86_cout ;
wire \Add6~87 ;
wire \Add8~90_cout ;
wire \Add41~81_sumout ;
wire \Add41~82 ;
wire \Add42~81_sumout ;
wire \Add42~82 ;
wire \Add47~89_sumout ;
wire \Add47~90 ;
wire \Add49~97_sumout ;
wire \Add49~98 ;
wire \Add55~101_sumout ;
wire \Add55~102 ;
wire \Add57~105_sumout ;
wire \Add57~106 ;
wire \Add63~109_sumout ;
wire \Add63~110 ;
wire \Add65~113_sumout ;
wire \Add65~114 ;
wire \Add71~117_sumout ;
wire \Add71~118 ;
wire \Add73~121_sumout ;
wire \Add73~122 ;
wire \Add44~81_sumout ;
wire \Add44~82 ;
wire \Add43~81_sumout ;
wire \Add43~82 ;
wire \Add45~89_sumout ;
wire \Add45~90 ;
wire \Add51~97_sumout ;
wire \Add51~98 ;
wire \Add53~101_sumout ;
wire \Add53~102 ;
wire \Add59~105_sumout ;
wire \Add59~106 ;
wire \Add61~109_sumout ;
wire \Add61~110 ;
wire \Add67~113_sumout ;
wire \Add67~114 ;
wire \Add69~117_sumout ;
wire \Add69~118 ;
wire \Add75~121_sumout ;
wire \Add75~122 ;
wire \Add6~90_cout ;
wire \Add6~91 ;
wire \Add8~94_cout ;
wire \Add41~85_sumout ;
wire \Add41~86 ;
wire \Add42~85_sumout ;
wire \Add42~86 ;
wire \Add47~93_sumout ;
wire \Add47~94 ;
wire \Add49~101_sumout ;
wire \Add49~102 ;
wire \Add55~105_sumout ;
wire \Add55~106 ;
wire \Add57~109_sumout ;
wire \Add57~110 ;
wire \Add63~113_sumout ;
wire \Add63~114 ;
wire \Add65~117_sumout ;
wire \Add65~118 ;
wire \Add71~121_sumout ;
wire \Add71~122 ;
wire \Add73~125_sumout ;
wire \Add73~126 ;
wire \Add44~85_sumout ;
wire \Add44~86 ;
wire \Add43~85_sumout ;
wire \Add43~86 ;
wire \Add45~93_sumout ;
wire \Add45~94 ;
wire \Add51~101_sumout ;
wire \Add51~102 ;
wire \Add53~105_sumout ;
wire \Add53~106 ;
wire \Add59~109_sumout ;
wire \Add59~110 ;
wire \Add61~113_sumout ;
wire \Add61~114 ;
wire \Add67~117_sumout ;
wire \Add67~118 ;
wire \Add69~121_sumout ;
wire \Add69~122 ;
wire \Add75~125_sumout ;
wire \Add75~126 ;
wire \Add41~89_sumout ;
wire \Add41~90 ;
wire \Add42~89_sumout ;
wire \Add42~90 ;
wire \Add47~97_sumout ;
wire \Add47~98 ;
wire \Add49~105_sumout ;
wire \Add49~106 ;
wire \Add55~109_sumout ;
wire \Add55~110 ;
wire \Add57~113_sumout ;
wire \Add57~114 ;
wire \Add63~117_sumout ;
wire \Add63~118 ;
wire \Add65~121_sumout ;
wire \Add65~122 ;
wire \Add71~125_sumout ;
wire \Add71~126 ;
wire \Add73~129_sumout ;
wire \Add73~130 ;
wire \Add44~89_sumout ;
wire \Add44~90 ;
wire \Add43~89_sumout ;
wire \Add43~90 ;
wire \Add45~97_sumout ;
wire \Add45~98 ;
wire \Add51~105_sumout ;
wire \Add51~106 ;
wire \Add53~109_sumout ;
wire \Add53~110 ;
wire \Add59~113_sumout ;
wire \Add59~114 ;
wire \Add61~117_sumout ;
wire \Add61~118 ;
wire \Add67~121_sumout ;
wire \Add67~122 ;
wire \Add69~125_sumout ;
wire \Add69~126 ;
wire \Add75~129_sumout ;
wire \Add75~130 ;
wire \Add41~93_sumout ;
wire \Add41~94 ;
wire \Add42~93_sumout ;
wire \Add42~94 ;
wire \Add47~101_sumout ;
wire \Add47~102 ;
wire \Add49~109_sumout ;
wire \Add49~110 ;
wire \Add55~113_sumout ;
wire \Add55~114 ;
wire \Add57~117_sumout ;
wire \Add57~118 ;
wire \Add63~121_sumout ;
wire \Add63~122 ;
wire \Add65~125_sumout ;
wire \Add65~126 ;
wire \Add71~129_sumout ;
wire \Add71~130 ;
wire \Add73~134_cout ;
wire \Add44~93_sumout ;
wire \Add44~94 ;
wire \Add43~93_sumout ;
wire \Add43~94 ;
wire \Add45~101_sumout ;
wire \Add45~102 ;
wire \Add51~109_sumout ;
wire \Add51~110 ;
wire \Add53~113_sumout ;
wire \Add53~114 ;
wire \Add59~117_sumout ;
wire \Add59~118 ;
wire \Add61~121_sumout ;
wire \Add61~122 ;
wire \Add67~125_sumout ;
wire \Add67~126 ;
wire \Add69~129_sumout ;
wire \Add69~130 ;
wire \Add75~134_cout ;
wire \Add41~97_sumout ;
wire \Add41~98 ;
wire \Add42~97_sumout ;
wire \Add42~98 ;
wire \Add47~105_sumout ;
wire \Add47~106 ;
wire \Add49~113_sumout ;
wire \Add49~114 ;
wire \Add55~117_sumout ;
wire \Add55~118 ;
wire \Add57~121_sumout ;
wire \Add57~122 ;
wire \Add63~125_sumout ;
wire \Add63~126 ;
wire \Add65~129_sumout ;
wire \Add65~130 ;
wire \Add71~134_cout ;
wire \Add44~97_sumout ;
wire \Add44~98 ;
wire \Add43~97_sumout ;
wire \Add43~98 ;
wire \Add45~105_sumout ;
wire \Add45~106 ;
wire \Add51~113_sumout ;
wire \Add51~114 ;
wire \Add53~117_sumout ;
wire \Add53~118 ;
wire \Add59~121_sumout ;
wire \Add59~122 ;
wire \Add61~125_sumout ;
wire \Add61~126 ;
wire \Add67~129_sumout ;
wire \Add67~130 ;
wire \Add69~134_cout ;
wire \Add41~101_sumout ;
wire \Add41~102 ;
wire \Add42~101_sumout ;
wire \Add42~102 ;
wire \Add47~109_sumout ;
wire \Add47~110 ;
wire \Add49~117_sumout ;
wire \Add49~118 ;
wire \Add55~121_sumout ;
wire \Add55~122 ;
wire \Add57~125_sumout ;
wire \Add57~126 ;
wire \Add63~129_sumout ;
wire \Add63~130 ;
wire \Add65~134_cout ;
wire \Add44~101_sumout ;
wire \Add44~102 ;
wire \Add43~101_sumout ;
wire \Add43~102 ;
wire \Add45~109_sumout ;
wire \Add45~110 ;
wire \Add51~117_sumout ;
wire \Add51~118 ;
wire \Add53~121_sumout ;
wire \Add53~122 ;
wire \Add59~125_sumout ;
wire \Add59~126 ;
wire \Add61~129_sumout ;
wire \Add61~130 ;
wire \Add67~134_cout ;
wire \Add41~105_sumout ;
wire \Add41~106 ;
wire \Add42~105_sumout ;
wire \Add42~106 ;
wire \Add47~113_sumout ;
wire \Add47~114 ;
wire \Add49~121_sumout ;
wire \Add49~122 ;
wire \Add55~125_sumout ;
wire \Add55~126 ;
wire \Add57~129_sumout ;
wire \Add57~130 ;
wire \Add63~134_cout ;
wire \Add44~105_sumout ;
wire \Add44~106 ;
wire \Add43~105_sumout ;
wire \Add43~106 ;
wire \Add45~113_sumout ;
wire \Add45~114 ;
wire \Add51~121_sumout ;
wire \Add51~122 ;
wire \Add53~125_sumout ;
wire \Add53~126 ;
wire \Add59~129_sumout ;
wire \Add59~130 ;
wire \Add61~134_cout ;
wire \Add41~109_sumout ;
wire \Add41~110 ;
wire \Add42~109_sumout ;
wire \Add42~110 ;
wire \Add47~117_sumout ;
wire \Add47~118 ;
wire \Add49~125_sumout ;
wire \Add49~126 ;
wire \Add55~129_sumout ;
wire \Add55~130 ;
wire \Add57~134_cout ;
wire \Add44~109_sumout ;
wire \Add44~110 ;
wire \Add43~109_sumout ;
wire \Add43~110 ;
wire \Add45~117_sumout ;
wire \Add45~118 ;
wire \Add51~125_sumout ;
wire \Add51~126 ;
wire \Add53~129_sumout ;
wire \Add53~130 ;
wire \Add59~134_cout ;
wire \Add41~113_sumout ;
wire \Add41~114 ;
wire \Add42~113_sumout ;
wire \Add42~114 ;
wire \Add47~121_sumout ;
wire \Add47~122 ;
wire \Add49~129_sumout ;
wire \Add49~130 ;
wire \Add55~134_cout ;
wire \Add44~113_sumout ;
wire \Add44~114 ;
wire \Add43~113_sumout ;
wire \Add43~114 ;
wire \Add45~121_sumout ;
wire \Add45~122 ;
wire \Add51~129_sumout ;
wire \Add51~130 ;
wire \Add53~134_cout ;
wire \Add41~117_sumout ;
wire \Add41~118 ;
wire \Add42~117_sumout ;
wire \Add42~118 ;
wire \Add47~125_sumout ;
wire \Add47~126 ;
wire \Add49~134_cout ;
wire \Add44~117_sumout ;
wire \Add44~118 ;
wire \Add43~117_sumout ;
wire \Add43~118 ;
wire \Add45~125_sumout ;
wire \Add45~126 ;
wire \Add51~134_cout ;
wire \Add41~121_sumout ;
wire \Add41~122 ;
wire \Add42~121_sumout ;
wire \Add42~122 ;
wire \Add47~129_sumout ;
wire \Add47~130 ;
wire \Add44~121_sumout ;
wire \Add44~122 ;
wire \Add43~121_sumout ;
wire \Add43~122 ;
wire \Add45~129_sumout ;
wire \Add45~130 ;
wire \Add42~125_sumout ;
wire \Add42~126 ;
wire \Add47~135_cout ;
wire \Add44~125_sumout ;
wire \Add44~126 ;
wire \Add45~135_cout ;
wire \redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ;
wire \redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ;
wire \redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ;
wire \redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ;
wire \aip1E_9high_uid177_sincosTest_a[16]~0_combout ;
wire \aip1E_8_uid159_sincosTest_a[18]~0_combout ;
wire \Add20~0_combout ;
wire \aip1E_10high_uid196_sincosTest_a[15]~0_combout ;
wire \aip1E_8_uid159_sincosTest_o[15]~0_combout ;
wire \aip1E_8_uid159_sincosTest_o[14]~1_combout ;
wire \Add22~0_combout ;
wire \aip1E_11high_uid215_sincosTest_a[14]~0_combout ;
wire \aip1E_8_uid159_sincosTest_o[13]~2_combout ;
wire \aip1E_10high_uid196_sincosTest_o[13]~0_combout ;
wire \Add24~0_combout ;
wire \aip1E_12high_uid234_sincosTest_a[13]~0_combout ;
wire \aip1E_8_uid159_sincosTest_o[12]~3_combout ;
wire \aip1E_13high_uid253_sincosTest_a[12]~0_combout ;
wire \aip1E_8_uid159_sincosTest_o[11]~4_combout ;
wire \aip1E_12high_uid234_sincosTest_o[11]~0_combout ;
wire \aip1E_14high_uid272_sincosTest_a[11]~0_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][18]~q ;
wire \redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][30]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][29]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][28]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][16]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][31]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][17]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][30]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][29]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][28]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][16]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][31]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][17]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][18]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][18]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][19]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][19]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][20]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][20]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][21]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][21]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][22]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][22]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][23]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][23]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][24]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][24]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][25]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][25]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][26]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][26]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][27]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][27]~q ;
wire \aip1E_8_uid159_sincosTest_o[10]~5_combout ;
wire \aip1E_4_uid95_sincosTest_a[22]~0_combout ;
wire \aip1E_5_uid111_sincosTest_a[21]~0_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][17]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][16]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][14]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][13]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][15]~q ;
wire \aip1E_8_uid159_sincosTest_o[9]~6_combout ;
wire \aip1E_3_uid79_sincosTest_a[23]~0_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][10]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][14]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][14]~q ;
wire \aip1E_8_uid159_sincosTest_o[8]~7_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][9]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][13]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][13]~q ;
wire \aip1E_8_uid159_sincosTest_o[7]~8_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][8]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][12]~q ;
wire \aip1E_8_uid159_sincosTest_o[6]~9_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][7]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][11]~q ;
wire \aip1E_8_uid159_sincosTest_o[5]~10_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][6]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][10]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][10]~q ;
wire \aip1E_8_uid159_sincosTest_o[4]~11_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][5]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][9]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][9]~q ;
wire \aip1E_8_uid159_sincosTest_o[3]~12_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][4]~q ;
wire \redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][30]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][29]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][28]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][31]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][26]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][30]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][25]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][29]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][24]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][28]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][23]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][27]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][22]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][21]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][16]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][27]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][8]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][31]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][17]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][26]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][25]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][24]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][23]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][22]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][21]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][16]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][8]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][17]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][18]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][18]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][19]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][19]~q ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][20]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][20]~q ;
wire \aip1E_8_uid159_sincosTest_o[2]~13_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][3]~q ;
wire \aip1E_6_uid127_sincosTest_a[20]~0_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][7]~q ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][7]~q ;
wire \aip1E_8_uid159_sincosTest_o[1]~14_combout ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][2]~q ;
wire \redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][1]~q ;
wire \xip1E_5_uid108_sincosTest_b[27]~0_combout ;
wire \xip1E_5_uid108_sincosTest_a[31]~0_combout ;
wire \xip1E_5_uid108_sincosTest_b[26]~1_combout ;
wire \xip1E_5_uid108_sincosTest_b[25]~2_combout ;
wire \xip1E_5_uid108_sincosTest_b[24]~3_combout ;
wire \xip1E_5_uid108_sincosTest_a[30]~1_combout ;
wire \xip1E_5_uid108_sincosTest_b[22]~4_combout ;
wire \xip1E_5_uid108_sincosTest_a[29]~2_combout ;
wire \xip1E_5_uid108_sincosTest_b[21]~5_combout ;
wire \xip1E_5_uid108_sincosTest_a[28]~3_combout ;
wire \xip1E_5_uid108_sincosTest_b[20]~6_combout ;
wire \xip1E_5_uid108_sincosTest_a[27]~4_combout ;
wire \xip1E_5_uid108_sincosTest_b[19]~7_combout ;
wire \xip1E_5_uid108_sincosTest_a[26]~5_combout ;
wire \xip1E_5_uid108_sincosTest_b[18]~8_combout ;
wire \xip1E_5_uid108_sincosTest_a[25]~6_combout ;
wire \xip1E_5_uid108_sincosTest_b[17]~9_combout ;
wire \xip1E_5_uid108_sincosTest_b[16]~10_combout ;
wire \xip1E_5_uid108_sincosTest_a[16]~7_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][14]~q ;
wire \xip1E_5_uid108_sincosTest_b[23]~11_combout ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][6]~q ;
wire \xip1E_5_uid108_sincosTest_a[17]~8_combout ;
wire \xip1E_5_uid108_sincosTest_a[24]~9_combout ;
wire \xip1E_5_uid108_sincosTest_a[23]~10_combout ;
wire \xip1E_5_uid108_sincosTest_a[22]~11_combout ;
wire \xip1E_5_uid108_sincosTest_a[21]~12_combout ;
wire \xip1E_5_uid108_sincosTest_a[20]~13_combout ;
wire \xip1E_5_uid108_sincosTest_b[12]~12_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][14]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][6]~q ;
wire \xip1E_5_uid108_sincosTest_b[13]~13_combout ;
wire \xip1E_5_uid108_sincosTest_a[18]~14_combout ;
wire \xip1E_5_uid108_sincosTest_b[14]~14_combout ;
wire \xip1E_5_uid108_sincosTest_a[19]~15_combout ;
wire \xip1E_5_uid108_sincosTest_b[15]~15_combout ;
wire \xip1E_5_uid108_sincosTest_a[15]~16_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][13]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][5]~q ;
wire \xip1E_5_uid108_sincosTest_b[11]~16_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][13]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][5]~q ;
wire \aip1E_4_uid95_sincosTest_o[2]~0_combout ;
wire \xip1E_5_uid108_sincosTest_a[14]~17_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][4]~q ;
wire \xip1E_5_uid108_sincosTest_b[10]~17_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][4]~q ;
wire \xip1E_5_uid108_sincosTest_a[13]~18_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][3]~q ;
wire \xip1E_5_uid108_sincosTest_b[9]~18_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][3]~q ;
wire \xip1E_5_uid108_sincosTest_a[12]~19_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][10]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][2]~q ;
wire \xip1E_5_uid108_sincosTest_b[8]~19_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][10]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][2]~q ;
wire \xip1E_5_uid108_sincosTest_a[11]~20_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][9]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][1]~q ;
wire \xip1E_5_uid108_sincosTest_b[7]~20_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][9]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][1]~q ;
wire \xip1E_5_uid108_sincosTest_a[10]~21_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][8]~q ;
wire \redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][0]~q ;
wire \xip1E_5_uid108_sincosTest_b[6]~21_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][8]~q ;
wire \redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][0]~q ;
wire \xip1E_5_uid108_sincosTest_a[9]~22_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][7]~q ;
wire \xip1E_5_uid108_sincosTest_b[5]~22_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][7]~q ;
wire \xip1E_5_uid108_sincosTest_a[8]~23_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][6]~q ;
wire \xip1E_5_uid108_sincosTest_b[4]~23_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][6]~q ;
wire \xip1E_5_uid108_sincosTest_a[7]~24_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][5]~q ;
wire \xip1E_5_uid108_sincosTest_b[3]~24_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][5]~q ;
wire \xip1E_5_uid108_sincosTest_a[6]~25_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][4]~q ;
wire \aip1E_9high_uid177_sincosTest_o[14]~0_combout ;
wire \xip1E_5_uid108_sincosTest_b[2]~25_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][4]~q ;
wire \xip1E_5_uid108_sincosTest_a[5]~26_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][3]~q ;
wire \aip1E_8_uid159_sincosTest_o[16]~15_combout ;
wire \xip1E_5_uid108_sincosTest_b[1]~26_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][3]~q ;
wire \xip1E_5_uid108_sincosTest_a[4]~27_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][2]~q ;
wire \xip1E_5_uid108_sincosTest_b[0]~27_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][2]~q ;
wire \xip1E_4_uid92_sincosTest_o[3]~0_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][1]~q ;
wire \yip1E_4_uid93_sincosTest_o[3]~0_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][1]~q ;
wire \xip1E_4_uid92_sincosTest_o[2]~1_combout ;
wire \redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][0]~q ;
wire \yip1E_4_uid93_sincosTest_o[2]~1_combout ;
wire \redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][0]~q ;
wire \xip1E_4_uid92_sincosTest_o[1]~2_combout ;
wire \yip1E_4_uid93_sincosTest_o[1]~2_combout ;
wire \Add47~132_combout ;
wire \Add45~132_combout ;
wire \Add79~134_cout ;
wire \Add79~130 ;
wire \Add79~126 ;
wire \Add79~122 ;
wire \Add79~118 ;
wire \Add79~114 ;
wire \Add79~110 ;
wire \Add79~106 ;
wire \Add79~102 ;
wire \Add79~98 ;
wire \Add79~94 ;
wire \Add79~90 ;
wire \Add79~86 ;
wire \Add79~82 ;
wire \Add79~78 ;
wire \Add79~74 ;
wire \Add79~70 ;
wire \Add79~6 ;
wire \Add79~10 ;
wire \Add79~26 ;
wire \Add79~30 ;
wire \Add79~34 ;
wire \Add79~38 ;
wire \Add79~42 ;
wire \Add79~46 ;
wire \Add79~50 ;
wire \Add79~54 ;
wire \Add79~58 ;
wire \Add79~62 ;
wire \Add79~66 ;
wire \Add79~18 ;
wire \Add79~14 ;
wire \Add79~22 ;
wire \Add79~1_sumout ;
wire \Add77~134_cout ;
wire \Add77~130 ;
wire \Add77~126 ;
wire \Add77~122 ;
wire \Add77~118 ;
wire \Add77~114 ;
wire \Add77~110 ;
wire \Add77~106 ;
wire \Add77~102 ;
wire \Add77~98 ;
wire \Add77~94 ;
wire \Add77~90 ;
wire \Add77~86 ;
wire \Add77~82 ;
wire \Add77~78 ;
wire \Add77~74 ;
wire \Add77~70 ;
wire \Add77~18 ;
wire \Add77~22 ;
wire \Add77~26 ;
wire \Add77~30 ;
wire \Add77~34 ;
wire \Add77~38 ;
wire \Add77~42 ;
wire \Add77~46 ;
wire \Add77~50 ;
wire \Add77~54 ;
wire \Add77~58 ;
wire \Add77~62 ;
wire \Add77~66 ;
wire \Add77~6 ;
wire \Add77~1_sumout ;
wire \Add77~5_sumout ;
wire \Add77~65_sumout ;
wire \Add77~61_sumout ;
wire \Add77~57_sumout ;
wire \Add77~53_sumout ;
wire \Add77~49_sumout ;
wire \Add77~45_sumout ;
wire \Add77~41_sumout ;
wire \Add77~37_sumout ;
wire \Add77~33_sumout ;
wire \Add77~29_sumout ;
wire \Add79~21_sumout ;
wire \Add77~25_sumout ;
wire \Add79~13_sumout ;
wire \Add77~21_sumout ;
wire \Add79~17_sumout ;
wire \Add77~17_sumout ;
wire \Add79~65_sumout ;
wire \Add77~69_sumout ;
wire \Add79~61_sumout ;
wire \Add77~73_sumout ;
wire \Add79~57_sumout ;
wire \Add77~77_sumout ;
wire \Add79~53_sumout ;
wire \Add77~81_sumout ;
wire \Add79~49_sumout ;
wire \Add77~85_sumout ;
wire \Add79~45_sumout ;
wire \Add77~89_sumout ;
wire \Add79~41_sumout ;
wire \Add77~93_sumout ;
wire \Add79~37_sumout ;
wire \Add77~97_sumout ;
wire \Add79~33_sumout ;
wire \Add77~101_sumout ;
wire \Add79~29_sumout ;
wire \Add77~105_sumout ;
wire \Add79~25_sumout ;
wire \Add77~109_sumout ;
wire \Add79~9_sumout ;
wire \Add77~113_sumout ;
wire \Add79~5_sumout ;
wire \Add77~117_sumout ;
wire \Add79~69_sumout ;
wire \Add77~121_sumout ;
wire \Add79~73_sumout ;
wire \Add77~125_sumout ;
wire \Add79~77_sumout ;
wire \Add77~129_sumout ;
wire \Add84~130 ;
wire \Add84~131 ;
wire \Add84~126 ;
wire \Add84~127 ;
wire \Add84~122 ;
wire \Add84~123 ;
wire \Add84~118 ;
wire \Add84~119 ;
wire \Add84~114 ;
wire \Add84~115 ;
wire \Add84~110 ;
wire \Add84~111 ;
wire \Add84~106 ;
wire \Add84~107 ;
wire \Add84~102 ;
wire \Add84~103 ;
wire \Add84~98 ;
wire \Add84~99 ;
wire \Add84~94 ;
wire \Add84~95 ;
wire \Add84~90 ;
wire \Add84~91 ;
wire \Add84~86 ;
wire \Add84~87 ;
wire \Add84~82 ;
wire \Add84~83 ;
wire \Add84~78 ;
wire \Add84~79 ;
wire \Add84~74 ;
wire \Add84~75 ;
wire \Add84~70 ;
wire \Add84~71 ;
wire \Add84~10 ;
wire \Add84~11 ;
wire \Add84~14 ;
wire \Add84~15 ;
wire \Add84~22 ;
wire \Add84~23 ;
wire \Add84~26 ;
wire \Add84~27 ;
wire \Add84~30 ;
wire \Add84~31 ;
wire \Add84~34 ;
wire \Add84~35 ;
wire \Add84~38 ;
wire \Add84~39 ;
wire \Add84~42 ;
wire \Add84~43 ;
wire \Add84~46 ;
wire \Add84~47 ;
wire \Add84~50 ;
wire \Add84~51 ;
wire \Add84~54 ;
wire \Add84~55 ;
wire \Add84~58 ;
wire \Add84~59 ;
wire \Add84~62 ;
wire \Add84~63 ;
wire \Add84~66 ;
wire \Add84~67 ;
wire \Add84~1_sumout ;
wire \Add83~130 ;
wire \Add83~126 ;
wire \Add83~122 ;
wire \Add83~118 ;
wire \Add83~114 ;
wire \Add83~110 ;
wire \Add83~106 ;
wire \Add83~102 ;
wire \Add83~98 ;
wire \Add83~94 ;
wire \Add83~90 ;
wire \Add83~86 ;
wire \Add83~82 ;
wire \Add83~78 ;
wire \Add83~74 ;
wire \Add83~70 ;
wire \Add83~10 ;
wire \Add83~14 ;
wire \Add83~22 ;
wire \Add83~26 ;
wire \Add83~30 ;
wire \Add83~34 ;
wire \Add83~38 ;
wire \Add83~42 ;
wire \Add83~46 ;
wire \Add83~50 ;
wire \Add83~54 ;
wire \Add83~58 ;
wire \Add83~62 ;
wire \Add83~66 ;
wire \Add83~1_sumout ;
wire \Add79~81_sumout ;
wire \Add79~85_sumout ;
wire \Add79~89_sumout ;
wire \Add79~93_sumout ;
wire \Add79~97_sumout ;
wire \Add79~101_sumout ;
wire \Add79~105_sumout ;
wire \Add79~109_sumout ;
wire \Add79~113_sumout ;
wire \Add79~117_sumout ;
wire \Add79~121_sumout ;
wire \Add79~125_sumout ;
wire \Add79~129_sumout ;
wire \Add81~130 ;
wire \Add81~126 ;
wire \Add81~122 ;
wire \Add81~118 ;
wire \Add81~114 ;
wire \Add81~110 ;
wire \Add81~106 ;
wire \Add81~102 ;
wire \Add81~98 ;
wire \Add81~94 ;
wire \Add81~90 ;
wire \Add81~86 ;
wire \Add81~82 ;
wire \Add81~78 ;
wire \Add81~74 ;
wire \Add81~70 ;
wire \Add81~1_sumout ;
wire \Add82~130 ;
wire \Add82~131 ;
wire \Add82~126 ;
wire \Add82~127 ;
wire \Add82~122 ;
wire \Add82~123 ;
wire \Add82~118 ;
wire \Add82~119 ;
wire \Add82~114 ;
wire \Add82~115 ;
wire \Add82~110 ;
wire \Add82~111 ;
wire \Add82~106 ;
wire \Add82~107 ;
wire \Add82~102 ;
wire \Add82~103 ;
wire \Add82~98 ;
wire \Add82~99 ;
wire \Add82~94 ;
wire \Add82~95 ;
wire \Add82~90 ;
wire \Add82~91 ;
wire \Add82~86 ;
wire \Add82~87 ;
wire \Add82~82 ;
wire \Add82~83 ;
wire \Add82~78 ;
wire \Add82~79 ;
wire \Add82~74 ;
wire \Add82~75 ;
wire \Add82~70 ;
wire \Add82~71 ;
wire \Add82~1_sumout ;
wire \xip1E_15_uid286_sincosTest_a[16]~0_combout ;
wire \Add84~65_sumout ;
wire \Add83~65_sumout ;
wire \Add81~69_sumout ;
wire \Add82~69_sumout ;
wire \xip1E_15_uid286_sincosTest_a[15]~2_combout ;
wire \Add84~61_sumout ;
wire \Add83~61_sumout ;
wire \Add81~73_sumout ;
wire \Add82~73_sumout ;
wire \xip1E_15_uid286_sincosTest_a[14]~3_combout ;
wire \Add84~57_sumout ;
wire \Add83~57_sumout ;
wire \Add81~77_sumout ;
wire \Add82~77_sumout ;
wire \xip1E_14_uid267_sincosTest_o[13]~0_combout ;
wire \Add84~53_sumout ;
wire \Add83~53_sumout ;
wire \Add81~81_sumout ;
wire \Add82~81_sumout ;
wire \xip1E_14_uid267_sincosTest_o[12]~1_combout ;
wire \Add84~49_sumout ;
wire \Add83~49_sumout ;
wire \Add81~85_sumout ;
wire \Add82~85_sumout ;
wire \xip1E_14_uid267_sincosTest_o[11]~2_combout ;
wire \Add84~45_sumout ;
wire \Add83~45_sumout ;
wire \Add81~89_sumout ;
wire \Add82~89_sumout ;
wire \xip1E_14_uid267_sincosTest_o[10]~3_combout ;
wire \Add84~41_sumout ;
wire \Add83~41_sumout ;
wire \Add81~93_sumout ;
wire \Add82~93_sumout ;
wire \xip1E_14_uid267_sincosTest_o[9]~4_combout ;
wire \Add84~37_sumout ;
wire \Add83~37_sumout ;
wire \Add81~97_sumout ;
wire \Add82~97_sumout ;
wire \xip1E_14_uid267_sincosTest_o[8]~5_combout ;
wire \Add84~33_sumout ;
wire \Add83~33_sumout ;
wire \Add81~101_sumout ;
wire \Add82~101_sumout ;
wire \xip1E_14_uid267_sincosTest_o[7]~6_combout ;
wire \Add84~29_sumout ;
wire \Add83~29_sumout ;
wire \Add81~105_sumout ;
wire \Add82~105_sumout ;
wire \xip1E_14_uid267_sincosTest_o[6]~7_combout ;
wire \Add84~25_sumout ;
wire \Add83~25_sumout ;
wire \Add81~109_sumout ;
wire \Add82~109_sumout ;
wire \xip1E_14_uid267_sincosTest_o[5]~8_combout ;
wire \Add84~21_sumout ;
wire \Add83~21_sumout ;
wire \Add81~113_sumout ;
wire \Add82~113_sumout ;
wire \xip1E_14_uid267_sincosTest_o[4]~9_combout ;
wire \Add84~13_sumout ;
wire \Add83~13_sumout ;
wire \Add81~117_sumout ;
wire \Add82~117_sumout ;
wire \xip1E_14_uid267_sincosTest_o[3]~10_combout ;
wire \Add84~9_sumout ;
wire \Add83~9_sumout ;
wire \Add81~121_sumout ;
wire \Add82~121_sumout ;
wire \xip1E_14_uid267_sincosTest_o[2]~11_combout ;
wire \Add84~69_sumout ;
wire \Add83~69_sumout ;
wire \Add81~125_sumout ;
wire \Add82~125_sumout ;
wire \xip1E_14_uid267_sincosTest_o[1]~12_combout ;
wire \Add84~73_sumout ;
wire \Add83~73_sumout ;
wire \Add81~129_sumout ;
wire \Add82~129_sumout ;
wire \xip1E_14_uid267_sincosTest_o[0]~13_combout ;
wire \Add90~131_cout ;
wire \Add90~127_cout ;
wire \Add90~123_cout ;
wire \Add90~119_cout ;
wire \Add90~115_cout ;
wire \Add90~111_cout ;
wire \Add90~107_cout ;
wire \Add90~103_cout ;
wire \Add90~99_cout ;
wire \Add90~95_cout ;
wire \Add90~91_cout ;
wire \Add90~87_cout ;
wire \Add90~83_cout ;
wire \Add90~79_cout ;
wire \Add90~75_cout ;
wire \Add90~71_cout ;
wire \Add90~66_cout ;
wire \Add90~1_sumout ;
wire \Add77~2 ;
wire \Add77~9_sumout ;
wire \Add84~2 ;
wire \Add84~3 ;
wire \Add84~5_sumout ;
wire \Add83~2 ;
wire \Add83~5_sumout ;
wire \Add81~2 ;
wire \Add81~5_sumout ;
wire \Add82~2 ;
wire \Add82~3 ;
wire \Add82~5_sumout ;
wire \xip1E_15_uid286_sincosTest_a[17]~1_combout ;
wire \Add90~2 ;
wire \Add90~5_sumout ;
wire \Add92~1_sumout ;
wire \Add94~1_sumout ;
wire \Add77~10 ;
wire \Add77~13_sumout ;
wire \Add81~6 ;
wire \Add81~18 ;
wire \Add81~26 ;
wire \Add81~30 ;
wire \Add81~34 ;
wire \Add81~38 ;
wire \Add81~42 ;
wire \Add81~46 ;
wire \Add81~50 ;
wire \Add81~54 ;
wire \Add81~58 ;
wire \Add81~62 ;
wire \Add81~66 ;
wire \Add81~9_sumout ;
wire \Add82~6 ;
wire \Add82~7 ;
wire \Add82~18 ;
wire \Add82~19 ;
wire \Add82~26 ;
wire \Add82~27 ;
wire \Add82~30 ;
wire \Add82~31 ;
wire \Add82~34 ;
wire \Add82~35 ;
wire \Add82~38 ;
wire \Add82~39 ;
wire \Add82~42 ;
wire \Add82~43 ;
wire \Add82~46 ;
wire \Add82~47 ;
wire \Add82~50 ;
wire \Add82~51 ;
wire \Add82~54 ;
wire \Add82~55 ;
wire \Add82~58 ;
wire \Add82~59 ;
wire \Add82~62 ;
wire \Add82~63 ;
wire \Add82~66 ;
wire \Add82~67 ;
wire \Add82~9_sumout ;
wire \xip1E_15_uid286_sincosTest_b[2]~0_combout ;
wire \Add81~65_sumout ;
wire \Add82~65_sumout ;
wire \xip1E_15_uid286_sincosTest_b[1]~2_combout ;
wire \Add81~61_sumout ;
wire \Add82~61_sumout ;
wire \xip1E_15_uid286_sincosTest_b[0]~3_combout ;
wire \Add81~57_sumout ;
wire \Add82~57_sumout ;
wire \Add84~77_sumout ;
wire \Add83~77_sumout ;
wire \yip1E_14_uid268_sincosTest_o[13]~0_combout ;
wire \Add81~53_sumout ;
wire \Add82~53_sumout ;
wire \Add84~81_sumout ;
wire \Add83~81_sumout ;
wire \yip1E_14_uid268_sincosTest_o[12]~1_combout ;
wire \Add81~49_sumout ;
wire \Add82~49_sumout ;
wire \Add84~85_sumout ;
wire \Add83~85_sumout ;
wire \yip1E_14_uid268_sincosTest_o[11]~2_combout ;
wire \Add81~45_sumout ;
wire \Add82~45_sumout ;
wire \Add84~89_sumout ;
wire \Add83~89_sumout ;
wire \yip1E_14_uid268_sincosTest_o[10]~3_combout ;
wire \Add81~41_sumout ;
wire \Add82~41_sumout ;
wire \Add84~93_sumout ;
wire \Add83~93_sumout ;
wire \yip1E_14_uid268_sincosTest_o[9]~4_combout ;
wire \Add81~37_sumout ;
wire \Add82~37_sumout ;
wire \Add84~97_sumout ;
wire \Add83~97_sumout ;
wire \yip1E_14_uid268_sincosTest_o[8]~5_combout ;
wire \Add81~33_sumout ;
wire \Add82~33_sumout ;
wire \Add84~101_sumout ;
wire \Add83~101_sumout ;
wire \yip1E_14_uid268_sincosTest_o[7]~6_combout ;
wire \Add81~29_sumout ;
wire \Add82~29_sumout ;
wire \Add84~105_sumout ;
wire \Add83~105_sumout ;
wire \yip1E_14_uid268_sincosTest_o[6]~7_combout ;
wire \Add81~25_sumout ;
wire \Add82~25_sumout ;
wire \Add84~109_sumout ;
wire \Add83~109_sumout ;
wire \yip1E_14_uid268_sincosTest_o[5]~8_combout ;
wire \Add81~17_sumout ;
wire \Add82~17_sumout ;
wire \Add84~113_sumout ;
wire \Add83~113_sumout ;
wire \yip1E_14_uid268_sincosTest_o[4]~9_combout ;
wire \Add84~117_sumout ;
wire \Add83~117_sumout ;
wire \yip1E_14_uid268_sincosTest_o[3]~10_combout ;
wire \Add84~121_sumout ;
wire \Add83~121_sumout ;
wire \yip1E_14_uid268_sincosTest_o[2]~11_combout ;
wire \Add84~125_sumout ;
wire \Add83~125_sumout ;
wire \yip1E_14_uid268_sincosTest_o[1]~12_combout ;
wire \Add84~129_sumout ;
wire \Add83~129_sumout ;
wire \yip1E_14_uid268_sincosTest_o[0]~13_combout ;
wire \Add85~131_cout ;
wire \Add85~127_cout ;
wire \Add85~123_cout ;
wire \Add85~119_cout ;
wire \Add85~115_cout ;
wire \Add85~111_cout ;
wire \Add85~107_cout ;
wire \Add85~103_cout ;
wire \Add85~99_cout ;
wire \Add85~95_cout ;
wire \Add85~91_cout ;
wire \Add85~87_cout ;
wire \Add85~83_cout ;
wire \Add85~79_cout ;
wire \Add85~75_cout ;
wire \Add85~71_cout ;
wire \Add85~66_cout ;
wire \Add85~1_sumout ;
wire \Add81~10 ;
wire \Add81~13_sumout ;
wire \Add82~10 ;
wire \Add82~11 ;
wire \Add82~13_sumout ;
wire \xip1E_15_uid286_sincosTest_b[3]~1_combout ;
wire \Add85~2 ;
wire \Add85~5_sumout ;
wire \Add87~1_sumout ;
wire \Add89~1_sumout ;
wire \Add83~6 ;
wire \Add83~17_sumout ;
wire \Add84~6 ;
wire \Add84~7 ;
wire \Add84~17_sumout ;
wire \Add90~68_combout ;
wire \Add90~6 ;
wire \Add90~9_sumout ;
wire \Add92~2 ;
wire \Add92~5_sumout ;
wire \Add94~2 ;
wire \Add94~5_sumout ;
wire \Add82~14 ;
wire \Add82~15 ;
wire \Add82~21_sumout ;
wire \Add81~14 ;
wire \Add81~21_sumout ;
wire \Add85~68_combout ;
wire \Add85~6 ;
wire \Add85~9_sumout ;
wire \Add87~2 ;
wire \Add87~5_sumout ;
wire \Add89~2 ;
wire \Add89~5_sumout ;
wire \Add90~10 ;
wire \Add90~13_sumout ;
wire \Add92~6 ;
wire \Add92~9_sumout ;
wire \Add94~6 ;
wire \Add94~9_sumout ;
wire \Add85~10 ;
wire \Add85~13_sumout ;
wire \Add87~6 ;
wire \Add87~9_sumout ;
wire \Add89~6 ;
wire \Add89~9_sumout ;
wire \Add90~14 ;
wire \Add90~17_sumout ;
wire \Add92~10 ;
wire \Add92~13_sumout ;
wire \Add94~10 ;
wire \Add94~13_sumout ;
wire \Add85~14 ;
wire \Add85~17_sumout ;
wire \Add87~10 ;
wire \Add87~13_sumout ;
wire \Add89~10 ;
wire \Add89~13_sumout ;
wire \Add90~18 ;
wire \Add90~21_sumout ;
wire \Add92~14 ;
wire \Add92~17_sumout ;
wire \Add94~14 ;
wire \Add94~17_sumout ;
wire \Add85~18 ;
wire \Add85~21_sumout ;
wire \Add87~14 ;
wire \Add87~17_sumout ;
wire \Add89~14 ;
wire \Add89~17_sumout ;
wire \Add90~22 ;
wire \Add90~25_sumout ;
wire \Add92~18 ;
wire \Add92~21_sumout ;
wire \Add94~18 ;
wire \Add94~21_sumout ;
wire \Add85~22 ;
wire \Add85~25_sumout ;
wire \Add87~18 ;
wire \Add87~21_sumout ;
wire \Add89~18 ;
wire \Add89~21_sumout ;
wire \Add90~26 ;
wire \Add90~29_sumout ;
wire \Add92~22 ;
wire \Add92~25_sumout ;
wire \Add94~22 ;
wire \Add94~25_sumout ;
wire \Add85~26 ;
wire \Add85~29_sumout ;
wire \Add87~22 ;
wire \Add87~25_sumout ;
wire \Add89~22 ;
wire \Add89~25_sumout ;
wire \Add90~30 ;
wire \Add90~33_sumout ;
wire \Add92~26 ;
wire \Add92~29_sumout ;
wire \Add94~26 ;
wire \Add94~29_sumout ;
wire \Add85~30 ;
wire \Add85~33_sumout ;
wire \Add87~26 ;
wire \Add87~29_sumout ;
wire \Add89~26 ;
wire \Add89~29_sumout ;
wire \Add90~34 ;
wire \Add90~37_sumout ;
wire \Add92~30 ;
wire \Add92~33_sumout ;
wire \Add94~30 ;
wire \Add94~33_sumout ;
wire \Add85~34 ;
wire \Add85~37_sumout ;
wire \Add87~30 ;
wire \Add87~33_sumout ;
wire \Add89~30 ;
wire \Add89~33_sumout ;
wire \Add90~38 ;
wire \Add90~41_sumout ;
wire \Add92~34 ;
wire \Add92~37_sumout ;
wire \Add94~34 ;
wire \Add94~37_sumout ;
wire \Add85~38 ;
wire \Add85~41_sumout ;
wire \Add87~34 ;
wire \Add87~37_sumout ;
wire \Add89~34 ;
wire \Add89~37_sumout ;
wire \Add90~42 ;
wire \Add90~45_sumout ;
wire \Add92~38 ;
wire \Add92~41_sumout ;
wire \Add94~38 ;
wire \Add94~41_sumout ;
wire \Add85~42 ;
wire \Add85~45_sumout ;
wire \Add87~38 ;
wire \Add87~41_sumout ;
wire \Add89~38 ;
wire \Add89~41_sumout ;
wire \Add90~46 ;
wire \Add90~49_sumout ;
wire \Add92~42 ;
wire \Add92~45_sumout ;
wire \Add94~42 ;
wire \Add94~45_sumout ;
wire \Add85~46 ;
wire \Add85~49_sumout ;
wire \Add87~42 ;
wire \Add87~45_sumout ;
wire \Add89~42 ;
wire \Add89~45_sumout ;
wire \Add90~50 ;
wire \Add90~53_sumout ;
wire \Add92~46 ;
wire \Add92~49_sumout ;
wire \Add94~46 ;
wire \Add94~49_sumout ;
wire \Add85~50 ;
wire \Add85~53_sumout ;
wire \Add87~46 ;
wire \Add87~49_sumout ;
wire \Add89~46 ;
wire \Add89~49_sumout ;
wire \Add90~54 ;
wire \Add90~57_sumout ;
wire \Add92~50 ;
wire \Add92~53_sumout ;
wire \Add94~50 ;
wire \Add94~53_sumout ;
wire \Add85~54 ;
wire \Add85~57_sumout ;
wire \Add87~50 ;
wire \Add87~53_sumout ;
wire \Add89~50 ;
wire \Add89~53_sumout ;
wire \Add90~58 ;
wire \Add90~61_sumout ;
wire \Add92~54 ;
wire \Add92~57_sumout ;
wire \Add94~54 ;
wire \Add94~57_sumout ;
wire \Add85~58 ;
wire \Add85~61_sumout ;
wire \Add87~54 ;
wire \Add87~57_sumout ;
wire \Add89~54 ;
wire \Add89~57_sumout ;


sincos_dspba_delay_11 redist9_firstQuadrant_uid15_sincosTest_b_2(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add2~1_sumout }),
	.delay_signals_0_0(\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_5 redist3_yip1_12_uid237_sincosTest_b_1(
	.xin({\Add75~1_sumout ,\Add75~17_sumout ,\Add75~5_sumout ,\Add75~9_sumout ,\Add75~13_sumout ,\Add75~65_sumout ,\Add75~61_sumout ,\Add75~57_sumout ,\Add75~53_sumout ,\Add75~49_sumout ,\Add75~45_sumout ,\Add75~41_sumout ,\Add75~37_sumout ,\Add75~33_sumout ,\Add75~29_sumout ,
\Add75~25_sumout ,\Add75~21_sumout ,\Add75~69_sumout ,\Add75~73_sumout ,\Add75~77_sumout ,\Add75~81_sumout ,\Add75~85_sumout ,\Add75~89_sumout ,\Add75~93_sumout ,\Add75~97_sumout ,\Add75~101_sumout ,\Add75~105_sumout ,\Add75~109_sumout ,\Add75~113_sumout ,
\Add75~117_sumout ,\Add75~121_sumout ,\Add75~125_sumout ,\Add75~129_sumout }),
	.delay_signals_32_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.delay_signals_30_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][30]~q ),
	.delay_signals_29_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][29]~q ),
	.delay_signals_28_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][28]~q ),
	.delay_signals_31_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][31]~q ),
	.delay_signals_16_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][16]~q ),
	.delay_signals_17_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][17]~q ),
	.delay_signals_18_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][18]~q ),
	.delay_signals_19_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][19]~q ),
	.delay_signals_20_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][20]~q ),
	.delay_signals_21_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][21]~q ),
	.delay_signals_22_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][22]~q ),
	.delay_signals_23_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][23]~q ),
	.delay_signals_24_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][24]~q ),
	.delay_signals_25_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][25]~q ),
	.delay_signals_26_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][26]~q ),
	.delay_signals_27_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][27]~q ),
	.delay_signals_15_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_6 redist4_xip1_12_uid236_sincosTest_b_1(
	.xin({\Add73~1_sumout ,\Add73~25_sumout ,\Add73~13_sumout ,\Add73~17_sumout ,\Add73~21_sumout ,\Add73~65_sumout ,\Add73~61_sumout ,\Add73~57_sumout ,\Add73~53_sumout ,\Add73~49_sumout ,\Add73~45_sumout ,\Add73~41_sumout ,\Add73~37_sumout ,\Add73~33_sumout ,\Add73~29_sumout ,
\Add73~9_sumout ,\Add73~5_sumout ,\Add73~69_sumout ,\Add73~73_sumout ,\Add73~77_sumout ,\Add73~81_sumout ,\Add73~85_sumout ,\Add73~89_sumout ,\Add73~93_sumout ,\Add73~97_sumout ,\Add73~101_sumout ,\Add73~105_sumout ,\Add73~109_sumout ,\Add73~113_sumout ,
\Add73~117_sumout ,\Add73~121_sumout ,\Add73~125_sumout ,\Add73~129_sumout }),
	.delay_signals_32_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.delay_signals_16_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][16]~q ),
	.delay_signals_17_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][17]~q ),
	.delay_signals_30_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][30]~q ),
	.delay_signals_29_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][29]~q ),
	.delay_signals_28_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][28]~q ),
	.delay_signals_31_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][31]~q ),
	.delay_signals_18_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][18]~q ),
	.delay_signals_19_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][19]~q ),
	.delay_signals_20_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][20]~q ),
	.delay_signals_21_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][21]~q ),
	.delay_signals_22_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][22]~q ),
	.delay_signals_23_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][23]~q ),
	.delay_signals_24_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][24]~q ),
	.delay_signals_25_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][25]~q ),
	.delay_signals_26_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][26]~q ),
	.delay_signals_27_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][27]~q ),
	.delay_signals_15_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_10 redist8_xip1_5_uid112_sincosTest_b_1(
	.xin({\Add47~1_sumout ,\Add47~5_sumout ,\Add47~9_sumout ,\Add47~13_sumout ,\Add47~17_sumout ,\Add47~21_sumout ,\Add47~33_sumout ,\Add47~37_sumout ,\Add47~41_sumout ,\Add47~45_sumout ,\Add47~49_sumout ,\Add47~53_sumout ,\Add47~65_sumout ,\Add47~61_sumout ,\Add47~57_sumout ,
\Add47~29_sumout ,\Add47~25_sumout ,\Add47~69_sumout ,\Add47~73_sumout ,\Add47~77_sumout ,\Add47~81_sumout ,\Add47~85_sumout ,\Add47~89_sumout ,\Add47~93_sumout ,\Add47~97_sumout ,\Add47~101_sumout ,\Add47~105_sumout ,\Add47~109_sumout ,\Add47~113_sumout ,
\Add47~117_sumout ,\Add47~121_sumout ,\Add47~125_sumout ,\Add47~129_sumout }),
	.delay_signals_32_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.delay_signals_31_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][31]~q ),
	.delay_signals_30_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][30]~q ),
	.delay_signals_29_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][29]~q ),
	.delay_signals_28_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][28]~q ),
	.delay_signals_27_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][27]~q ),
	.delay_signals_16_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][16]~q ),
	.delay_signals_17_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][17]~q ),
	.delay_signals_26_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][26]~q ),
	.delay_signals_25_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][25]~q ),
	.delay_signals_24_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][24]~q ),
	.delay_signals_23_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][23]~q ),
	.delay_signals_22_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][22]~q ),
	.delay_signals_21_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][21]~q ),
	.delay_signals_18_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][18]~q ),
	.delay_signals_19_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][19]~q ),
	.delay_signals_20_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][20]~q ),
	.delay_signals_15_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_9 redist7_yip1_5_uid113_sincosTest_b_1(
	.xin({\Add45~1_sumout ,\Add45~45_sumout ,\Add45~5_sumout ,\Add45~9_sumout ,\Add45~13_sumout ,\Add45~41_sumout ,\Add45~17_sumout ,\Add45~21_sumout ,\Add45~25_sumout ,\Add45~29_sumout ,\Add45~33_sumout ,\Add45~37_sumout ,\Add45~65_sumout ,\Add45~61_sumout ,\Add45~57_sumout ,
\Add45~53_sumout ,\Add45~49_sumout ,\Add45~69_sumout ,\Add45~73_sumout ,\Add45~77_sumout ,\Add45~81_sumout ,\Add45~85_sumout ,\Add45~89_sumout ,\Add45~93_sumout ,\Add45~97_sumout ,\Add45~101_sumout ,\Add45~105_sumout ,\Add45~109_sumout ,\Add45~113_sumout ,
\Add45~117_sumout ,\Add45~121_sumout ,\Add45~125_sumout ,\Add45~129_sumout }),
	.delay_signals_32_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.delay_signals_30_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][30]~q ),
	.delay_signals_29_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][29]~q ),
	.delay_signals_28_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][28]~q ),
	.delay_signals_26_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][26]~q ),
	.delay_signals_25_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][25]~q ),
	.delay_signals_24_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][24]~q ),
	.delay_signals_23_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][23]~q ),
	.delay_signals_22_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][22]~q ),
	.delay_signals_21_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][21]~q ),
	.delay_signals_27_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][27]~q ),
	.delay_signals_31_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][31]~q ),
	.delay_signals_16_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][16]~q ),
	.delay_signals_17_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][17]~q ),
	.delay_signals_18_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][18]~q ),
	.delay_signals_19_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][19]~q ),
	.delay_signals_20_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][20]~q ),
	.delay_signals_15_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_8 redist6_xMSB_uid115_sincosTest_b_1(
	.delay_signals_0_0(\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\aip1E_6_uid127_sincosTest_a[20]~0_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_4 redist2_xMSB_uid239_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\aip1E_13high_uid253_sincosTest_a[12]~0_combout }),
	.delay_signals_0_0(\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_3 redist1_xMSB_uid258_sincosTest_b_1(
	.delay_signals_0_0(\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\aip1E_14high_uid272_sincosTest_a[11]~0_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay redist0_xMSB_uid277_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add29~1_sumout }),
	.delay_signals_0_0(\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_7 redist5_aip1E_uid130_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add13~1_sumout ,\Add13~5_sumout ,\Add13~9_sumout ,\Add13~17_sumout ,\Add13~13_sumout ,\Add13~21_sumout ,\Add13~25_sumout ,\Add13~29_sumout ,\Add13~33_sumout ,\Add13~37_sumout ,\Add13~41_sumout ,\Add13~45_sumout ,
\Add13~49_sumout ,\Add13~53_sumout ,\Add13~57_sumout ,\Add13~61_sumout ,\Add13~65_sumout ,\Add13~69_sumout ,\Add13~73_sumout ,gnd}),
	.delay_signals_19_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.delay_signals_18_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][18]~q ),
	.delay_signals_17_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][17]~q ),
	.delay_signals_15_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_16_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][16]~q ),
	.delay_signals_14_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][1]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

sincos_dspba_delay_1 redist10_invSignA_uid8_sincosTest_q_2(
	.delay_signals_0_0(\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]),
	.a_15(a[15]));

sincos_dspba_delay_2 redist11_signA_uid7_sincosTest_b_2(
	.delay_signals_0_0(\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,a[15]}));

arriav_lcell_comb \Add2~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~1_sumout ),
	.cout(),
	.shareout());
defparam \Add2~1 .extended_lut = "off";
defparam \Add2~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add2~1 .shared_arith = "off";

arriav_lcell_comb \Add2~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add2~6_cout ),
	.shareout());
defparam \Add2~6 .extended_lut = "off";
defparam \Add2~6 .lut_mask = 64'h00000000000000FF;
defparam \Add2~6 .shared_arith = "off";

arriav_lcell_comb \Add1~1 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~1 .shared_arith = "off";

arriav_lcell_comb \Add2~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~9_sumout ),
	.cout(\Add2~10 ),
	.shareout());
defparam \Add2~9 .extended_lut = "off";
defparam \Add2~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~9 .shared_arith = "off";

arriav_lcell_comb \Add29~1 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\Add27~5_sumout ),
	.datag(gnd),
	.cin(\Add29~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~1_sumout ),
	.cout(),
	.shareout());
defparam \Add29~1 .extended_lut = "off";
defparam \Add29~1 .lut_mask = 64'h0000772200007D28;
defparam \Add29~1 .shared_arith = "off";

arriav_lcell_comb \Add21~1 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.datac(gnd),
	.datad(!\Add19~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~1_sumout ),
	.cout(),
	.shareout());
defparam \Add21~1 .extended_lut = "off";
defparam \Add21~1 .lut_mask = 64'h0000FFFF000088DD;
defparam \Add21~1 .shared_arith = "off";

arriav_lcell_comb \Add17~1 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~5_sumout ),
	.datad(!\Add16~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~1_sumout ),
	.cout(),
	.shareout());
defparam \Add17~1 .extended_lut = "off";
defparam \Add17~1 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add17~1 .shared_arith = "off";

arriav_lcell_comb \Add15~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~1_sumout ),
	.cout(),
	.shareout());
defparam \Add15~1 .extended_lut = "off";
defparam \Add15~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add15~1 .shared_arith = "off";

arriav_lcell_comb \Add16~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~1_sumout ),
	.cout(),
	.shareout());
defparam \Add16~1 .extended_lut = "off";
defparam \Add16~1 .lut_mask = 64'h00000000000000FF;
defparam \Add16~1 .shared_arith = "off";

arriav_lcell_comb \Add18~1 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~5_sumout ),
	.datac(gnd),
	.datad(!\Add16~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~1_sumout ),
	.cout(),
	.shareout());
defparam \Add18~1 .extended_lut = "off";
defparam \Add18~1 .lut_mask = 64'h00000000000011BB;
defparam \Add18~1 .shared_arith = "off";

arriav_lcell_comb \Add19~1 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~9_sumout ),
	.datad(!\Add18~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add19~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add19~1_sumout ),
	.cout(),
	.shareout());
defparam \Add19~1 .extended_lut = "off";
defparam \Add19~1 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add19~1 .shared_arith = "off";

arriav_lcell_comb \Add17~5 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~9_sumout ),
	.datad(!\Add16~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~5_sumout ),
	.cout(\Add17~6 ),
	.shareout());
defparam \Add17~5 .extended_lut = "off";
defparam \Add17~5 .lut_mask = 64'h00000000000005AF;
defparam \Add17~5 .shared_arith = "off";

arriav_lcell_comb \Add18~5 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~9_sumout ),
	.datad(!\Add16~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~5_sumout ),
	.cout(\Add18~6 ),
	.shareout());
defparam \Add18~5 .extended_lut = "off";
defparam \Add18~5 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~5 .shared_arith = "off";

arriav_lcell_comb \Add17~9 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~13_sumout ),
	.datad(!\Add16~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~9_sumout ),
	.cout(\Add17~10 ),
	.shareout());
defparam \Add17~9 .extended_lut = "off";
defparam \Add17~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add17~9 .shared_arith = "off";

arriav_lcell_comb \Add18~9 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~13_sumout ),
	.datad(!\Add16~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~9_sumout ),
	.cout(\Add18~10 ),
	.shareout());
defparam \Add18~9 .extended_lut = "off";
defparam \Add18~9 .lut_mask = 64'h00000000000005AF;
defparam \Add18~9 .shared_arith = "off";

arriav_lcell_comb \Add19~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~5_sumout ),
	.datad(!\Add18~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add19~5_sumout ),
	.cout(\Add19~6 ),
	.shareout());
defparam \Add19~5 .extended_lut = "off";
defparam \Add19~5 .lut_mask = 64'h00000000000005AF;
defparam \Add19~5 .shared_arith = "off";

arriav_lcell_comb \Add17~13 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~17_sumout ),
	.datad(!\Add16~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~13_sumout ),
	.cout(\Add17~14 ),
	.shareout());
defparam \Add17~13 .extended_lut = "off";
defparam \Add17~13 .lut_mask = 64'h00000000000005AF;
defparam \Add17~13 .shared_arith = "off";

arriav_lcell_comb \Add18~13 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~17_sumout ),
	.datad(!\Add16~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~13_sumout ),
	.cout(\Add18~14 ),
	.shareout());
defparam \Add18~13 .extended_lut = "off";
defparam \Add18~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~13 .shared_arith = "off";

arriav_lcell_comb \Add17~17 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~21_sumout ),
	.datad(!\Add16~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~17_sumout ),
	.cout(\Add17~18 ),
	.shareout());
defparam \Add17~17 .extended_lut = "off";
defparam \Add17~17 .lut_mask = 64'h00000000000005AF;
defparam \Add17~17 .shared_arith = "off";

arriav_lcell_comb \Add18~17 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~21_sumout ),
	.datad(!\Add16~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~17_sumout ),
	.cout(\Add18~18 ),
	.shareout());
defparam \Add18~17 .extended_lut = "off";
defparam \Add18~17 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~17 .shared_arith = "off";

arriav_lcell_comb \Add23~1 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~17_sumout ),
	.datad(!\Add18~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~1_sumout ),
	.cout(\Add23~2 ),
	.shareout());
defparam \Add23~1 .extended_lut = "off";
defparam \Add23~1 .lut_mask = 64'h00000000000005AF;
defparam \Add23~1 .shared_arith = "off";

arriav_lcell_comb \Add25~1 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.datac(gnd),
	.datad(!\Add23~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~1_sumout ),
	.cout(),
	.shareout());
defparam \Add25~1 .extended_lut = "off";
defparam \Add25~1 .lut_mask = 64'h0000FFFF000088DD;
defparam \Add25~1 .shared_arith = "off";

arriav_lcell_comb \Add23~5 (
	.dataa(gnd),
	.datab(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datad(!\Add21~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~5_sumout ),
	.cout(),
	.shareout());
defparam \Add23~5 .extended_lut = "off";
defparam \Add23~5 .lut_mask = 64'h0000FFFF0000C0F3;
defparam \Add23~5 .shared_arith = "off";

arriav_lcell_comb \Add21~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~13_sumout ),
	.datad(!\Add18~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~5_sumout ),
	.cout(\Add21~6 ),
	.shareout());
defparam \Add21~5 .extended_lut = "off";
defparam \Add21~5 .lut_mask = 64'h00000000000005AF;
defparam \Add21~5 .shared_arith = "off";

arriav_lcell_comb \Add17~21 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~25_sumout ),
	.datad(!\Add16~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~21_sumout ),
	.cout(\Add17~22 ),
	.shareout());
defparam \Add17~21 .extended_lut = "off";
defparam \Add17~21 .lut_mask = 64'h00000000000005AF;
defparam \Add17~21 .shared_arith = "off";

arriav_lcell_comb \Add18~21 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~25_sumout ),
	.datad(!\Add16~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~21_sumout ),
	.cout(\Add18~22 ),
	.shareout());
defparam \Add18~21 .extended_lut = "off";
defparam \Add18~21 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~21 .shared_arith = "off";

arriav_lcell_comb \Add17~25 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~29_sumout ),
	.datad(!\Add16~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~25_sumout ),
	.cout(\Add17~26 ),
	.shareout());
defparam \Add17~25 .extended_lut = "off";
defparam \Add17~25 .lut_mask = 64'h00000000000005AF;
defparam \Add17~25 .shared_arith = "off";

arriav_lcell_comb \Add18~25 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~29_sumout ),
	.datad(!\Add16~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~25_sumout ),
	.cout(\Add18~26 ),
	.shareout());
defparam \Add18~25 .extended_lut = "off";
defparam \Add18~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~25 .shared_arith = "off";

arriav_lcell_comb \Add25~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~21_sumout ),
	.datad(!\Add18~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~5_sumout ),
	.cout(\Add25~6 ),
	.shareout());
defparam \Add25~5 .extended_lut = "off";
defparam \Add25~5 .lut_mask = 64'h00000000000005AF;
defparam \Add25~5 .shared_arith = "off";

arriav_lcell_comb \Add27~1 (
	.dataa(gnd),
	.datab(!\aip1E_12high_uid234_sincosTest_a[13]~0_combout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[12]~3_combout ),
	.datad(!\Add25~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~1_sumout ),
	.cout(),
	.shareout());
defparam \Add27~1 .extended_lut = "off";
defparam \Add27~1 .lut_mask = 64'h0000FFFF0000C0F3;
defparam \Add27~1 .shared_arith = "off";

arriav_lcell_comb \Add1~5 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(\Add1~6 ),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~5 .shared_arith = "off";

arriav_lcell_comb \Add2~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~13_sumout ),
	.cout(\Add2~14 ),
	.shareout());
defparam \Add2~13 .extended_lut = "off";
defparam \Add2~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~13 .shared_arith = "off";

arriav_lcell_comb \Add27~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(gnd),
	.datac(!\Add17~25_sumout ),
	.datad(!\Add18~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~5_sumout ),
	.cout(\Add27~6 ),
	.shareout());
defparam \Add27~5 .extended_lut = "off";
defparam \Add27~5 .lut_mask = 64'h00000000000005AF;
defparam \Add27~5 .shared_arith = "off";

arriav_lcell_comb \Add29~6 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[10]~5_combout ),
	.datag(gnd),
	.cin(\Add29~10_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~6_cout ),
	.shareout());
defparam \Add29~6 .extended_lut = "off";
defparam \Add29~6 .lut_mask = 64'h0000FF00000082D7;
defparam \Add29~6 .shared_arith = "off";

arriav_lcell_comb \Add13~1 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~5_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~5_sumout ),
	.datag(gnd),
	.cin(\Add13~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~1_sumout ),
	.cout(),
	.shareout());
defparam \Add13~1 .extended_lut = "off";
defparam \Add13~1 .lut_mask = 64'h0000FA500000EE44;
defparam \Add13~1 .shared_arith = "off";

arriav_lcell_comb \Add15~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~5_sumout ),
	.cout(\Add15~6 ),
	.shareout());
defparam \Add15~5 .extended_lut = "off";
defparam \Add15~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add15~5 .shared_arith = "off";

arriav_lcell_comb \Add16~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~5_sumout ),
	.cout(\Add16~6 ),
	.shareout());
defparam \Add16~5 .extended_lut = "off";
defparam \Add16~5 .lut_mask = 64'h00000000000000FF;
defparam \Add16~5 .shared_arith = "off";

arriav_lcell_comb \Add15~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~9_sumout ),
	.cout(\Add15~10 ),
	.shareout());
defparam \Add15~9 .extended_lut = "off";
defparam \Add15~9 .lut_mask = 64'h00000000000000FF;
defparam \Add15~9 .shared_arith = "off";

arriav_lcell_comb \Add16~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~9_sumout ),
	.cout(\Add16~10 ),
	.shareout());
defparam \Add16~9 .extended_lut = "off";
defparam \Add16~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~9 .shared_arith = "off";

arriav_lcell_comb \Add15~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~13_sumout ),
	.cout(\Add15~14 ),
	.shareout());
defparam \Add15~13 .extended_lut = "off";
defparam \Add15~13 .lut_mask = 64'h00000000000000FF;
defparam \Add15~13 .shared_arith = "off";

arriav_lcell_comb \Add16~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~13_sumout ),
	.cout(\Add16~14 ),
	.shareout());
defparam \Add16~13 .extended_lut = "off";
defparam \Add16~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~13 .shared_arith = "off";

arriav_lcell_comb \Add15~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~17_sumout ),
	.cout(\Add15~18 ),
	.shareout());
defparam \Add15~17 .extended_lut = "off";
defparam \Add15~17 .lut_mask = 64'h00000000000000FF;
defparam \Add15~17 .shared_arith = "off";

arriav_lcell_comb \Add16~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~17_sumout ),
	.cout(\Add16~18 ),
	.shareout());
defparam \Add16~17 .extended_lut = "off";
defparam \Add16~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~17 .shared_arith = "off";

arriav_lcell_comb \Add15~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~21_sumout ),
	.cout(\Add15~22 ),
	.shareout());
defparam \Add15~21 .extended_lut = "off";
defparam \Add15~21 .lut_mask = 64'h00000000000000FF;
defparam \Add15~21 .shared_arith = "off";

arriav_lcell_comb \Add16~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~21_sumout ),
	.cout(\Add16~22 ),
	.shareout());
defparam \Add16~21 .extended_lut = "off";
defparam \Add16~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~21 .shared_arith = "off";

arriav_lcell_comb \Add15~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~25_sumout ),
	.cout(\Add15~26 ),
	.shareout());
defparam \Add15~25 .extended_lut = "off";
defparam \Add15~25 .lut_mask = 64'h00000000000000FF;
defparam \Add15~25 .shared_arith = "off";

arriav_lcell_comb \Add16~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~25_sumout ),
	.cout(\Add16~26 ),
	.shareout());
defparam \Add16~25 .extended_lut = "off";
defparam \Add16~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~25 .shared_arith = "off";

arriav_lcell_comb \Add15~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~29_sumout ),
	.cout(\Add15~30 ),
	.shareout());
defparam \Add15~29 .extended_lut = "off";
defparam \Add15~29 .lut_mask = 64'h00000000000000FF;
defparam \Add15~29 .shared_arith = "off";

arriav_lcell_comb \Add16~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~29_sumout ),
	.cout(\Add16~30 ),
	.shareout());
defparam \Add16~29 .extended_lut = "off";
defparam \Add16~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~29 .shared_arith = "off";

arriav_lcell_comb \Add17~29 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~33_sumout ),
	.datad(!\Add16~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~29_sumout ),
	.cout(\Add17~30 ),
	.shareout());
defparam \Add17~29 .extended_lut = "off";
defparam \Add17~29 .lut_mask = 64'h00000000000005AF;
defparam \Add17~29 .shared_arith = "off";

arriav_lcell_comb \Add18~29 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~33_sumout ),
	.datad(!\Add16~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~29_sumout ),
	.cout(\Add18~30 ),
	.shareout());
defparam \Add18~29 .extended_lut = "off";
defparam \Add18~29 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~29 .shared_arith = "off";

arriav_lcell_comb \Add1~9 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~9 .shared_arith = "off";

arriav_lcell_comb \Add2~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~17_sumout ),
	.cout(\Add2~18 ),
	.shareout());
defparam \Add2~17 .extended_lut = "off";
defparam \Add2~17 .lut_mask = 64'h00000000000000FF;
defparam \Add2~17 .shared_arith = "off";

arriav_lcell_comb \Add29~10 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[9]~6_combout ),
	.datag(gnd),
	.cin(\Add29~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~10_cout ),
	.shareout());
defparam \Add29~10 .extended_lut = "off";
defparam \Add29~10 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~10 .shared_arith = "off";

arriav_lcell_comb \Add9~1 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(gnd),
	.datad(!\Add8~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~1_sumout ),
	.cout(),
	.shareout());
defparam \Add9~1 .extended_lut = "off";
defparam \Add9~1 .lut_mask = 64'h0000FFFF000011BB;
defparam \Add9~1 .shared_arith = "off";

arriav_lcell_comb \Add4~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~1_sumout ),
	.cout(),
	.shareout());
defparam \Add4~1 .extended_lut = "off";
defparam \Add4~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add4~1 .shared_arith = "off";

arriav_lcell_comb \Add5~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~1_sumout ),
	.cout(),
	.shareout());
defparam \Add5~1 .extended_lut = "off";
defparam \Add5~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~1 .shared_arith = "off";

arriav_lcell_comb \Add6~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~6 ),
	.sharein(\Add6~7 ),
	.combout(),
	.sumout(\Add6~1_sumout ),
	.cout(),
	.shareout());
defparam \Add6~1 .extended_lut = "off";
defparam \Add6~1 .lut_mask = 64'h00000000000000FF;
defparam \Add6~1 .shared_arith = "on";

arriav_lcell_comb \Add7~1 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~5_sumout ),
	.datac(gnd),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~1_sumout ),
	.cout(),
	.shareout());
defparam \Add7~1 .extended_lut = "off";
defparam \Add7~1 .lut_mask = 64'h0000FFFF000011BB;
defparam \Add7~1 .shared_arith = "off";

arriav_lcell_comb \Add8~1 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~5_sumout ),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~1_sumout ),
	.cout(),
	.shareout());
defparam \Add8~1 .extended_lut = "off";
defparam \Add8~1 .lut_mask = 64'h00000000000005AF;
defparam \Add8~1 .shared_arith = "off";

arriav_lcell_comb \Add10~1 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~5_sumout ),
	.datad(!\Add8~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~1_sumout ),
	.cout(),
	.shareout());
defparam \Add10~1 .extended_lut = "off";
defparam \Add10~1 .lut_mask = 64'h00000000000005AF;
defparam \Add10~1 .shared_arith = "off";

arriav_lcell_comb \Add11~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~5_sumout ),
	.datad(!\Add10~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~1_sumout ),
	.cout(),
	.shareout());
defparam \Add11~1 .extended_lut = "off";
defparam \Add11~1 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~1 .shared_arith = "off";

arriav_lcell_comb \Add11~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~9_sumout ),
	.datad(!\Add10~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~5_sumout ),
	.cout(\Add11~6 ),
	.shareout());
defparam \Add11~5 .extended_lut = "off";
defparam \Add11~5 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~5 .shared_arith = "off";

arriav_lcell_comb \Add12~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~5_sumout ),
	.datad(!\Add10~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~1_sumout ),
	.cout(),
	.shareout());
defparam \Add12~1 .extended_lut = "off";
defparam \Add12~1 .lut_mask = 64'h00000000000005AF;
defparam \Add12~1 .shared_arith = "off";

arriav_lcell_comb \Add12~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~9_sumout ),
	.datad(!\Add10~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~5_sumout ),
	.cout(\Add12~6 ),
	.shareout());
defparam \Add12~5 .extended_lut = "off";
defparam \Add12~5 .lut_mask = 64'h00000000000005AF;
defparam \Add12~5 .shared_arith = "off";

arriav_lcell_comb \Add13~5 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~9_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~9_sumout ),
	.datag(gnd),
	.cin(\Add13~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~5_sumout ),
	.cout(\Add13~6 ),
	.shareout());
defparam \Add13~5 .extended_lut = "off";
defparam \Add13~5 .lut_mask = 64'h0000FA500000EE44;
defparam \Add13~5 .shared_arith = "off";

arriav_lcell_comb \Add15~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~33_sumout ),
	.cout(\Add15~34 ),
	.shareout());
defparam \Add15~33 .extended_lut = "off";
defparam \Add15~33 .lut_mask = 64'h00000000000000FF;
defparam \Add15~33 .shared_arith = "off";

arriav_lcell_comb \Add16~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~33_sumout ),
	.cout(\Add16~34 ),
	.shareout());
defparam \Add16~33 .extended_lut = "off";
defparam \Add16~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~33 .shared_arith = "off";

arriav_lcell_comb \Add17~33 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~37_sumout ),
	.datad(!\Add16~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~33_sumout ),
	.cout(\Add17~34 ),
	.shareout());
defparam \Add17~33 .extended_lut = "off";
defparam \Add17~33 .lut_mask = 64'h00000000000005AF;
defparam \Add17~33 .shared_arith = "off";

arriav_lcell_comb \Add18~33 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~37_sumout ),
	.datad(!\Add16~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~33_sumout ),
	.cout(\Add18~34 ),
	.shareout());
defparam \Add18~33 .extended_lut = "off";
defparam \Add18~33 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~33 .shared_arith = "off";

arriav_lcell_comb \Add75~1 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~1_sumout ),
	.cout(),
	.shareout());
defparam \Add75~1 .extended_lut = "off";
defparam \Add75~1 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~1 .shared_arith = "off";

arriav_lcell_comb \Add73~1 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~1_sumout ),
	.cout(),
	.shareout());
defparam \Add73~1 .extended_lut = "off";
defparam \Add73~1 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~1 .shared_arith = "off";

arriav_lcell_comb \Add75~5 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~5_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~5_sumout ),
	.cout(\Add75~6 ),
	.shareout());
defparam \Add75~5 .extended_lut = "off";
defparam \Add75~5 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~5 .shared_arith = "off";

arriav_lcell_comb \Add75~9 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~9_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~9_sumout ),
	.cout(\Add75~10 ),
	.shareout());
defparam \Add75~9 .extended_lut = "off";
defparam \Add75~9 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~9 .shared_arith = "off";

arriav_lcell_comb \Add75~13 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~13_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~13_sumout ),
	.cout(\Add75~14 ),
	.shareout());
defparam \Add75~13 .extended_lut = "off";
defparam \Add75~13 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~13 .shared_arith = "off";

arriav_lcell_comb \Add73~5 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~5_sumout ),
	.datae(gnd),
	.dataf(!\Add69~17_sumout ),
	.datag(gnd),
	.cin(\Add73~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~5_sumout ),
	.cout(\Add73~6 ),
	.shareout());
defparam \Add73~5 .extended_lut = "off";
defparam \Add73~5 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~5 .shared_arith = "off";

arriav_lcell_comb \Add75~17 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~21_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~17_sumout ),
	.cout(\Add75~18 ),
	.shareout());
defparam \Add75~17 .extended_lut = "off";
defparam \Add75~17 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~17 .shared_arith = "off";

arriav_lcell_comb \Add73~9 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~9_sumout ),
	.datae(gnd),
	.dataf(!\Add69~13_sumout ),
	.datag(gnd),
	.cin(\Add73~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~9_sumout ),
	.cout(\Add73~10 ),
	.shareout());
defparam \Add73~9 .extended_lut = "off";
defparam \Add73~9 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~9 .shared_arith = "off";

arriav_lcell_comb \Add73~13 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~13_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~13_sumout ),
	.cout(\Add73~14 ),
	.shareout());
defparam \Add73~13 .extended_lut = "off";
defparam \Add73~13 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~13 .shared_arith = "off";

arriav_lcell_comb \Add73~17 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~17_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~17_sumout ),
	.cout(\Add73~18 ),
	.shareout());
defparam \Add73~17 .extended_lut = "off";
defparam \Add73~17 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~17 .shared_arith = "off";

arriav_lcell_comb \Add73~21 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~21_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~21_sumout ),
	.cout(\Add73~22 ),
	.shareout());
defparam \Add73~21 .extended_lut = "off";
defparam \Add73~21 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~21 .shared_arith = "off";

arriav_lcell_comb \Add75~21 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~25_sumout ),
	.datae(gnd),
	.dataf(!\Add71~25_sumout ),
	.datag(gnd),
	.cin(\Add75~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~21_sumout ),
	.cout(\Add75~22 ),
	.shareout());
defparam \Add75~21 .extended_lut = "off";
defparam \Add75~21 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~21 .shared_arith = "off";

arriav_lcell_comb \Add73~25 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~29_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~25_sumout ),
	.cout(\Add73~26 ),
	.shareout());
defparam \Add73~25 .extended_lut = "off";
defparam \Add73~25 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~25 .shared_arith = "off";

arriav_lcell_comb \Add75~25 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~29_sumout ),
	.datae(gnd),
	.dataf(!\Add71~21_sumout ),
	.datag(gnd),
	.cin(\Add75~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~25_sumout ),
	.cout(\Add75~26 ),
	.shareout());
defparam \Add75~25 .extended_lut = "off";
defparam \Add75~25 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~25 .shared_arith = "off";

arriav_lcell_comb \Add73~29 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~33_sumout ),
	.datae(gnd),
	.dataf(!\Add69~9_sumout ),
	.datag(gnd),
	.cin(\Add73~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~29_sumout ),
	.cout(\Add73~30 ),
	.shareout());
defparam \Add73~29 .extended_lut = "off";
defparam \Add73~29 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~29 .shared_arith = "off";

arriav_lcell_comb \Add75~29 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~33_sumout ),
	.datae(gnd),
	.dataf(!\Add71~17_sumout ),
	.datag(gnd),
	.cin(\Add75~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~29_sumout ),
	.cout(\Add75~30 ),
	.shareout());
defparam \Add75~29 .extended_lut = "off";
defparam \Add75~29 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~29 .shared_arith = "off";

arriav_lcell_comb \Add73~33 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~37_sumout ),
	.datae(gnd),
	.dataf(!\Add69~5_sumout ),
	.datag(gnd),
	.cin(\Add73~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~33_sumout ),
	.cout(\Add73~34 ),
	.shareout());
defparam \Add73~33 .extended_lut = "off";
defparam \Add73~33 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~33 .shared_arith = "off";

arriav_lcell_comb \Add75~33 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~37_sumout ),
	.datae(gnd),
	.dataf(!\Add71~13_sumout ),
	.datag(gnd),
	.cin(\Add75~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~33_sumout ),
	.cout(\Add75~34 ),
	.shareout());
defparam \Add75~33 .extended_lut = "off";
defparam \Add75~33 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~33 .shared_arith = "off";

arriav_lcell_comb \Add73~37 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~41_sumout ),
	.datae(gnd),
	.dataf(!\Add69~21_sumout ),
	.datag(gnd),
	.cin(\Add73~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~37_sumout ),
	.cout(\Add73~38 ),
	.shareout());
defparam \Add73~37 .extended_lut = "off";
defparam \Add73~37 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~37 .shared_arith = "off";

arriav_lcell_comb \Add75~37 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~41_sumout ),
	.datae(gnd),
	.dataf(!\Add71~29_sumout ),
	.datag(gnd),
	.cin(\Add75~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~37_sumout ),
	.cout(\Add75~38 ),
	.shareout());
defparam \Add75~37 .extended_lut = "off";
defparam \Add75~37 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~37 .shared_arith = "off";

arriav_lcell_comb \Add73~41 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~45_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~41_sumout ),
	.cout(\Add73~42 ),
	.shareout());
defparam \Add73~41 .extended_lut = "off";
defparam \Add73~41 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~41 .shared_arith = "off";

arriav_lcell_comb \Add75~41 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~45_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~41_sumout ),
	.cout(\Add75~42 ),
	.shareout());
defparam \Add75~41 .extended_lut = "off";
defparam \Add75~41 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~41 .shared_arith = "off";

arriav_lcell_comb \Add73~45 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~49_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~45_sumout ),
	.cout(\Add73~46 ),
	.shareout());
defparam \Add73~45 .extended_lut = "off";
defparam \Add73~45 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~45 .shared_arith = "off";

arriav_lcell_comb \Add75~45 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~49_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~45_sumout ),
	.cout(\Add75~46 ),
	.shareout());
defparam \Add75~45 .extended_lut = "off";
defparam \Add75~45 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~45 .shared_arith = "off";

arriav_lcell_comb \Add73~49 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~53_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~49_sumout ),
	.cout(\Add73~50 ),
	.shareout());
defparam \Add73~49 .extended_lut = "off";
defparam \Add73~49 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~49 .shared_arith = "off";

arriav_lcell_comb \Add75~49 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~53_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~49_sumout ),
	.cout(\Add75~50 ),
	.shareout());
defparam \Add75~49 .extended_lut = "off";
defparam \Add75~49 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~49 .shared_arith = "off";

arriav_lcell_comb \Add73~53 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~57_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~53_sumout ),
	.cout(\Add73~54 ),
	.shareout());
defparam \Add73~53 .extended_lut = "off";
defparam \Add73~53 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~53 .shared_arith = "off";

arriav_lcell_comb \Add75~53 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~57_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~53_sumout ),
	.cout(\Add75~54 ),
	.shareout());
defparam \Add75~53 .extended_lut = "off";
defparam \Add75~53 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~53 .shared_arith = "off";

arriav_lcell_comb \Add73~57 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~61_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~57_sumout ),
	.cout(\Add73~58 ),
	.shareout());
defparam \Add73~57 .extended_lut = "off";
defparam \Add73~57 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~57 .shared_arith = "off";

arriav_lcell_comb \Add75~57 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~61_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~57_sumout ),
	.cout(\Add75~58 ),
	.shareout());
defparam \Add75~57 .extended_lut = "off";
defparam \Add75~57 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~57 .shared_arith = "off";

arriav_lcell_comb \Add73~61 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~65_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~61_sumout ),
	.cout(\Add73~62 ),
	.shareout());
defparam \Add73~61 .extended_lut = "off";
defparam \Add73~61 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~61 .shared_arith = "off";

arriav_lcell_comb \Add75~61 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~65_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~61_sumout ),
	.cout(\Add75~62 ),
	.shareout());
defparam \Add75~61 .extended_lut = "off";
defparam \Add75~61 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~61 .shared_arith = "off";

arriav_lcell_comb \Add73~65 (
	.dataa(!\Add69~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~25_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add73~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~65_sumout ),
	.cout(\Add73~66 ),
	.shareout());
defparam \Add73~65 .extended_lut = "off";
defparam \Add73~65 .lut_mask = 64'h0000995A000000FF;
defparam \Add73~65 .shared_arith = "off";

arriav_lcell_comb \Add75~65 (
	.dataa(!\Add71~1_sumout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~17_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datag(gnd),
	.cin(\Add75~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~65_sumout ),
	.cout(\Add75~66 ),
	.shareout());
defparam \Add75~65 .extended_lut = "off";
defparam \Add75~65 .lut_mask = 64'h000066A5000000FF;
defparam \Add75~65 .shared_arith = "off";

arriav_lcell_comb \Add1~13 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_11),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~13_sumout ),
	.cout(\Add1~14 ),
	.shareout());
defparam \Add1~13 .extended_lut = "off";
defparam \Add1~13 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~13 .shared_arith = "off";

arriav_lcell_comb \Add2~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~21_sumout ),
	.cout(\Add2~22 ),
	.shareout());
defparam \Add2~21 .extended_lut = "off";
defparam \Add2~21 .lut_mask = 64'h00000000000000FF;
defparam \Add2~21 .shared_arith = "off";

arriav_lcell_comb \Add29~14 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[8]~7_combout ),
	.datag(gnd),
	.cin(\Add29~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~14_cout ),
	.shareout());
defparam \Add29~14 .extended_lut = "off";
defparam \Add29~14 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~14 .shared_arith = "off";

arriav_lcell_comb \Add7~5 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~9_sumout ),
	.datad(!\Add6~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~5_sumout ),
	.cout(\Add7~6 ),
	.shareout());
defparam \Add7~5 .extended_lut = "off";
defparam \Add7~5 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add7~5 .shared_arith = "off";

arriav_lcell_comb \Add8~5 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~9_sumout ),
	.datad(!\Add6~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~5_sumout ),
	.cout(\Add8~6 ),
	.shareout());
defparam \Add8~5 .extended_lut = "off";
defparam \Add8~5 .lut_mask = 64'h00000000000005AF;
defparam \Add8~5 .shared_arith = "off";

arriav_lcell_comb \Add9~5 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~9_sumout ),
	.datad(!\Add8~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~5_sumout ),
	.cout(\Add9~6 ),
	.shareout());
defparam \Add9~5 .extended_lut = "off";
defparam \Add9~5 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add9~5 .shared_arith = "off";

arriav_lcell_comb \Add4~5 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~5_sumout ),
	.datad(!\Add2~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~5_sumout ),
	.cout(\Add4~6 ),
	.shareout());
defparam \Add4~5 .extended_lut = "off";
defparam \Add4~5 .lut_mask = 64'h00000000000005AF;
defparam \Add4~5 .shared_arith = "off";

arriav_lcell_comb \Add5~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~5_sumout ),
	.cout(\Add5~6 ),
	.shareout());
defparam \Add5~5 .extended_lut = "off";
defparam \Add5~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~5 .shared_arith = "off";

arriav_lcell_comb \Add6~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~10 ),
	.sharein(\Add6~11 ),
	.combout(),
	.sumout(\Add6~5_sumout ),
	.cout(\Add6~6 ),
	.shareout(\Add6~7 ));
defparam \Add6~5 .extended_lut = "off";
defparam \Add6~5 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~5 .shared_arith = "on";

arriav_lcell_comb \Add10~5 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~9_sumout ),
	.datad(!\Add8~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~5_sumout ),
	.cout(\Add10~6 ),
	.shareout());
defparam \Add10~5 .extended_lut = "off";
defparam \Add10~5 .lut_mask = 64'h00000000000005AF;
defparam \Add10~5 .shared_arith = "off";

arriav_lcell_comb \Add9~9 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~13_sumout ),
	.datad(!\Add8~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~9_sumout ),
	.cout(\Add9~10 ),
	.shareout());
defparam \Add9~9 .extended_lut = "off";
defparam \Add9~9 .lut_mask = 64'h00000000000005AF;
defparam \Add9~9 .shared_arith = "off";

arriav_lcell_comb \Add10~9 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~13_sumout ),
	.datad(!\Add8~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~9_sumout ),
	.cout(\Add10~10 ),
	.shareout());
defparam \Add10~9 .extended_lut = "off";
defparam \Add10~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~9 .shared_arith = "off";

arriav_lcell_comb \Add11~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~13_sumout ),
	.datad(!\Add10~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~9_sumout ),
	.cout(\Add11~10 ),
	.shareout());
defparam \Add11~9 .extended_lut = "off";
defparam \Add11~9 .lut_mask = 64'h00000000000005AF;
defparam \Add11~9 .shared_arith = "off";

arriav_lcell_comb \Add12~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~13_sumout ),
	.datad(!\Add10~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~9_sumout ),
	.cout(\Add12~10 ),
	.shareout());
defparam \Add12~9 .extended_lut = "off";
defparam \Add12~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~9 .shared_arith = "off";

arriav_lcell_comb \Add13~9 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~13_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~13_sumout ),
	.datag(gnd),
	.cin(\Add13~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~9_sumout ),
	.cout(\Add13~10 ),
	.shareout());
defparam \Add13~9 .extended_lut = "off";
defparam \Add13~9 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~9 .shared_arith = "off";

arriav_lcell_comb \Add13~13 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~17_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~17_sumout ),
	.datag(gnd),
	.cin(\Add13~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~13_sumout ),
	.cout(\Add13~14 ),
	.shareout());
defparam \Add13~13 .extended_lut = "off";
defparam \Add13~13 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~13 .shared_arith = "off";

arriav_lcell_comb \Add13~17 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~21_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~21_sumout ),
	.datag(gnd),
	.cin(\Add13~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~17_sumout ),
	.cout(\Add13~18 ),
	.shareout());
defparam \Add13~17 .extended_lut = "off";
defparam \Add13~17 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~17 .shared_arith = "off";

arriav_lcell_comb \Add13~21 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~25_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~25_sumout ),
	.datag(gnd),
	.cin(\Add13~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~21_sumout ),
	.cout(\Add13~22 ),
	.shareout());
defparam \Add13~21 .extended_lut = "off";
defparam \Add13~21 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~21 .shared_arith = "off";

arriav_lcell_comb \Add13~25 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~29_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~29_sumout ),
	.datag(gnd),
	.cin(\Add13~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~25_sumout ),
	.cout(\Add13~26 ),
	.shareout());
defparam \Add13~25 .extended_lut = "off";
defparam \Add13~25 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~25 .shared_arith = "off";

arriav_lcell_comb \Add13~29 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~33_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~33_sumout ),
	.datag(gnd),
	.cin(\Add13~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~29_sumout ),
	.cout(\Add13~30 ),
	.shareout());
defparam \Add13~29 .extended_lut = "off";
defparam \Add13~29 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~29 .shared_arith = "off";

arriav_lcell_comb \Add13~33 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~37_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~37_sumout ),
	.datag(gnd),
	.cin(\Add13~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~33_sumout ),
	.cout(\Add13~34 ),
	.shareout());
defparam \Add13~33 .extended_lut = "off";
defparam \Add13~33 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~33 .shared_arith = "off";

arriav_lcell_comb \Add15~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~37_sumout ),
	.cout(\Add15~38 ),
	.shareout());
defparam \Add15~37 .extended_lut = "off";
defparam \Add15~37 .lut_mask = 64'h00000000000000FF;
defparam \Add15~37 .shared_arith = "off";

arriav_lcell_comb \Add16~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~37_sumout ),
	.cout(\Add16~38 ),
	.shareout());
defparam \Add16~37 .extended_lut = "off";
defparam \Add16~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~37 .shared_arith = "off";

arriav_lcell_comb \Add17~37 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~41_sumout ),
	.datad(!\Add16~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~37_sumout ),
	.cout(\Add17~38 ),
	.shareout());
defparam \Add17~37 .extended_lut = "off";
defparam \Add17~37 .lut_mask = 64'h00000000000005AF;
defparam \Add17~37 .shared_arith = "off";

arriav_lcell_comb \Add18~37 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~41_sumout ),
	.datad(!\Add16~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~37_sumout ),
	.cout(\Add18~38 ),
	.shareout());
defparam \Add18~37 .extended_lut = "off";
defparam \Add18~37 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~37 .shared_arith = "off";

arriav_lcell_comb \Add71~1 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~1_sumout ),
	.datag(gnd),
	.cin(\Add71~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~1_sumout ),
	.cout(),
	.shareout());
defparam \Add71~1 .extended_lut = "off";
defparam \Add71~1 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~1 .shared_arith = "off";

arriav_lcell_comb \Add69~1 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~1_sumout ),
	.datag(gnd),
	.cin(\Add69~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~1_sumout ),
	.cout(),
	.shareout());
defparam \Add69~1 .extended_lut = "off";
defparam \Add69~1 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~1 .shared_arith = "off";

arriav_lcell_comb \Add69~5 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~5_sumout ),
	.datag(gnd),
	.cin(\Add69~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~5_sumout ),
	.cout(\Add69~6 ),
	.shareout());
defparam \Add69~5 .extended_lut = "off";
defparam \Add69~5 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~5 .shared_arith = "off";

arriav_lcell_comb \Add69~9 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~9_sumout ),
	.datag(gnd),
	.cin(\Add69~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~9_sumout ),
	.cout(\Add69~10 ),
	.shareout());
defparam \Add69~9 .extended_lut = "off";
defparam \Add69~9 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~9 .shared_arith = "off";

arriav_lcell_comb \Add69~13 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~13_sumout ),
	.datag(gnd),
	.cin(\Add69~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~13_sumout ),
	.cout(\Add69~14 ),
	.shareout());
defparam \Add69~13 .extended_lut = "off";
defparam \Add69~13 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~13 .shared_arith = "off";

arriav_lcell_comb \Add71~5 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~17_sumout ),
	.datae(gnd),
	.dataf(!\Add65~5_sumout ),
	.datag(gnd),
	.cin(\Add71~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~5_sumout ),
	.cout(\Add71~6 ),
	.shareout());
defparam \Add71~5 .extended_lut = "off";
defparam \Add71~5 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~5 .shared_arith = "off";

arriav_lcell_comb \Add69~17 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~21_sumout ),
	.datag(gnd),
	.cin(\Add69~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~17_sumout ),
	.cout(\Add69~18 ),
	.shareout());
defparam \Add69~17 .extended_lut = "off";
defparam \Add69~17 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~17 .shared_arith = "off";

arriav_lcell_comb \Add73~69 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~69_sumout ),
	.datae(gnd),
	.dataf(!\Add69~65_sumout ),
	.datag(gnd),
	.cin(\Add73~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~69_sumout ),
	.cout(\Add73~70 ),
	.shareout());
defparam \Add73~69 .extended_lut = "off";
defparam \Add73~69 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~69 .shared_arith = "off";

arriav_lcell_comb \Add69~21 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~25_sumout ),
	.datag(gnd),
	.cin(\Add69~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~21_sumout ),
	.cout(\Add69~22 ),
	.shareout());
defparam \Add69~21 .extended_lut = "off";
defparam \Add69~21 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~21 .shared_arith = "off";

arriav_lcell_comb \Add71~9 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~21_sumout ),
	.datae(gnd),
	.dataf(!\Add65~9_sumout ),
	.datag(gnd),
	.cin(\Add71~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~9_sumout ),
	.cout(\Add71~10 ),
	.shareout());
defparam \Add71~9 .extended_lut = "off";
defparam \Add71~9 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~9 .shared_arith = "off";

arriav_lcell_comb \Add71~13 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~13_sumout ),
	.datag(gnd),
	.cin(\Add71~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~13_sumout ),
	.cout(\Add71~14 ),
	.shareout());
defparam \Add71~13 .extended_lut = "off";
defparam \Add71~13 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~13 .shared_arith = "off";

arriav_lcell_comb \Add71~17 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~17_sumout ),
	.datag(gnd),
	.cin(\Add71~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~17_sumout ),
	.cout(\Add71~18 ),
	.shareout());
defparam \Add71~17 .extended_lut = "off";
defparam \Add71~17 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~17 .shared_arith = "off";

arriav_lcell_comb \Add71~21 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~21_sumout ),
	.datag(gnd),
	.cin(\Add71~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~21_sumout ),
	.cout(\Add71~22 ),
	.shareout());
defparam \Add71~21 .extended_lut = "off";
defparam \Add71~21 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~21 .shared_arith = "off";

arriav_lcell_comb \Add69~25 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~25_sumout ),
	.datae(gnd),
	.dataf(!\Add67~29_sumout ),
	.datag(gnd),
	.cin(\Add69~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~25_sumout ),
	.cout(\Add69~26 ),
	.shareout());
defparam \Add69~25 .extended_lut = "off";
defparam \Add69~25 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~25 .shared_arith = "off";

arriav_lcell_comb \Add71~25 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~29_sumout ),
	.datag(gnd),
	.cin(\Add71~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~25_sumout ),
	.cout(\Add71~26 ),
	.shareout());
defparam \Add71~25 .extended_lut = "off";
defparam \Add71~25 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~25 .shared_arith = "off";

arriav_lcell_comb \Add75~69 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~69_sumout ),
	.datae(gnd),
	.dataf(!\Add71~65_sumout ),
	.datag(gnd),
	.cin(\Add75~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~69_sumout ),
	.cout(\Add75~70 ),
	.shareout());
defparam \Add75~69 .extended_lut = "off";
defparam \Add75~69 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~69 .shared_arith = "off";

arriav_lcell_comb \Add71~29 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~33_sumout ),
	.datag(gnd),
	.cin(\Add71~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~29_sumout ),
	.cout(\Add71~30 ),
	.shareout());
defparam \Add71~29 .extended_lut = "off";
defparam \Add71~29 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~29 .shared_arith = "off";

arriav_lcell_comb \Add69~29 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~29_sumout ),
	.datae(gnd),
	.dataf(!\Add67~33_sumout ),
	.datag(gnd),
	.cin(\Add69~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~29_sumout ),
	.cout(\Add69~30 ),
	.shareout());
defparam \Add69~29 .extended_lut = "off";
defparam \Add69~29 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~29 .shared_arith = "off";

arriav_lcell_comb \Add71~33 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~13_sumout ),
	.datae(gnd),
	.dataf(!\Add65~37_sumout ),
	.datag(gnd),
	.cin(\Add71~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~33_sumout ),
	.cout(\Add71~34 ),
	.shareout());
defparam \Add71~33 .extended_lut = "off";
defparam \Add71~33 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~33 .shared_arith = "off";

arriav_lcell_comb \Add69~33 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~21_sumout ),
	.datae(gnd),
	.dataf(!\Add67~37_sumout ),
	.datag(gnd),
	.cin(\Add69~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~33_sumout ),
	.cout(\Add69~34 ),
	.shareout());
defparam \Add69~33 .extended_lut = "off";
defparam \Add69~33 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~33 .shared_arith = "off";

arriav_lcell_comb \Add71~37 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~9_sumout ),
	.datae(gnd),
	.dataf(!\Add65~41_sumout ),
	.datag(gnd),
	.cin(\Add71~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~37_sumout ),
	.cout(\Add71~38 ),
	.shareout());
defparam \Add71~37 .extended_lut = "off";
defparam \Add71~37 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~37 .shared_arith = "off";

arriav_lcell_comb \Add69~37 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~17_sumout ),
	.datae(gnd),
	.dataf(!\Add67~41_sumout ),
	.datag(gnd),
	.cin(\Add69~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~37_sumout ),
	.cout(\Add69~38 ),
	.shareout());
defparam \Add69~37 .extended_lut = "off";
defparam \Add69~37 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~37 .shared_arith = "off";

arriav_lcell_comb \Add71~41 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~5_sumout ),
	.datae(gnd),
	.dataf(!\Add65~45_sumout ),
	.datag(gnd),
	.cin(\Add71~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~41_sumout ),
	.cout(\Add71~42 ),
	.shareout());
defparam \Add71~41 .extended_lut = "off";
defparam \Add71~41 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~41 .shared_arith = "off";

arriav_lcell_comb \Add69~41 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~13_sumout ),
	.datae(gnd),
	.dataf(!\Add67~45_sumout ),
	.datag(gnd),
	.cin(\Add69~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~41_sumout ),
	.cout(\Add69~42 ),
	.shareout());
defparam \Add69~41 .extended_lut = "off";
defparam \Add69~41 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~41 .shared_arith = "off";

arriav_lcell_comb \Add71~45 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~25_sumout ),
	.datae(gnd),
	.dataf(!\Add65~49_sumout ),
	.datag(gnd),
	.cin(\Add71~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~45_sumout ),
	.cout(\Add71~46 ),
	.shareout());
defparam \Add71~45 .extended_lut = "off";
defparam \Add71~45 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~45 .shared_arith = "off";

arriav_lcell_comb \Add69~45 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~33_sumout ),
	.datae(gnd),
	.dataf(!\Add67~49_sumout ),
	.datag(gnd),
	.cin(\Add69~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~45_sumout ),
	.cout(\Add69~46 ),
	.shareout());
defparam \Add69~45 .extended_lut = "off";
defparam \Add69~45 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~45 .shared_arith = "off";

arriav_lcell_comb \Add71~49 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~1_sumout ),
	.datae(gnd),
	.dataf(!\Add65~53_sumout ),
	.datag(gnd),
	.cin(\Add71~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~49_sumout ),
	.cout(\Add71~50 ),
	.shareout());
defparam \Add71~49 .extended_lut = "off";
defparam \Add71~49 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~49 .shared_arith = "off";

arriav_lcell_comb \Add69~49 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~1_sumout ),
	.datae(gnd),
	.dataf(!\Add67~53_sumout ),
	.datag(gnd),
	.cin(\Add69~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~49_sumout ),
	.cout(\Add69~50 ),
	.shareout());
defparam \Add69~49 .extended_lut = "off";
defparam \Add69~49 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~49 .shared_arith = "off";

arriav_lcell_comb \Add71~53 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~57_sumout ),
	.datag(gnd),
	.cin(\Add71~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~53_sumout ),
	.cout(\Add71~54 ),
	.shareout());
defparam \Add71~53 .extended_lut = "off";
defparam \Add71~53 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~53 .shared_arith = "off";

arriav_lcell_comb \Add69~53 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~57_sumout ),
	.datag(gnd),
	.cin(\Add69~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~53_sumout ),
	.cout(\Add69~54 ),
	.shareout());
defparam \Add69~53 .extended_lut = "off";
defparam \Add69~53 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~53 .shared_arith = "off";

arriav_lcell_comb \Add71~57 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~61_sumout ),
	.datag(gnd),
	.cin(\Add71~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~57_sumout ),
	.cout(\Add71~58 ),
	.shareout());
defparam \Add71~57 .extended_lut = "off";
defparam \Add71~57 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~57 .shared_arith = "off";

arriav_lcell_comb \Add69~57 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~61_sumout ),
	.datag(gnd),
	.cin(\Add69~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~57_sumout ),
	.cout(\Add69~58 ),
	.shareout());
defparam \Add69~57 .extended_lut = "off";
defparam \Add69~57 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~57 .shared_arith = "off";

arriav_lcell_comb \Add71~61 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~65_sumout ),
	.datag(gnd),
	.cin(\Add71~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~61_sumout ),
	.cout(\Add71~62 ),
	.shareout());
defparam \Add71~61 .extended_lut = "off";
defparam \Add71~61 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~61 .shared_arith = "off";

arriav_lcell_comb \Add69~61 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~65_sumout ),
	.datag(gnd),
	.cin(\Add69~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~61_sumout ),
	.cout(\Add69~62 ),
	.shareout());
defparam \Add69~61 .extended_lut = "off";
defparam \Add69~61 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~61 .shared_arith = "off";

arriav_lcell_comb \Add71~65 (
	.dataa(!\Add67~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~25_sumout ),
	.datag(gnd),
	.cin(\Add71~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~65_sumout ),
	.cout(\Add71~66 ),
	.shareout());
defparam \Add71~65 .extended_lut = "off";
defparam \Add71~65 .lut_mask = 64'h0000FF00000066A5;
defparam \Add71~65 .shared_arith = "off";

arriav_lcell_comb \Add69~65 (
	.dataa(!\Add65~1_sumout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datae(gnd),
	.dataf(!\Add67~17_sumout ),
	.datag(gnd),
	.cin(\Add69~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~65_sumout ),
	.cout(\Add69~66 ),
	.shareout());
defparam \Add69~65 .extended_lut = "off";
defparam \Add69~65 .lut_mask = 64'h0000FF000000995A;
defparam \Add69~65 .shared_arith = "off";

arriav_lcell_comb \Add1~17 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~17_sumout ),
	.cout(\Add1~18 ),
	.shareout());
defparam \Add1~17 .extended_lut = "off";
defparam \Add1~17 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~17 .shared_arith = "off";

arriav_lcell_comb \Add2~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~25_sumout ),
	.cout(\Add2~26 ),
	.shareout());
defparam \Add2~25 .extended_lut = "off";
defparam \Add2~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~25 .shared_arith = "off";

arriav_lcell_comb \Add29~18 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[7]~8_combout ),
	.datag(gnd),
	.cin(\Add29~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~18_cout ),
	.shareout());
defparam \Add29~18 .extended_lut = "off";
defparam \Add29~18 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~18 .shared_arith = "off";

arriav_lcell_comb \Add5~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~9_sumout ),
	.cout(\Add5~10 ),
	.shareout());
defparam \Add5~9 .extended_lut = "off";
defparam \Add5~9 .lut_mask = 64'h00000000000000FF;
defparam \Add5~9 .shared_arith = "off";

arriav_lcell_comb \Add6~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~14 ),
	.sharein(\Add6~15 ),
	.combout(),
	.sumout(\Add6~9_sumout ),
	.cout(\Add6~10 ),
	.shareout(\Add6~11 ));
defparam \Add6~9 .extended_lut = "off";
defparam \Add6~9 .lut_mask = 64'h00000000000000FF;
defparam \Add6~9 .shared_arith = "on";

arriav_lcell_comb \Add7~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~13_sumout ),
	.datad(!\Add6~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~9_sumout ),
	.cout(\Add7~10 ),
	.shareout());
defparam \Add7~9 .extended_lut = "off";
defparam \Add7~9 .lut_mask = 64'h00000000000005AF;
defparam \Add7~9 .shared_arith = "off";

arriav_lcell_comb \Add8~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~13_sumout ),
	.datad(!\Add6~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~9_sumout ),
	.cout(\Add8~10 ),
	.shareout());
defparam \Add8~9 .extended_lut = "off";
defparam \Add8~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~9 .shared_arith = "off";

arriav_lcell_comb \Add4~9 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~9_sumout ),
	.datad(!\Add2~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~9_sumout ),
	.cout(\Add4~10 ),
	.shareout());
defparam \Add4~9 .extended_lut = "off";
defparam \Add4~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~9 .shared_arith = "off";

arriav_lcell_comb \Add7~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~17_sumout ),
	.datad(!\Add6~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~13_sumout ),
	.cout(\Add7~14 ),
	.shareout());
defparam \Add7~13 .extended_lut = "off";
defparam \Add7~13 .lut_mask = 64'h00000000000005AF;
defparam \Add7~13 .shared_arith = "off";

arriav_lcell_comb \Add8~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~17_sumout ),
	.datad(!\Add6~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~13_sumout ),
	.cout(\Add8~14 ),
	.shareout());
defparam \Add8~13 .extended_lut = "off";
defparam \Add8~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~13 .shared_arith = "off";

arriav_lcell_comb \Add9~13 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~17_sumout ),
	.datad(!\Add8~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~13_sumout ),
	.cout(\Add9~14 ),
	.shareout());
defparam \Add9~13 .extended_lut = "off";
defparam \Add9~13 .lut_mask = 64'h00000000000005AF;
defparam \Add9~13 .shared_arith = "off";

arriav_lcell_comb \Add10~13 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~17_sumout ),
	.datad(!\Add8~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~13_sumout ),
	.cout(\Add10~14 ),
	.shareout());
defparam \Add10~13 .extended_lut = "off";
defparam \Add10~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~13 .shared_arith = "off";

arriav_lcell_comb \Add11~13 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~17_sumout ),
	.datad(!\Add10~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~13_sumout ),
	.cout(\Add11~14 ),
	.shareout());
defparam \Add11~13 .extended_lut = "off";
defparam \Add11~13 .lut_mask = 64'h00000000000005AF;
defparam \Add11~13 .shared_arith = "off";

arriav_lcell_comb \Add12~13 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~17_sumout ),
	.datad(!\Add10~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~13_sumout ),
	.cout(\Add12~14 ),
	.shareout());
defparam \Add12~13 .extended_lut = "off";
defparam \Add12~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~13 .shared_arith = "off";

arriav_lcell_comb \Add11~17 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~21_sumout ),
	.datad(!\Add10~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~17_sumout ),
	.cout(\Add11~18 ),
	.shareout());
defparam \Add11~17 .extended_lut = "off";
defparam \Add11~17 .lut_mask = 64'h00000000000005AF;
defparam \Add11~17 .shared_arith = "off";

arriav_lcell_comb \Add12~17 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~21_sumout ),
	.datad(!\Add10~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~17_sumout ),
	.cout(\Add12~18 ),
	.shareout());
defparam \Add12~17 .extended_lut = "off";
defparam \Add12~17 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~17 .shared_arith = "off";

arriav_lcell_comb \Add11~21 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~25_sumout ),
	.datad(!\Add10~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~21_sumout ),
	.cout(\Add11~22 ),
	.shareout());
defparam \Add11~21 .extended_lut = "off";
defparam \Add11~21 .lut_mask = 64'h00000000000005AF;
defparam \Add11~21 .shared_arith = "off";

arriav_lcell_comb \Add12~21 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~25_sumout ),
	.datad(!\Add10~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~21_sumout ),
	.cout(\Add12~22 ),
	.shareout());
defparam \Add12~21 .extended_lut = "off";
defparam \Add12~21 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~21 .shared_arith = "off";

arriav_lcell_comb \Add11~25 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~29_sumout ),
	.datad(!\Add10~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~25_sumout ),
	.cout(\Add11~26 ),
	.shareout());
defparam \Add11~25 .extended_lut = "off";
defparam \Add11~25 .lut_mask = 64'h00000000000005AF;
defparam \Add11~25 .shared_arith = "off";

arriav_lcell_comb \Add12~25 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~29_sumout ),
	.datad(!\Add10~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~25_sumout ),
	.cout(\Add12~26 ),
	.shareout());
defparam \Add12~25 .extended_lut = "off";
defparam \Add12~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~25 .shared_arith = "off";

arriav_lcell_comb \Add11~29 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~33_sumout ),
	.datad(!\Add10~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~29_sumout ),
	.cout(\Add11~30 ),
	.shareout());
defparam \Add11~29 .extended_lut = "off";
defparam \Add11~29 .lut_mask = 64'h00000000000005AF;
defparam \Add11~29 .shared_arith = "off";

arriav_lcell_comb \Add12~29 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~33_sumout ),
	.datad(!\Add10~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~29_sumout ),
	.cout(\Add12~30 ),
	.shareout());
defparam \Add12~29 .extended_lut = "off";
defparam \Add12~29 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~29 .shared_arith = "off";

arriav_lcell_comb \Add11~33 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~37_sumout ),
	.datad(!\Add10~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~33_sumout ),
	.cout(\Add11~34 ),
	.shareout());
defparam \Add11~33 .extended_lut = "off";
defparam \Add11~33 .lut_mask = 64'h00000000000005AF;
defparam \Add11~33 .shared_arith = "off";

arriav_lcell_comb \Add12~33 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~37_sumout ),
	.datad(!\Add10~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~33_sumout ),
	.cout(\Add12~34 ),
	.shareout());
defparam \Add12~33 .extended_lut = "off";
defparam \Add12~33 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~33 .shared_arith = "off";

arriav_lcell_comb \Add11~37 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~41_sumout ),
	.datad(!\Add10~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~37_sumout ),
	.cout(\Add11~38 ),
	.shareout());
defparam \Add11~37 .extended_lut = "off";
defparam \Add11~37 .lut_mask = 64'h00000000000005AF;
defparam \Add11~37 .shared_arith = "off";

arriav_lcell_comb \Add12~37 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~41_sumout ),
	.datad(!\Add10~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~37_sumout ),
	.cout(\Add12~38 ),
	.shareout());
defparam \Add12~37 .extended_lut = "off";
defparam \Add12~37 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~37 .shared_arith = "off";

arriav_lcell_comb \Add13~37 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~41_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~41_sumout ),
	.datag(gnd),
	.cin(\Add13~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~37_sumout ),
	.cout(\Add13~38 ),
	.shareout());
defparam \Add13~37 .extended_lut = "off";
defparam \Add13~37 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~37 .shared_arith = "off";

arriav_lcell_comb \Add15~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~41_sumout ),
	.cout(\Add15~42 ),
	.shareout());
defparam \Add15~41 .extended_lut = "off";
defparam \Add15~41 .lut_mask = 64'h00000000000000FF;
defparam \Add15~41 .shared_arith = "off";

arriav_lcell_comb \Add16~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~41_sumout ),
	.cout(\Add16~42 ),
	.shareout());
defparam \Add16~41 .extended_lut = "off";
defparam \Add16~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~41 .shared_arith = "off";

arriav_lcell_comb \Add17~41 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~45_sumout ),
	.datad(!\Add16~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~41_sumout ),
	.cout(\Add17~42 ),
	.shareout());
defparam \Add17~41 .extended_lut = "off";
defparam \Add17~41 .lut_mask = 64'h00000000000005AF;
defparam \Add17~41 .shared_arith = "off";

arriav_lcell_comb \Add18~41 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~45_sumout ),
	.datad(!\Add16~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~41_sumout ),
	.cout(\Add18~42 ),
	.shareout());
defparam \Add18~41 .extended_lut = "off";
defparam \Add18~41 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~41 .shared_arith = "off";

arriav_lcell_comb \Add67~1 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~1_sumout ),
	.datag(gnd),
	.cin(\Add67~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~1_sumout ),
	.cout(),
	.shareout());
defparam \Add67~1 .extended_lut = "off";
defparam \Add67~1 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~1 .shared_arith = "off";

arriav_lcell_comb \Add65~1 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~1_sumout ),
	.datag(gnd),
	.cin(\Add65~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~1_sumout ),
	.cout(),
	.shareout());
defparam \Add65~1 .extended_lut = "off";
defparam \Add65~1 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~1 .shared_arith = "off";

arriav_lcell_comb \Add67~5 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~5_sumout ),
	.datag(gnd),
	.cin(\Add67~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~5_sumout ),
	.cout(\Add67~6 ),
	.shareout());
defparam \Add67~5 .extended_lut = "off";
defparam \Add67~5 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~5 .shared_arith = "off";

arriav_lcell_comb \Add67~9 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~9_sumout ),
	.datag(gnd),
	.cin(\Add67~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~9_sumout ),
	.cout(\Add67~10 ),
	.shareout());
defparam \Add67~9 .extended_lut = "off";
defparam \Add67~9 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~9 .shared_arith = "off";

arriav_lcell_comb \Add67~13 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~13_sumout ),
	.datag(gnd),
	.cin(\Add67~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~13_sumout ),
	.cout(\Add67~14 ),
	.shareout());
defparam \Add67~13 .extended_lut = "off";
defparam \Add67~13 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~13 .shared_arith = "off";

arriav_lcell_comb \Add67~17 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~17_sumout ),
	.datag(gnd),
	.cin(\Add67~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~17_sumout ),
	.cout(\Add67~18 ),
	.shareout());
defparam \Add67~17 .extended_lut = "off";
defparam \Add67~17 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~17 .shared_arith = "off";

arriav_lcell_comb \Add65~5 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~21_sumout ),
	.datae(gnd),
	.dataf(!\Add63~5_sumout ),
	.datag(gnd),
	.cin(\Add65~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~5_sumout ),
	.cout(\Add65~6 ),
	.shareout());
defparam \Add65~5 .extended_lut = "off";
defparam \Add65~5 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~5 .shared_arith = "off";

arriav_lcell_comb \Add71~69 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~65_sumout ),
	.datae(gnd),
	.dataf(!\Add65~69_sumout ),
	.datag(gnd),
	.cin(\Add71~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~69_sumout ),
	.cout(\Add71~70 ),
	.shareout());
defparam \Add71~69 .extended_lut = "off";
defparam \Add71~69 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~69 .shared_arith = "off";

arriav_lcell_comb \Add67~21 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~25_sumout ),
	.datag(gnd),
	.cin(\Add67~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~21_sumout ),
	.cout(\Add67~22 ),
	.shareout());
defparam \Add67~21 .extended_lut = "off";
defparam \Add67~21 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~21 .shared_arith = "off";

arriav_lcell_comb \Add73~73 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~73_sumout ),
	.datae(gnd),
	.dataf(!\Add69~61_sumout ),
	.datag(gnd),
	.cin(\Add73~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~73_sumout ),
	.cout(\Add73~74 ),
	.shareout());
defparam \Add73~73 .extended_lut = "off";
defparam \Add73~73 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~73 .shared_arith = "off";

arriav_lcell_comb \Add67~25 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~29_sumout ),
	.datag(gnd),
	.cin(\Add67~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~25_sumout ),
	.cout(\Add67~26 ),
	.shareout());
defparam \Add67~25 .extended_lut = "off";
defparam \Add67~25 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~25 .shared_arith = "off";

arriav_lcell_comb \Add65~9 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~17_sumout ),
	.datae(gnd),
	.dataf(!\Add63~9_sumout ),
	.datag(gnd),
	.cin(\Add65~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~9_sumout ),
	.cout(\Add65~10 ),
	.shareout());
defparam \Add65~9 .extended_lut = "off";
defparam \Add65~9 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~9 .shared_arith = "off";

arriav_lcell_comb \Add65~13 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~13_sumout ),
	.datag(gnd),
	.cin(\Add65~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~13_sumout ),
	.cout(\Add65~14 ),
	.shareout());
defparam \Add65~13 .extended_lut = "off";
defparam \Add65~13 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~13 .shared_arith = "off";

arriav_lcell_comb \Add65~17 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~17_sumout ),
	.datag(gnd),
	.cin(\Add65~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~17_sumout ),
	.cout(\Add65~18 ),
	.shareout());
defparam \Add65~17 .extended_lut = "off";
defparam \Add65~17 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~17 .shared_arith = "off";

arriav_lcell_comb \Add65~21 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~21_sumout ),
	.datag(gnd),
	.cin(\Add65~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~21_sumout ),
	.cout(\Add65~22 ),
	.shareout());
defparam \Add65~21 .extended_lut = "off";
defparam \Add65~21 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~21 .shared_arith = "off";

arriav_lcell_comb \Add65~25 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~25_sumout ),
	.datag(gnd),
	.cin(\Add65~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~25_sumout ),
	.cout(\Add65~26 ),
	.shareout());
defparam \Add65~25 .extended_lut = "off";
defparam \Add65~25 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~25 .shared_arith = "off";

arriav_lcell_comb \Add67~29 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~29_sumout ),
	.datae(gnd),
	.dataf(!\Add61~33_sumout ),
	.datag(gnd),
	.cin(\Add67~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~29_sumout ),
	.cout(\Add67~30 ),
	.shareout());
defparam \Add67~29 .extended_lut = "off";
defparam \Add67~29 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~29 .shared_arith = "off";

arriav_lcell_comb \Add69~69 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~65_sumout ),
	.datae(gnd),
	.dataf(!\Add67~69_sumout ),
	.datag(gnd),
	.cin(\Add69~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~69_sumout ),
	.cout(\Add69~70 ),
	.shareout());
defparam \Add69~69 .extended_lut = "off";
defparam \Add69~69 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~69 .shared_arith = "off";

arriav_lcell_comb \Add65~29 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~33_sumout ),
	.datag(gnd),
	.cin(\Add65~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~29_sumout ),
	.cout(\Add65~30 ),
	.shareout());
defparam \Add65~29 .extended_lut = "off";
defparam \Add65~29 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~29 .shared_arith = "off";

arriav_lcell_comb \Add75~73 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~73_sumout ),
	.datae(gnd),
	.dataf(!\Add71~61_sumout ),
	.datag(gnd),
	.cin(\Add75~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~73_sumout ),
	.cout(\Add75~74 ),
	.shareout());
defparam \Add75~73 .extended_lut = "off";
defparam \Add75~73 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~73 .shared_arith = "off";

arriav_lcell_comb \Add65~33 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~37_sumout ),
	.datag(gnd),
	.cin(\Add65~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~33_sumout ),
	.cout(\Add65~34 ),
	.shareout());
defparam \Add65~33 .extended_lut = "off";
defparam \Add65~33 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~33 .shared_arith = "off";

arriav_lcell_comb \Add67~33 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~25_sumout ),
	.datae(gnd),
	.dataf(!\Add61~37_sumout ),
	.datag(gnd),
	.cin(\Add67~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~33_sumout ),
	.cout(\Add67~34 ),
	.shareout());
defparam \Add67~33 .extended_lut = "off";
defparam \Add67~33 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~33 .shared_arith = "off";

arriav_lcell_comb \Add65~37 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~25_sumout ),
	.datae(gnd),
	.dataf(!\Add63~41_sumout ),
	.datag(gnd),
	.cin(\Add65~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~37_sumout ),
	.cout(\Add65~38 ),
	.shareout());
defparam \Add65~37 .extended_lut = "off";
defparam \Add65~37 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~37 .shared_arith = "off";

arriav_lcell_comb \Add67~37 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~33_sumout ),
	.datae(gnd),
	.dataf(!\Add61~41_sumout ),
	.datag(gnd),
	.cin(\Add67~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~37_sumout ),
	.cout(\Add67~38 ),
	.shareout());
defparam \Add67~37 .extended_lut = "off";
defparam \Add67~37 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~37 .shared_arith = "off";

arriav_lcell_comb \Add65~41 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~13_sumout ),
	.datae(gnd),
	.dataf(!\Add63~45_sumout ),
	.datag(gnd),
	.cin(\Add65~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~41_sumout ),
	.cout(\Add65~42 ),
	.shareout());
defparam \Add65~41 .extended_lut = "off";
defparam \Add65~41 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~41 .shared_arith = "off";

arriav_lcell_comb \Add67~41 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~21_sumout ),
	.datae(gnd),
	.dataf(!\Add61~45_sumout ),
	.datag(gnd),
	.cin(\Add67~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~41_sumout ),
	.cout(\Add67~42 ),
	.shareout());
defparam \Add67~41 .extended_lut = "off";
defparam \Add67~41 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~41 .shared_arith = "off";

arriav_lcell_comb \Add65~45 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~9_sumout ),
	.datae(gnd),
	.dataf(!\Add63~49_sumout ),
	.datag(gnd),
	.cin(\Add65~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~45_sumout ),
	.cout(\Add65~46 ),
	.shareout());
defparam \Add65~45 .extended_lut = "off";
defparam \Add65~45 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~45 .shared_arith = "off";

arriav_lcell_comb \Add67~45 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~17_sumout ),
	.datae(gnd),
	.dataf(!\Add61~49_sumout ),
	.datag(gnd),
	.cin(\Add67~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~45_sumout ),
	.cout(\Add67~46 ),
	.shareout());
defparam \Add67~45 .extended_lut = "off";
defparam \Add67~45 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~45 .shared_arith = "off";

arriav_lcell_comb \Add65~49 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~5_sumout ),
	.datae(gnd),
	.dataf(!\Add63~53_sumout ),
	.datag(gnd),
	.cin(\Add65~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~49_sumout ),
	.cout(\Add65~50 ),
	.shareout());
defparam \Add65~49 .extended_lut = "off";
defparam \Add65~49 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~49 .shared_arith = "off";

arriav_lcell_comb \Add67~49 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~13_sumout ),
	.datae(gnd),
	.dataf(!\Add61~53_sumout ),
	.datag(gnd),
	.cin(\Add67~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~49_sumout ),
	.cout(\Add67~50 ),
	.shareout());
defparam \Add67~49 .extended_lut = "off";
defparam \Add67~49 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~49 .shared_arith = "off";

arriav_lcell_comb \Add65~53 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~29_sumout ),
	.datae(gnd),
	.dataf(!\Add63~57_sumout ),
	.datag(gnd),
	.cin(\Add65~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~53_sumout ),
	.cout(\Add65~54 ),
	.shareout());
defparam \Add65~53 .extended_lut = "off";
defparam \Add65~53 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~53 .shared_arith = "off";

arriav_lcell_comb \Add67~53 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~37_sumout ),
	.datae(gnd),
	.dataf(!\Add61~57_sumout ),
	.datag(gnd),
	.cin(\Add67~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~53_sumout ),
	.cout(\Add67~54 ),
	.shareout());
defparam \Add67~53 .extended_lut = "off";
defparam \Add67~53 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~53 .shared_arith = "off";

arriav_lcell_comb \Add65~57 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~61_sumout ),
	.datag(gnd),
	.cin(\Add65~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~57_sumout ),
	.cout(\Add65~58 ),
	.shareout());
defparam \Add65~57 .extended_lut = "off";
defparam \Add65~57 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~57 .shared_arith = "off";

arriav_lcell_comb \Add67~57 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~61_sumout ),
	.datag(gnd),
	.cin(\Add67~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~57_sumout ),
	.cout(\Add67~58 ),
	.shareout());
defparam \Add67~57 .extended_lut = "off";
defparam \Add67~57 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~57 .shared_arith = "off";

arriav_lcell_comb \Add65~61 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~65_sumout ),
	.datag(gnd),
	.cin(\Add65~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~61_sumout ),
	.cout(\Add65~62 ),
	.shareout());
defparam \Add65~61 .extended_lut = "off";
defparam \Add65~61 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~61 .shared_arith = "off";

arriav_lcell_comb \Add67~61 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~65_sumout ),
	.datag(gnd),
	.cin(\Add67~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~61_sumout ),
	.cout(\Add67~62 ),
	.shareout());
defparam \Add67~61 .extended_lut = "off";
defparam \Add67~61 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~61 .shared_arith = "off";

arriav_lcell_comb \Add65~65 (
	.dataa(!\Add61~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add63~29_sumout ),
	.datag(gnd),
	.cin(\Add65~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~65_sumout ),
	.cout(\Add65~66 ),
	.shareout());
defparam \Add65~65 .extended_lut = "off";
defparam \Add65~65 .lut_mask = 64'h0000FF00000066A5;
defparam \Add65~65 .shared_arith = "off";

arriav_lcell_comb \Add67~65 (
	.dataa(!\Add63~1_sumout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~21_sumout ),
	.datag(gnd),
	.cin(\Add67~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~65_sumout ),
	.cout(\Add67~66 ),
	.shareout());
defparam \Add67~65 .extended_lut = "off";
defparam \Add67~65 .lut_mask = 64'h0000FF000000995A;
defparam \Add67~65 .shared_arith = "off";

arriav_lcell_comb \Add1~21 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~21_sumout ),
	.cout(\Add1~22 ),
	.shareout());
defparam \Add1~21 .extended_lut = "off";
defparam \Add1~21 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~21 .shared_arith = "off";

arriav_lcell_comb \Add2~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~29_sumout ),
	.cout(\Add2~30 ),
	.shareout());
defparam \Add2~29 .extended_lut = "off";
defparam \Add2~29 .lut_mask = 64'h00000000000000FF;
defparam \Add2~29 .shared_arith = "off";

arriav_lcell_comb \Add29~22 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[6]~9_combout ),
	.datag(gnd),
	.cin(\Add29~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~22_cout ),
	.shareout());
defparam \Add29~22 .extended_lut = "off";
defparam \Add29~22 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~22 .shared_arith = "off";

arriav_lcell_comb \Add4~13 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~13_sumout ),
	.datad(!\Add2~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~13_sumout ),
	.cout(\Add4~14 ),
	.shareout());
defparam \Add4~13 .extended_lut = "off";
defparam \Add4~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~13 .shared_arith = "off";

arriav_lcell_comb \Add5~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~13_sumout ),
	.cout(\Add5~14 ),
	.shareout());
defparam \Add5~13 .extended_lut = "off";
defparam \Add5~13 .lut_mask = 64'h00000000000000FF;
defparam \Add5~13 .shared_arith = "off";

arriav_lcell_comb \Add6~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~18 ),
	.sharein(\Add6~19 ),
	.combout(),
	.sumout(\Add6~13_sumout ),
	.cout(\Add6~14 ),
	.shareout(\Add6~15 ));
defparam \Add6~13 .extended_lut = "off";
defparam \Add6~13 .lut_mask = 64'h00000000000000FF;
defparam \Add6~13 .shared_arith = "on";

arriav_lcell_comb \Add5~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~17_sumout ),
	.cout(\Add5~18 ),
	.shareout());
defparam \Add5~17 .extended_lut = "off";
defparam \Add5~17 .lut_mask = 64'h00000000000000FF;
defparam \Add5~17 .shared_arith = "off";

arriav_lcell_comb \Add6~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~22 ),
	.sharein(\Add6~23 ),
	.combout(),
	.sumout(\Add6~17_sumout ),
	.cout(\Add6~18 ),
	.shareout(\Add6~19 ));
defparam \Add6~17 .extended_lut = "off";
defparam \Add6~17 .lut_mask = 64'h00000000000000FF;
defparam \Add6~17 .shared_arith = "on";

arriav_lcell_comb \Add7~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~21_sumout ),
	.datad(!\Add6~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~17_sumout ),
	.cout(\Add7~18 ),
	.shareout());
defparam \Add7~17 .extended_lut = "off";
defparam \Add7~17 .lut_mask = 64'h00000000000005AF;
defparam \Add7~17 .shared_arith = "off";

arriav_lcell_comb \Add8~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~21_sumout ),
	.datad(!\Add6~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~17_sumout ),
	.cout(\Add8~18 ),
	.shareout());
defparam \Add8~17 .extended_lut = "off";
defparam \Add8~17 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~17 .shared_arith = "off";

arriav_lcell_comb \Add9~17 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~21_sumout ),
	.datad(!\Add8~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~17_sumout ),
	.cout(\Add9~18 ),
	.shareout());
defparam \Add9~17 .extended_lut = "off";
defparam \Add9~17 .lut_mask = 64'h00000000000005AF;
defparam \Add9~17 .shared_arith = "off";

arriav_lcell_comb \Add10~17 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~21_sumout ),
	.datad(!\Add8~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~17_sumout ),
	.cout(\Add10~18 ),
	.shareout());
defparam \Add10~17 .extended_lut = "off";
defparam \Add10~17 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~17 .shared_arith = "off";

arriav_lcell_comb \Add9~21 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~25_sumout ),
	.datad(!\Add8~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~21_sumout ),
	.cout(\Add9~22 ),
	.shareout());
defparam \Add9~21 .extended_lut = "off";
defparam \Add9~21 .lut_mask = 64'h00000000000005AF;
defparam \Add9~21 .shared_arith = "off";

arriav_lcell_comb \Add10~21 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~25_sumout ),
	.datad(!\Add8~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~21_sumout ),
	.cout(\Add10~22 ),
	.shareout());
defparam \Add10~21 .extended_lut = "off";
defparam \Add10~21 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~21 .shared_arith = "off";

arriav_lcell_comb \Add9~25 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~29_sumout ),
	.datad(!\Add8~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~25_sumout ),
	.cout(\Add9~26 ),
	.shareout());
defparam \Add9~25 .extended_lut = "off";
defparam \Add9~25 .lut_mask = 64'h00000000000005AF;
defparam \Add9~25 .shared_arith = "off";

arriav_lcell_comb \Add10~25 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~29_sumout ),
	.datad(!\Add8~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~25_sumout ),
	.cout(\Add10~26 ),
	.shareout());
defparam \Add10~25 .extended_lut = "off";
defparam \Add10~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~25 .shared_arith = "off";

arriav_lcell_comb \Add9~29 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~33_sumout ),
	.datad(!\Add8~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~29_sumout ),
	.cout(\Add9~30 ),
	.shareout());
defparam \Add9~29 .extended_lut = "off";
defparam \Add9~29 .lut_mask = 64'h00000000000005AF;
defparam \Add9~29 .shared_arith = "off";

arriav_lcell_comb \Add10~29 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~33_sumout ),
	.datad(!\Add8~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~29_sumout ),
	.cout(\Add10~30 ),
	.shareout());
defparam \Add10~29 .extended_lut = "off";
defparam \Add10~29 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~29 .shared_arith = "off";

arriav_lcell_comb \Add9~33 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~37_sumout ),
	.datad(!\Add8~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~33_sumout ),
	.cout(\Add9~34 ),
	.shareout());
defparam \Add9~33 .extended_lut = "off";
defparam \Add9~33 .lut_mask = 64'h00000000000005AF;
defparam \Add9~33 .shared_arith = "off";

arriav_lcell_comb \Add10~33 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~37_sumout ),
	.datad(!\Add8~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~33_sumout ),
	.cout(\Add10~34 ),
	.shareout());
defparam \Add10~33 .extended_lut = "off";
defparam \Add10~33 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~33 .shared_arith = "off";

arriav_lcell_comb \Add9~37 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~41_sumout ),
	.datad(!\Add8~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~37_sumout ),
	.cout(\Add9~38 ),
	.shareout());
defparam \Add9~37 .extended_lut = "off";
defparam \Add9~37 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add9~37 .shared_arith = "off";

arriav_lcell_comb \Add10~37 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~41_sumout ),
	.datad(!\Add8~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~37_sumout ),
	.cout(\Add10~38 ),
	.shareout());
defparam \Add10~37 .extended_lut = "off";
defparam \Add10~37 .lut_mask = 64'h00000000000005AF;
defparam \Add10~37 .shared_arith = "off";

arriav_lcell_comb \Add9~41 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~45_sumout ),
	.datad(!\Add8~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~41_sumout ),
	.cout(\Add9~42 ),
	.shareout());
defparam \Add9~41 .extended_lut = "off";
defparam \Add9~41 .lut_mask = 64'h00000000000005AF;
defparam \Add9~41 .shared_arith = "off";

arriav_lcell_comb \Add10~41 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~45_sumout ),
	.datad(!\Add8~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~41_sumout ),
	.cout(\Add10~42 ),
	.shareout());
defparam \Add10~41 .extended_lut = "off";
defparam \Add10~41 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~41 .shared_arith = "off";

arriav_lcell_comb \Add11~41 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~45_sumout ),
	.datad(!\Add10~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~41_sumout ),
	.cout(\Add11~42 ),
	.shareout());
defparam \Add11~41 .extended_lut = "off";
defparam \Add11~41 .lut_mask = 64'h00000000000005AF;
defparam \Add11~41 .shared_arith = "off";

arriav_lcell_comb \Add12~41 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~45_sumout ),
	.datad(!\Add10~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~41_sumout ),
	.cout(\Add12~42 ),
	.shareout());
defparam \Add12~41 .extended_lut = "off";
defparam \Add12~41 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~41 .shared_arith = "off";

arriav_lcell_comb \Add13~41 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~45_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~45_sumout ),
	.datag(gnd),
	.cin(\Add13~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~41_sumout ),
	.cout(\Add13~42 ),
	.shareout());
defparam \Add13~41 .extended_lut = "off";
defparam \Add13~41 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~41 .shared_arith = "off";

arriav_lcell_comb \Add15~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~45_sumout ),
	.cout(\Add15~46 ),
	.shareout());
defparam \Add15~45 .extended_lut = "off";
defparam \Add15~45 .lut_mask = 64'h00000000000000FF;
defparam \Add15~45 .shared_arith = "off";

arriav_lcell_comb \Add16~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~45_sumout ),
	.cout(\Add16~46 ),
	.shareout());
defparam \Add16~45 .extended_lut = "off";
defparam \Add16~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~45 .shared_arith = "off";

arriav_lcell_comb \Add17~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~49_sumout ),
	.datad(!\Add16~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~45_sumout ),
	.cout(\Add17~46 ),
	.shareout());
defparam \Add17~45 .extended_lut = "off";
defparam \Add17~45 .lut_mask = 64'h00000000000005AF;
defparam \Add17~45 .shared_arith = "off";

arriav_lcell_comb \Add18~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~49_sumout ),
	.datad(!\Add16~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~45_sumout ),
	.cout(\Add18~46 ),
	.shareout());
defparam \Add18~45 .extended_lut = "off";
defparam \Add18~45 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~45 .shared_arith = "off";

arriav_lcell_comb \Add63~1 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~1_sumout ),
	.datag(gnd),
	.cin(\Add63~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~1_sumout ),
	.cout(),
	.shareout());
defparam \Add63~1 .extended_lut = "off";
defparam \Add63~1 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~1 .shared_arith = "off";

arriav_lcell_comb \Add61~1 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~1_sumout ),
	.datag(gnd),
	.cin(\Add61~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~1_sumout ),
	.cout(),
	.shareout());
defparam \Add61~1 .extended_lut = "off";
defparam \Add61~1 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~1 .shared_arith = "off";

arriav_lcell_comb \Add61~5 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~5_sumout ),
	.datag(gnd),
	.cin(\Add61~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~5_sumout ),
	.cout(\Add61~6 ),
	.shareout());
defparam \Add61~5 .extended_lut = "off";
defparam \Add61~5 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~5 .shared_arith = "off";

arriav_lcell_comb \Add61~9 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~9_sumout ),
	.datag(gnd),
	.cin(\Add61~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~9_sumout ),
	.cout(\Add61~10 ),
	.shareout());
defparam \Add61~9 .extended_lut = "off";
defparam \Add61~9 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~9 .shared_arith = "off";

arriav_lcell_comb \Add61~13 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~13_sumout ),
	.datag(gnd),
	.cin(\Add61~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~13_sumout ),
	.cout(\Add61~14 ),
	.shareout());
defparam \Add61~13 .extended_lut = "off";
defparam \Add61~13 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~13 .shared_arith = "off";

arriav_lcell_comb \Add61~17 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~17_sumout ),
	.datag(gnd),
	.cin(\Add61~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~17_sumout ),
	.cout(\Add61~18 ),
	.shareout());
defparam \Add61~17 .extended_lut = "off";
defparam \Add61~17 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~17 .shared_arith = "off";

arriav_lcell_comb \Add61~21 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~21_sumout ),
	.datag(gnd),
	.cin(\Add61~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~21_sumout ),
	.cout(\Add61~22 ),
	.shareout());
defparam \Add61~21 .extended_lut = "off";
defparam \Add61~21 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~21 .shared_arith = "off";

arriav_lcell_comb \Add63~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~25_sumout ),
	.datae(gnd),
	.dataf(!\Add57~5_sumout ),
	.datag(gnd),
	.cin(\Add63~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~5_sumout ),
	.cout(\Add63~6 ),
	.shareout());
defparam \Add63~5 .extended_lut = "off";
defparam \Add63~5 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~5 .shared_arith = "off";

arriav_lcell_comb \Add65~69 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~65_sumout ),
	.datae(gnd),
	.dataf(!\Add63~69_sumout ),
	.datag(gnd),
	.cin(\Add65~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~69_sumout ),
	.cout(\Add65~70 ),
	.shareout());
defparam \Add65~69 .extended_lut = "off";
defparam \Add65~69 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~69 .shared_arith = "off";

arriav_lcell_comb \Add71~73 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~61_sumout ),
	.datae(gnd),
	.dataf(!\Add65~73_sumout ),
	.datag(gnd),
	.cin(\Add71~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~73_sumout ),
	.cout(\Add71~74 ),
	.shareout());
defparam \Add71~73 .extended_lut = "off";
defparam \Add71~73 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~73 .shared_arith = "off";

arriav_lcell_comb \Add61~25 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~29_sumout ),
	.datag(gnd),
	.cin(\Add61~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~25_sumout ),
	.cout(\Add61~26 ),
	.shareout());
defparam \Add61~25 .extended_lut = "off";
defparam \Add61~25 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~25 .shared_arith = "off";

arriav_lcell_comb \Add73~77 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~77_sumout ),
	.datae(gnd),
	.dataf(!\Add69~57_sumout ),
	.datag(gnd),
	.cin(\Add73~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~77_sumout ),
	.cout(\Add73~78 ),
	.shareout());
defparam \Add73~77 .extended_lut = "off";
defparam \Add73~77 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~77 .shared_arith = "off";

arriav_lcell_comb \Add61~29 (
	.dataa(!\Add57~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add59~33_sumout ),
	.datag(gnd),
	.cin(\Add61~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~29_sumout ),
	.cout(\Add61~30 ),
	.shareout());
defparam \Add61~29 .extended_lut = "off";
defparam \Add61~29 .lut_mask = 64'h0000FF000000665A;
defparam \Add61~29 .shared_arith = "off";

arriav_lcell_comb \Add63~9 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~21_sumout ),
	.datae(gnd),
	.dataf(!\Add57~9_sumout ),
	.datag(gnd),
	.cin(\Add63~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~9_sumout ),
	.cout(\Add63~10 ),
	.shareout());
defparam \Add63~9 .extended_lut = "off";
defparam \Add63~9 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~9 .shared_arith = "off";

arriav_lcell_comb \Add63~13 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~13_sumout ),
	.datag(gnd),
	.cin(\Add63~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~13_sumout ),
	.cout(\Add63~14 ),
	.shareout());
defparam \Add63~13 .extended_lut = "off";
defparam \Add63~13 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~13 .shared_arith = "off";

arriav_lcell_comb \Add63~17 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~17_sumout ),
	.datag(gnd),
	.cin(\Add63~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~17_sumout ),
	.cout(\Add63~18 ),
	.shareout());
defparam \Add63~17 .extended_lut = "off";
defparam \Add63~17 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~17 .shared_arith = "off";

arriav_lcell_comb \Add63~21 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~21_sumout ),
	.datag(gnd),
	.cin(\Add63~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~21_sumout ),
	.cout(\Add63~22 ),
	.shareout());
defparam \Add63~21 .extended_lut = "off";
defparam \Add63~21 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~21 .shared_arith = "off";

arriav_lcell_comb \Add63~25 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~25_sumout ),
	.datag(gnd),
	.cin(\Add63~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~25_sumout ),
	.cout(\Add63~26 ),
	.shareout());
defparam \Add63~25 .extended_lut = "off";
defparam \Add63~25 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~25 .shared_arith = "off";

arriav_lcell_comb \Add63~29 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~29_sumout ),
	.datag(gnd),
	.cin(\Add63~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~29_sumout ),
	.cout(\Add63~30 ),
	.shareout());
defparam \Add63~29 .extended_lut = "off";
defparam \Add63~29 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~29 .shared_arith = "off";

arriav_lcell_comb \Add61~33 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~33_sumout ),
	.datae(gnd),
	.dataf(!\Add59~37_sumout ),
	.datag(gnd),
	.cin(\Add61~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~33_sumout ),
	.cout(\Add61~34 ),
	.shareout());
defparam \Add61~33 .extended_lut = "off";
defparam \Add61~33 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~33 .shared_arith = "off";

arriav_lcell_comb \Add67~69 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~65_sumout ),
	.datae(gnd),
	.dataf(!\Add61~69_sumout ),
	.datag(gnd),
	.cin(\Add67~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~69_sumout ),
	.cout(\Add67~70 ),
	.shareout());
defparam \Add67~69 .extended_lut = "off";
defparam \Add67~69 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~69 .shared_arith = "off";

arriav_lcell_comb \Add69~73 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~61_sumout ),
	.datae(gnd),
	.dataf(!\Add67~73_sumout ),
	.datag(gnd),
	.cin(\Add69~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~73_sumout ),
	.cout(\Add69~74 ),
	.shareout());
defparam \Add69~73 .extended_lut = "off";
defparam \Add69~73 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~73 .shared_arith = "off";

arriav_lcell_comb \Add63~33 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~37_sumout ),
	.datag(gnd),
	.cin(\Add63~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~33_sumout ),
	.cout(\Add63~34 ),
	.shareout());
defparam \Add63~33 .extended_lut = "off";
defparam \Add63~33 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~33 .shared_arith = "off";

arriav_lcell_comb \Add75~77 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~77_sumout ),
	.datae(gnd),
	.dataf(!\Add71~57_sumout ),
	.datag(gnd),
	.cin(\Add75~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~77_sumout ),
	.cout(\Add75~78 ),
	.shareout());
defparam \Add75~77 .extended_lut = "off";
defparam \Add75~77 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~77 .shared_arith = "off";

arriav_lcell_comb \Add63~37 (
	.dataa(!\Add59~1_sumout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datae(gnd),
	.dataf(!\Add57~41_sumout ),
	.datag(gnd),
	.cin(\Add63~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~37_sumout ),
	.cout(\Add63~38 ),
	.shareout());
defparam \Add63~37 .extended_lut = "off";
defparam \Add63~37 .lut_mask = 64'h0000FF00000099A5;
defparam \Add63~37 .shared_arith = "off";

arriav_lcell_comb \Add61~37 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~29_sumout ),
	.datae(gnd),
	.dataf(!\Add59~41_sumout ),
	.datag(gnd),
	.cin(\Add61~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~37_sumout ),
	.cout(\Add61~38 ),
	.shareout());
defparam \Add61~37 .extended_lut = "off";
defparam \Add61~37 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~37 .shared_arith = "off";

arriav_lcell_comb \Add63~41 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~17_sumout ),
	.datae(gnd),
	.dataf(!\Add57~45_sumout ),
	.datag(gnd),
	.cin(\Add63~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~41_sumout ),
	.cout(\Add63~42 ),
	.shareout());
defparam \Add63~41 .extended_lut = "off";
defparam \Add63~41 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~41 .shared_arith = "off";

arriav_lcell_comb \Add61~41 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~25_sumout ),
	.datae(gnd),
	.dataf(!\Add59~45_sumout ),
	.datag(gnd),
	.cin(\Add61~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~41_sumout ),
	.cout(\Add61~42 ),
	.shareout());
defparam \Add61~41 .extended_lut = "off";
defparam \Add61~41 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~41 .shared_arith = "off";

arriav_lcell_comb \Add63~45 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~29_sumout ),
	.datae(gnd),
	.dataf(!\Add57~49_sumout ),
	.datag(gnd),
	.cin(\Add63~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~45_sumout ),
	.cout(\Add63~46 ),
	.shareout());
defparam \Add63~45 .extended_lut = "off";
defparam \Add63~45 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~45 .shared_arith = "off";

arriav_lcell_comb \Add61~45 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~37_sumout ),
	.datae(gnd),
	.dataf(!\Add59~49_sumout ),
	.datag(gnd),
	.cin(\Add61~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~45_sumout ),
	.cout(\Add61~46 ),
	.shareout());
defparam \Add61~45 .extended_lut = "off";
defparam \Add61~45 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~45 .shared_arith = "off";

arriav_lcell_comb \Add63~49 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~13_sumout ),
	.datae(gnd),
	.dataf(!\Add57~53_sumout ),
	.datag(gnd),
	.cin(\Add63~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~49_sumout ),
	.cout(\Add63~50 ),
	.shareout());
defparam \Add63~49 .extended_lut = "off";
defparam \Add63~49 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~49 .shared_arith = "off";

arriav_lcell_comb \Add61~49 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~21_sumout ),
	.datae(gnd),
	.dataf(!\Add59~53_sumout ),
	.datag(gnd),
	.cin(\Add61~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~49_sumout ),
	.cout(\Add61~50 ),
	.shareout());
defparam \Add61~49 .extended_lut = "off";
defparam \Add61~49 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~49 .shared_arith = "off";

arriav_lcell_comb \Add63~53 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~9_sumout ),
	.datae(gnd),
	.dataf(!\Add57~57_sumout ),
	.datag(gnd),
	.cin(\Add63~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~53_sumout ),
	.cout(\Add63~54 ),
	.shareout());
defparam \Add63~53 .extended_lut = "off";
defparam \Add63~53 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~53 .shared_arith = "off";

arriav_lcell_comb \Add61~53 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~17_sumout ),
	.datae(gnd),
	.dataf(!\Add59~57_sumout ),
	.datag(gnd),
	.cin(\Add61~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~53_sumout ),
	.cout(\Add61~54 ),
	.shareout());
defparam \Add61~53 .extended_lut = "off";
defparam \Add61~53 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~53 .shared_arith = "off";

arriav_lcell_comb \Add63~57 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~5_sumout ),
	.datae(gnd),
	.dataf(!\Add57~61_sumout ),
	.datag(gnd),
	.cin(\Add63~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~57_sumout ),
	.cout(\Add63~58 ),
	.shareout());
defparam \Add63~57 .extended_lut = "off";
defparam \Add63~57 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~57 .shared_arith = "off";

arriav_lcell_comb \Add61~57 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~13_sumout ),
	.datae(gnd),
	.dataf(!\Add59~61_sumout ),
	.datag(gnd),
	.cin(\Add61~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~57_sumout ),
	.cout(\Add61~58 ),
	.shareout());
defparam \Add61~57 .extended_lut = "off";
defparam \Add61~57 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~57 .shared_arith = "off";

arriav_lcell_comb \Add63~61 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~33_sumout ),
	.datae(gnd),
	.dataf(!\Add57~65_sumout ),
	.datag(gnd),
	.cin(\Add63~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~61_sumout ),
	.cout(\Add63~62 ),
	.shareout());
defparam \Add63~61 .extended_lut = "off";
defparam \Add63~61 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~61 .shared_arith = "off";

arriav_lcell_comb \Add61~61 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~41_sumout ),
	.datae(gnd),
	.dataf(!\Add59~65_sumout ),
	.datag(gnd),
	.cin(\Add61~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~61_sumout ),
	.cout(\Add61~62 ),
	.shareout());
defparam \Add61~61 .extended_lut = "off";
defparam \Add61~61 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~61 .shared_arith = "off";

arriav_lcell_comb \Add63~65 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~1_sumout ),
	.datae(gnd),
	.dataf(!\Add57~33_sumout ),
	.datag(gnd),
	.cin(\Add63~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~65_sumout ),
	.cout(\Add63~66 ),
	.shareout());
defparam \Add63~65 .extended_lut = "off";
defparam \Add63~65 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~65 .shared_arith = "off";

arriav_lcell_comb \Add61~65 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~1_sumout ),
	.datae(gnd),
	.dataf(!\Add59~25_sumout ),
	.datag(gnd),
	.cin(\Add61~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~65_sumout ),
	.cout(\Add61~66 ),
	.shareout());
defparam \Add61~65 .extended_lut = "off";
defparam \Add61~65 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~65 .shared_arith = "off";

arriav_lcell_comb \Add1~25 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(\Add1~26 ),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~25 .shared_arith = "off";

arriav_lcell_comb \Add2~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~33_sumout ),
	.cout(\Add2~34 ),
	.shareout());
defparam \Add2~33 .extended_lut = "off";
defparam \Add2~33 .lut_mask = 64'h00000000000000FF;
defparam \Add2~33 .shared_arith = "off";

arriav_lcell_comb \Add29~26 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[5]~10_combout ),
	.datag(gnd),
	.cin(\Add29~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~26_cout ),
	.shareout());
defparam \Add29~26 .extended_lut = "off";
defparam \Add29~26 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~26 .shared_arith = "off";

arriav_lcell_comb \Add4~17 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~17_sumout ),
	.datad(!\Add2~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~17_sumout ),
	.cout(\Add4~18 ),
	.shareout());
defparam \Add4~17 .extended_lut = "off";
defparam \Add4~17 .lut_mask = 64'h00000000000005AF;
defparam \Add4~17 .shared_arith = "off";

arriav_lcell_comb \Add4~21 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~21_sumout ),
	.datad(!\Add2~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~21_sumout ),
	.cout(\Add4~22 ),
	.shareout());
defparam \Add4~21 .extended_lut = "off";
defparam \Add4~21 .lut_mask = 64'h00000000000005AF;
defparam \Add4~21 .shared_arith = "off";

arriav_lcell_comb \Add5~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~21_sumout ),
	.cout(\Add5~22 ),
	.shareout());
defparam \Add5~21 .extended_lut = "off";
defparam \Add5~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~21 .shared_arith = "off";

arriav_lcell_comb \Add6~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~26 ),
	.sharein(\Add6~27 ),
	.combout(),
	.sumout(\Add6~21_sumout ),
	.cout(\Add6~22 ),
	.shareout(\Add6~23 ));
defparam \Add6~21 .extended_lut = "off";
defparam \Add6~21 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~21 .shared_arith = "on";

arriav_lcell_comb \Add7~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~25_sumout ),
	.datad(!\Add6~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~21_sumout ),
	.cout(\Add7~22 ),
	.shareout());
defparam \Add7~21 .extended_lut = "off";
defparam \Add7~21 .lut_mask = 64'h00000000000005AF;
defparam \Add7~21 .shared_arith = "off";

arriav_lcell_comb \Add8~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~25_sumout ),
	.datad(!\Add6~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~21_sumout ),
	.cout(\Add8~22 ),
	.shareout());
defparam \Add8~21 .extended_lut = "off";
defparam \Add8~21 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~21 .shared_arith = "off";

arriav_lcell_comb \Add7~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~29_sumout ),
	.datad(!\Add6~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~25_sumout ),
	.cout(\Add7~26 ),
	.shareout());
defparam \Add7~25 .extended_lut = "off";
defparam \Add7~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add7~25 .shared_arith = "off";

arriav_lcell_comb \Add8~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~29_sumout ),
	.datad(!\Add6~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~25_sumout ),
	.cout(\Add8~26 ),
	.shareout());
defparam \Add8~25 .extended_lut = "off";
defparam \Add8~25 .lut_mask = 64'h00000000000005AF;
defparam \Add8~25 .shared_arith = "off";

arriav_lcell_comb \Add7~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~33_sumout ),
	.datad(!\Add6~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~29_sumout ),
	.cout(\Add7~30 ),
	.shareout());
defparam \Add7~29 .extended_lut = "off";
defparam \Add7~29 .lut_mask = 64'h00000000000005AF;
defparam \Add7~29 .shared_arith = "off";

arriav_lcell_comb \Add8~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~33_sumout ),
	.datad(!\Add6~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~29_sumout ),
	.cout(\Add8~30 ),
	.shareout());
defparam \Add8~29 .extended_lut = "off";
defparam \Add8~29 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~29 .shared_arith = "off";

arriav_lcell_comb \Add7~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~37_sumout ),
	.datad(!\Add6~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~33_sumout ),
	.cout(\Add7~34 ),
	.shareout());
defparam \Add7~33 .extended_lut = "off";
defparam \Add7~33 .lut_mask = 64'h00000000000005AF;
defparam \Add7~33 .shared_arith = "off";

arriav_lcell_comb \Add8~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~37_sumout ),
	.datad(!\Add6~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~33_sumout ),
	.cout(\Add8~34 ),
	.shareout());
defparam \Add8~33 .extended_lut = "off";
defparam \Add8~33 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~33 .shared_arith = "off";

arriav_lcell_comb \Add7~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~41_sumout ),
	.datad(!\Add6~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~37_sumout ),
	.cout(\Add7~38 ),
	.shareout());
defparam \Add7~37 .extended_lut = "off";
defparam \Add7~37 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add7~37 .shared_arith = "off";

arriav_lcell_comb \Add8~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~41_sumout ),
	.datad(!\Add6~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~37_sumout ),
	.cout(\Add8~38 ),
	.shareout());
defparam \Add8~37 .extended_lut = "off";
defparam \Add8~37 .lut_mask = 64'h00000000000005AF;
defparam \Add8~37 .shared_arith = "off";

arriav_lcell_comb \Add7~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~45_sumout ),
	.datad(!\Add6~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~41_sumout ),
	.cout(\Add7~42 ),
	.shareout());
defparam \Add7~41 .extended_lut = "off";
defparam \Add7~41 .lut_mask = 64'h00000000000005AF;
defparam \Add7~41 .shared_arith = "off";

arriav_lcell_comb \Add8~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~45_sumout ),
	.datad(!\Add6~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~41_sumout ),
	.cout(\Add8~42 ),
	.shareout());
defparam \Add8~41 .extended_lut = "off";
defparam \Add8~41 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~41 .shared_arith = "off";

arriav_lcell_comb \Add7~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~49_sumout ),
	.datad(!\Add6~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~45_sumout ),
	.cout(\Add7~46 ),
	.shareout());
defparam \Add7~45 .extended_lut = "off";
defparam \Add7~45 .lut_mask = 64'h00000000000005AF;
defparam \Add7~45 .shared_arith = "off";

arriav_lcell_comb \Add8~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~49_sumout ),
	.datad(!\Add6~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~45_sumout ),
	.cout(\Add8~46 ),
	.shareout());
defparam \Add8~45 .extended_lut = "off";
defparam \Add8~45 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~45 .shared_arith = "off";

arriav_lcell_comb \Add9~45 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~49_sumout ),
	.datad(!\Add8~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~45_sumout ),
	.cout(\Add9~46 ),
	.shareout());
defparam \Add9~45 .extended_lut = "off";
defparam \Add9~45 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add9~45 .shared_arith = "off";

arriav_lcell_comb \Add10~45 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~49_sumout ),
	.datad(!\Add8~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~45_sumout ),
	.cout(\Add10~46 ),
	.shareout());
defparam \Add10~45 .extended_lut = "off";
defparam \Add10~45 .lut_mask = 64'h00000000000005AF;
defparam \Add10~45 .shared_arith = "off";

arriav_lcell_comb \Add11~45 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~49_sumout ),
	.datad(!\Add10~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~45_sumout ),
	.cout(\Add11~46 ),
	.shareout());
defparam \Add11~45 .extended_lut = "off";
defparam \Add11~45 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~45 .shared_arith = "off";

arriav_lcell_comb \Add12~45 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~49_sumout ),
	.datad(!\Add10~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~45_sumout ),
	.cout(\Add12~46 ),
	.shareout());
defparam \Add12~45 .extended_lut = "off";
defparam \Add12~45 .lut_mask = 64'h00000000000005AF;
defparam \Add12~45 .shared_arith = "off";

arriav_lcell_comb \Add13~45 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~49_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~49_sumout ),
	.datag(gnd),
	.cin(\Add13~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~45_sumout ),
	.cout(\Add13~46 ),
	.shareout());
defparam \Add13~45 .extended_lut = "off";
defparam \Add13~45 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~45 .shared_arith = "off";

arriav_lcell_comb \Add15~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~49_sumout ),
	.cout(\Add15~50 ),
	.shareout());
defparam \Add15~49 .extended_lut = "off";
defparam \Add15~49 .lut_mask = 64'h00000000000000FF;
defparam \Add15~49 .shared_arith = "off";

arriav_lcell_comb \Add16~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~49_sumout ),
	.cout(\Add16~50 ),
	.shareout());
defparam \Add16~49 .extended_lut = "off";
defparam \Add16~49 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~49 .shared_arith = "off";

arriav_lcell_comb \Add17~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~53_sumout ),
	.datad(!\Add16~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~49_sumout ),
	.cout(\Add17~50 ),
	.shareout());
defparam \Add17~49 .extended_lut = "off";
defparam \Add17~49 .lut_mask = 64'h00000000000005AF;
defparam \Add17~49 .shared_arith = "off";

arriav_lcell_comb \Add18~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~53_sumout ),
	.datad(!\Add16~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~49_sumout ),
	.cout(\Add18~50 ),
	.shareout());
defparam \Add18~49 .extended_lut = "off";
defparam \Add18~49 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~49 .shared_arith = "off";

arriav_lcell_comb \Add59~1 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~1_sumout ),
	.datag(gnd),
	.cin(\Add59~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~1_sumout ),
	.cout(),
	.shareout());
defparam \Add59~1 .extended_lut = "off";
defparam \Add59~1 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~1 .shared_arith = "off";

arriav_lcell_comb \Add57~1 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~1_sumout ),
	.datag(gnd),
	.cin(\Add57~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~1_sumout ),
	.cout(),
	.shareout());
defparam \Add57~1 .extended_lut = "off";
defparam \Add57~1 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~1 .shared_arith = "off";

arriav_lcell_comb \Add59~5 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~5_sumout ),
	.datag(gnd),
	.cin(\Add59~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~5_sumout ),
	.cout(\Add59~6 ),
	.shareout());
defparam \Add59~5 .extended_lut = "off";
defparam \Add59~5 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~5 .shared_arith = "off";

arriav_lcell_comb \Add59~9 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~9_sumout ),
	.datag(gnd),
	.cin(\Add59~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~9_sumout ),
	.cout(\Add59~10 ),
	.shareout());
defparam \Add59~9 .extended_lut = "off";
defparam \Add59~9 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~9 .shared_arith = "off";

arriav_lcell_comb \Add59~13 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~13_sumout ),
	.datag(gnd),
	.cin(\Add59~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~13_sumout ),
	.cout(\Add59~14 ),
	.shareout());
defparam \Add59~13 .extended_lut = "off";
defparam \Add59~13 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~13 .shared_arith = "off";

arriav_lcell_comb \Add59~17 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~17_sumout ),
	.datag(gnd),
	.cin(\Add59~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~17_sumout ),
	.cout(\Add59~18 ),
	.shareout());
defparam \Add59~17 .extended_lut = "off";
defparam \Add59~17 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~17 .shared_arith = "off";

arriav_lcell_comb \Add59~21 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~21_sumout ),
	.datag(gnd),
	.cin(\Add59~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~21_sumout ),
	.cout(\Add59~22 ),
	.shareout());
defparam \Add59~21 .extended_lut = "off";
defparam \Add59~21 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~21 .shared_arith = "off";

arriav_lcell_comb \Add59~25 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~5_sumout ),
	.datae(gnd),
	.dataf(!\Add53~25_sumout ),
	.datag(gnd),
	.cin(\Add59~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~25_sumout ),
	.cout(\Add59~26 ),
	.shareout());
defparam \Add59~25 .extended_lut = "off";
defparam \Add59~25 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~25 .shared_arith = "off";

arriav_lcell_comb \Add57~5 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~29_sumout ),
	.datae(gnd),
	.dataf(!\Add55~9_sumout ),
	.datag(gnd),
	.cin(\Add57~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~5_sumout ),
	.cout(\Add57~6 ),
	.shareout());
defparam \Add57~5 .extended_lut = "off";
defparam \Add57~5 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~5 .shared_arith = "off";

arriav_lcell_comb \Add63~69 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~65_sumout ),
	.datae(gnd),
	.dataf(!\Add57~69_sumout ),
	.datag(gnd),
	.cin(\Add63~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~69_sumout ),
	.cout(\Add63~70 ),
	.shareout());
defparam \Add63~69 .extended_lut = "off";
defparam \Add63~69 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~69 .shared_arith = "off";

arriav_lcell_comb \Add65~73 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~61_sumout ),
	.datae(gnd),
	.dataf(!\Add63~73_sumout ),
	.datag(gnd),
	.cin(\Add65~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~73_sumout ),
	.cout(\Add65~74 ),
	.shareout());
defparam \Add65~73 .extended_lut = "off";
defparam \Add65~73 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~73 .shared_arith = "off";

arriav_lcell_comb \Add71~77 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~57_sumout ),
	.datae(gnd),
	.dataf(!\Add65~77_sumout ),
	.datag(gnd),
	.cin(\Add71~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~77_sumout ),
	.cout(\Add71~78 ),
	.shareout());
defparam \Add71~77 .extended_lut = "off";
defparam \Add71~77 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~77 .shared_arith = "off";

arriav_lcell_comb \Add59~29 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~33_sumout ),
	.datag(gnd),
	.cin(\Add59~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~29_sumout ),
	.cout(\Add59~30 ),
	.shareout());
defparam \Add59~29 .extended_lut = "off";
defparam \Add59~29 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~29 .shared_arith = "off";

arriav_lcell_comb \Add73~81 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~81_sumout ),
	.datae(gnd),
	.dataf(!\Add69~53_sumout ),
	.datag(gnd),
	.cin(\Add73~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~81_sumout ),
	.cout(\Add73~82 ),
	.shareout());
defparam \Add73~81 .extended_lut = "off";
defparam \Add73~81 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~81 .shared_arith = "off";

arriav_lcell_comb \Add59~33 (
	.dataa(!\Add55~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add53~37_sumout ),
	.datag(gnd),
	.cin(\Add59~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~33_sumout ),
	.cout(\Add59~34 ),
	.shareout());
defparam \Add59~33 .extended_lut = "off";
defparam \Add59~33 .lut_mask = 64'h0000FF000000665A;
defparam \Add59~33 .shared_arith = "off";

arriav_lcell_comb \Add57~9 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~25_sumout ),
	.datae(gnd),
	.dataf(!\Add55~13_sumout ),
	.datag(gnd),
	.cin(\Add57~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~9_sumout ),
	.cout(\Add57~10 ),
	.shareout());
defparam \Add57~9 .extended_lut = "off";
defparam \Add57~9 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~9 .shared_arith = "off";

arriav_lcell_comb \Add57~13 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~17_sumout ),
	.datag(gnd),
	.cin(\Add57~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~13_sumout ),
	.cout(\Add57~14 ),
	.shareout());
defparam \Add57~13 .extended_lut = "off";
defparam \Add57~13 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~13 .shared_arith = "off";

arriav_lcell_comb \Add57~17 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~21_sumout ),
	.datag(gnd),
	.cin(\Add57~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~17_sumout ),
	.cout(\Add57~18 ),
	.shareout());
defparam \Add57~17 .extended_lut = "off";
defparam \Add57~17 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~17 .shared_arith = "off";

arriav_lcell_comb \Add57~21 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~25_sumout ),
	.datag(gnd),
	.cin(\Add57~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~21_sumout ),
	.cout(\Add57~22 ),
	.shareout());
defparam \Add57~21 .extended_lut = "off";
defparam \Add57~21 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~21 .shared_arith = "off";

arriav_lcell_comb \Add57~25 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~29_sumout ),
	.datag(gnd),
	.cin(\Add57~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~25_sumout ),
	.cout(\Add57~26 ),
	.shareout());
defparam \Add57~25 .extended_lut = "off";
defparam \Add57~25 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~25 .shared_arith = "off";

arriav_lcell_comb \Add57~29 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~33_sumout ),
	.datag(gnd),
	.cin(\Add57~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~29_sumout ),
	.cout(\Add57~30 ),
	.shareout());
defparam \Add57~29 .extended_lut = "off";
defparam \Add57~29 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~29 .shared_arith = "off";

arriav_lcell_comb \Add57~33 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~37_sumout ),
	.datae(gnd),
	.dataf(!\Add55~37_sumout ),
	.datag(gnd),
	.cin(\Add57~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~33_sumout ),
	.cout(\Add57~34 ),
	.shareout());
defparam \Add57~33 .extended_lut = "off";
defparam \Add57~33 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~33 .shared_arith = "off";

arriav_lcell_comb \Add59~37 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~41_sumout ),
	.datae(gnd),
	.dataf(!\Add53~41_sumout ),
	.datag(gnd),
	.cin(\Add59~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~37_sumout ),
	.cout(\Add59~38 ),
	.shareout());
defparam \Add59~37 .extended_lut = "off";
defparam \Add59~37 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~37 .shared_arith = "off";

arriav_lcell_comb \Add61~69 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~65_sumout ),
	.datae(gnd),
	.dataf(!\Add59~69_sumout ),
	.datag(gnd),
	.cin(\Add61~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~69_sumout ),
	.cout(\Add61~70 ),
	.shareout());
defparam \Add61~69 .extended_lut = "off";
defparam \Add61~69 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~69 .shared_arith = "off";

arriav_lcell_comb \Add67~73 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~61_sumout ),
	.datae(gnd),
	.dataf(!\Add61~73_sumout ),
	.datag(gnd),
	.cin(\Add67~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~73_sumout ),
	.cout(\Add67~74 ),
	.shareout());
defparam \Add67~73 .extended_lut = "off";
defparam \Add67~73 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~73 .shared_arith = "off";

arriav_lcell_comb \Add69~77 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~57_sumout ),
	.datae(gnd),
	.dataf(!\Add67~77_sumout ),
	.datag(gnd),
	.cin(\Add69~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~77_sumout ),
	.cout(\Add69~78 ),
	.shareout());
defparam \Add69~77 .extended_lut = "off";
defparam \Add69~77 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~77 .shared_arith = "off";

arriav_lcell_comb \Add57~37 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~45_sumout ),
	.datag(gnd),
	.cin(\Add57~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~37_sumout ),
	.cout(\Add57~38 ),
	.shareout());
defparam \Add57~37 .extended_lut = "off";
defparam \Add57~37 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~37 .shared_arith = "off";

arriav_lcell_comb \Add75~81 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~81_sumout ),
	.datae(gnd),
	.dataf(!\Add71~53_sumout ),
	.datag(gnd),
	.cin(\Add75~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~81_sumout ),
	.cout(\Add75~82 ),
	.shareout());
defparam \Add75~81 .extended_lut = "off";
defparam \Add75~81 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~81 .shared_arith = "off";

arriav_lcell_comb \Add57~41 (
	.dataa(!\Add53~1_sumout ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\Add55~5_sumout ),
	.datag(gnd),
	.cin(\Add57~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~41_sumout ),
	.cout(\Add57~42 ),
	.shareout());
defparam \Add57~41 .extended_lut = "off";
defparam \Add57~41 .lut_mask = 64'h0000FF00000099A5;
defparam \Add57~41 .shared_arith = "off";

arriav_lcell_comb \Add59~41 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~37_sumout ),
	.datae(gnd),
	.dataf(!\Add53~45_sumout ),
	.datag(gnd),
	.cin(\Add59~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~41_sumout ),
	.cout(\Add59~42 ),
	.shareout());
defparam \Add59~41 .extended_lut = "off";
defparam \Add59~41 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~41 .shared_arith = "off";

arriav_lcell_comb \Add57~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~21_sumout ),
	.datae(gnd),
	.dataf(!\Add55~49_sumout ),
	.datag(gnd),
	.cin(\Add57~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~45_sumout ),
	.cout(\Add57~46 ),
	.shareout());
defparam \Add57~45 .extended_lut = "off";
defparam \Add57~45 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~45 .shared_arith = "off";

arriav_lcell_comb \Add59~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~33_sumout ),
	.datae(gnd),
	.dataf(!\Add53~49_sumout ),
	.datag(gnd),
	.cin(\Add59~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~45_sumout ),
	.cout(\Add59~46 ),
	.shareout());
defparam \Add59~45 .extended_lut = "off";
defparam \Add59~45 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~45 .shared_arith = "off";

arriav_lcell_comb \Add57~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~17_sumout ),
	.datae(gnd),
	.dataf(!\Add55~53_sumout ),
	.datag(gnd),
	.cin(\Add57~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~49_sumout ),
	.cout(\Add57~50 ),
	.shareout());
defparam \Add57~49 .extended_lut = "off";
defparam \Add57~49 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~49 .shared_arith = "off";

arriav_lcell_comb \Add59~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~29_sumout ),
	.datae(gnd),
	.dataf(!\Add53~53_sumout ),
	.datag(gnd),
	.cin(\Add59~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~49_sumout ),
	.cout(\Add59~50 ),
	.shareout());
defparam \Add59~49 .extended_lut = "off";
defparam \Add59~49 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~49 .shared_arith = "off";

arriav_lcell_comb \Add57~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~33_sumout ),
	.datae(gnd),
	.dataf(!\Add55~57_sumout ),
	.datag(gnd),
	.cin(\Add57~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~53_sumout ),
	.cout(\Add57~54 ),
	.shareout());
defparam \Add57~53 .extended_lut = "off";
defparam \Add57~53 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~53 .shared_arith = "off";

arriav_lcell_comb \Add59~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~45_sumout ),
	.datae(gnd),
	.dataf(!\Add53~57_sumout ),
	.datag(gnd),
	.cin(\Add59~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~53_sumout ),
	.cout(\Add59~54 ),
	.shareout());
defparam \Add59~53 .extended_lut = "off";
defparam \Add59~53 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~53 .shared_arith = "off";

arriav_lcell_comb \Add57~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~13_sumout ),
	.datae(gnd),
	.dataf(!\Add55~61_sumout ),
	.datag(gnd),
	.cin(\Add57~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~57_sumout ),
	.cout(\Add57~58 ),
	.shareout());
defparam \Add57~57 .extended_lut = "off";
defparam \Add57~57 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~57 .shared_arith = "off";

arriav_lcell_comb \Add59~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~25_sumout ),
	.datae(gnd),
	.dataf(!\Add53~61_sumout ),
	.datag(gnd),
	.cin(\Add59~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~57_sumout ),
	.cout(\Add59~58 ),
	.shareout());
defparam \Add59~57 .extended_lut = "off";
defparam \Add59~57 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~57 .shared_arith = "off";

arriav_lcell_comb \Add57~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~9_sumout ),
	.datae(gnd),
	.dataf(!\Add55~65_sumout ),
	.datag(gnd),
	.cin(\Add57~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~61_sumout ),
	.cout(\Add57~62 ),
	.shareout());
defparam \Add57~61 .extended_lut = "off";
defparam \Add57~61 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~61 .shared_arith = "off";

arriav_lcell_comb \Add59~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~21_sumout ),
	.datae(gnd),
	.dataf(!\Add53~65_sumout ),
	.datag(gnd),
	.cin(\Add59~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~61_sumout ),
	.cout(\Add59~62 ),
	.shareout());
defparam \Add59~61 .extended_lut = "off";
defparam \Add59~61 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~61 .shared_arith = "off";

arriav_lcell_comb \Add57~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~5_sumout ),
	.datae(gnd),
	.dataf(!\Add55~41_sumout ),
	.datag(gnd),
	.cin(\Add57~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~65_sumout ),
	.cout(\Add57~66 ),
	.shareout());
defparam \Add57~65 .extended_lut = "off";
defparam \Add57~65 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~65 .shared_arith = "off";

arriav_lcell_comb \Add59~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~17_sumout ),
	.datae(gnd),
	.dataf(!\Add53~29_sumout ),
	.datag(gnd),
	.cin(\Add59~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~65_sumout ),
	.cout(\Add59~66 ),
	.shareout());
defparam \Add59~65 .extended_lut = "off";
defparam \Add59~65 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~65 .shared_arith = "off";

arriav_lcell_comb \Add1~29 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~29_sumout ),
	.cout(\Add1~30 ),
	.shareout());
defparam \Add1~29 .extended_lut = "off";
defparam \Add1~29 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~29 .shared_arith = "off";

arriav_lcell_comb \Add2~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~37_sumout ),
	.cout(\Add2~38 ),
	.shareout());
defparam \Add2~37 .extended_lut = "off";
defparam \Add2~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~37 .shared_arith = "off";

arriav_lcell_comb \Add29~30 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[4]~11_combout ),
	.datag(gnd),
	.cin(\Add29~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~30_cout ),
	.shareout());
defparam \Add29~30 .extended_lut = "off";
defparam \Add29~30 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~30 .shared_arith = "off";

arriav_lcell_comb \Add4~25 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~25_sumout ),
	.datad(!\Add2~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~25_sumout ),
	.cout(\Add4~26 ),
	.shareout());
defparam \Add4~25 .extended_lut = "off";
defparam \Add4~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~25 .shared_arith = "off";

arriav_lcell_comb \Add5~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~25_sumout ),
	.cout(\Add5~26 ),
	.shareout());
defparam \Add5~25 .extended_lut = "off";
defparam \Add5~25 .lut_mask = 64'h00000000000000FF;
defparam \Add5~25 .shared_arith = "off";

arriav_lcell_comb \Add6~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~34 ),
	.sharein(\Add6~35 ),
	.combout(),
	.sumout(\Add6~25_sumout ),
	.cout(\Add6~26 ),
	.shareout(\Add6~27 ));
defparam \Add6~25 .extended_lut = "off";
defparam \Add6~25 .lut_mask = 64'h00000000000000FF;
defparam \Add6~25 .shared_arith = "on";

arriav_lcell_comb \Add5~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~29_sumout ),
	.cout(\Add5~30 ),
	.shareout());
defparam \Add5~29 .extended_lut = "off";
defparam \Add5~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~29 .shared_arith = "off";

arriav_lcell_comb \Add6~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~38 ),
	.sharein(\Add6~39 ),
	.combout(),
	.sumout(\Add6~29_sumout ),
	.cout(\Add6~30 ),
	.shareout(\Add6~31 ));
defparam \Add6~29 .extended_lut = "off";
defparam \Add6~29 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~29 .shared_arith = "on";

arriav_lcell_comb \Add5~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~33_sumout ),
	.cout(\Add5~34 ),
	.shareout());
defparam \Add5~33 .extended_lut = "off";
defparam \Add5~33 .lut_mask = 64'h00000000000000FF;
defparam \Add5~33 .shared_arith = "off";

arriav_lcell_comb \Add6~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~30 ),
	.sharein(\Add6~31 ),
	.combout(),
	.sumout(\Add6~33_sumout ),
	.cout(\Add6~34 ),
	.shareout(\Add6~35 ));
defparam \Add6~33 .extended_lut = "off";
defparam \Add6~33 .lut_mask = 64'h00000000000000FF;
defparam \Add6~33 .shared_arith = "on";

arriav_lcell_comb \Add5~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~37_sumout ),
	.cout(\Add5~38 ),
	.shareout());
defparam \Add5~37 .extended_lut = "off";
defparam \Add5~37 .lut_mask = 64'h00000000000000FF;
defparam \Add5~37 .shared_arith = "off";

arriav_lcell_comb \Add6~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~42 ),
	.sharein(\Add6~43 ),
	.combout(),
	.sumout(\Add6~37_sumout ),
	.cout(\Add6~38 ),
	.shareout(\Add6~39 ));
defparam \Add6~37 .extended_lut = "off";
defparam \Add6~37 .lut_mask = 64'h00000000000000FF;
defparam \Add6~37 .shared_arith = "on";

arriav_lcell_comb \Add5~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~41_sumout ),
	.cout(\Add5~42 ),
	.shareout());
defparam \Add5~41 .extended_lut = "off";
defparam \Add5~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~41 .shared_arith = "off";

arriav_lcell_comb \Add6~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~46 ),
	.sharein(\Add6~47 ),
	.combout(),
	.sumout(\Add6~41_sumout ),
	.cout(\Add6~42 ),
	.shareout(\Add6~43 ));
defparam \Add6~41 .extended_lut = "off";
defparam \Add6~41 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~41 .shared_arith = "on";

arriav_lcell_comb \Add5~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~45_sumout ),
	.cout(\Add5~46 ),
	.shareout());
defparam \Add5~45 .extended_lut = "off";
defparam \Add5~45 .lut_mask = 64'h00000000000000FF;
defparam \Add5~45 .shared_arith = "off";

arriav_lcell_comb \Add6~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~50 ),
	.sharein(\Add6~51 ),
	.combout(),
	.sumout(\Add6~45_sumout ),
	.cout(\Add6~46 ),
	.shareout(\Add6~47 ));
defparam \Add6~45 .extended_lut = "off";
defparam \Add6~45 .lut_mask = 64'h00000000000000FF;
defparam \Add6~45 .shared_arith = "on";

arriav_lcell_comb \Add5~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~49_sumout ),
	.cout(\Add5~50 ),
	.shareout());
defparam \Add5~49 .extended_lut = "off";
defparam \Add5~49 .lut_mask = 64'h00000000000000FF;
defparam \Add5~49 .shared_arith = "off";

arriav_lcell_comb \Add6~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~54 ),
	.sharein(\Add6~55 ),
	.combout(),
	.sumout(\Add6~49_sumout ),
	.cout(\Add6~50 ),
	.shareout(\Add6~51 ));
defparam \Add6~49 .extended_lut = "off";
defparam \Add6~49 .lut_mask = 64'h00000000000000FF;
defparam \Add6~49 .shared_arith = "on";

arriav_lcell_comb \Add7~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~53_sumout ),
	.datad(!\Add6~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~49_sumout ),
	.cout(\Add7~50 ),
	.shareout());
defparam \Add7~49 .extended_lut = "off";
defparam \Add7~49 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add7~49 .shared_arith = "off";

arriav_lcell_comb \Add8~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~53_sumout ),
	.datad(!\Add6~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~49_sumout ),
	.cout(\Add8~50 ),
	.shareout());
defparam \Add8~49 .extended_lut = "off";
defparam \Add8~49 .lut_mask = 64'h00000000000005AF;
defparam \Add8~49 .shared_arith = "off";

arriav_lcell_comb \Add9~49 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~53_sumout ),
	.datad(!\Add8~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~49_sumout ),
	.cout(\Add9~50 ),
	.shareout());
defparam \Add9~49 .extended_lut = "off";
defparam \Add9~49 .lut_mask = 64'h00000000000005AF;
defparam \Add9~49 .shared_arith = "off";

arriav_lcell_comb \Add10~49 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~53_sumout ),
	.datad(!\Add8~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~49_sumout ),
	.cout(\Add10~50 ),
	.shareout());
defparam \Add10~49 .extended_lut = "off";
defparam \Add10~49 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~49 .shared_arith = "off";

arriav_lcell_comb \Add11~49 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~53_sumout ),
	.datad(!\Add10~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~49_sumout ),
	.cout(\Add11~50 ),
	.shareout());
defparam \Add11~49 .extended_lut = "off";
defparam \Add11~49 .lut_mask = 64'h00000000000005AF;
defparam \Add11~49 .shared_arith = "off";

arriav_lcell_comb \Add12~49 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~53_sumout ),
	.datad(!\Add10~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~49_sumout ),
	.cout(\Add12~50 ),
	.shareout());
defparam \Add12~49 .extended_lut = "off";
defparam \Add12~49 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~49 .shared_arith = "off";

arriav_lcell_comb \Add13~49 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~53_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~53_sumout ),
	.datag(gnd),
	.cin(\Add13~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~49_sumout ),
	.cout(\Add13~50 ),
	.shareout());
defparam \Add13~49 .extended_lut = "off";
defparam \Add13~49 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~49 .shared_arith = "off";

arriav_lcell_comb \Add15~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~53_sumout ),
	.cout(\Add15~54 ),
	.shareout());
defparam \Add15~53 .extended_lut = "off";
defparam \Add15~53 .lut_mask = 64'h00000000000000FF;
defparam \Add15~53 .shared_arith = "off";

arriav_lcell_comb \Add16~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~53_sumout ),
	.cout(\Add16~54 ),
	.shareout());
defparam \Add16~53 .extended_lut = "off";
defparam \Add16~53 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~53 .shared_arith = "off";

arriav_lcell_comb \Add17~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~57_sumout ),
	.datad(!\Add16~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~53_sumout ),
	.cout(\Add17~54 ),
	.shareout());
defparam \Add17~53 .extended_lut = "off";
defparam \Add17~53 .lut_mask = 64'h00000000000005AF;
defparam \Add17~53 .shared_arith = "off";

arriav_lcell_comb \Add18~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~57_sumout ),
	.datad(!\Add16~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~53_sumout ),
	.cout(\Add18~54 ),
	.shareout());
defparam \Add18~53 .extended_lut = "off";
defparam \Add18~53 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~53 .shared_arith = "off";

arriav_lcell_comb \Add55~1 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~1_sumout ),
	.datag(gnd),
	.cin(\Add55~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~1_sumout ),
	.cout(),
	.shareout());
defparam \Add55~1 .extended_lut = "off";
defparam \Add55~1 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~1 .shared_arith = "off";

arriav_lcell_comb \Add53~1 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~1_sumout ),
	.datag(gnd),
	.cin(\Add53~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~1_sumout ),
	.cout(),
	.shareout());
defparam \Add53~1 .extended_lut = "off";
defparam \Add53~1 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~1 .shared_arith = "off";

arriav_lcell_comb \Add53~5 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~5_sumout ),
	.datag(gnd),
	.cin(\Add53~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~5_sumout ),
	.cout(\Add53~6 ),
	.shareout());
defparam \Add53~5 .extended_lut = "off";
defparam \Add53~5 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~5 .shared_arith = "off";

arriav_lcell_comb \Add53~9 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~9_sumout ),
	.datag(gnd),
	.cin(\Add53~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~9_sumout ),
	.cout(\Add53~10 ),
	.shareout());
defparam \Add53~9 .extended_lut = "off";
defparam \Add53~9 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~9 .shared_arith = "off";

arriav_lcell_comb \Add53~13 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~13_sumout ),
	.datag(gnd),
	.cin(\Add53~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~13_sumout ),
	.cout(\Add53~14 ),
	.shareout());
defparam \Add53~13 .extended_lut = "off";
defparam \Add53~13 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~13 .shared_arith = "off";

arriav_lcell_comb \Add53~17 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~17_sumout ),
	.datag(gnd),
	.cin(\Add53~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~17_sumout ),
	.cout(\Add53~18 ),
	.shareout());
defparam \Add53~17 .extended_lut = "off";
defparam \Add53~17 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~17 .shared_arith = "off";

arriav_lcell_comb \Add53~21 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~5_sumout ),
	.datae(gnd),
	.dataf(!\Add51~21_sumout ),
	.datag(gnd),
	.cin(\Add53~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~21_sumout ),
	.cout(\Add53~22 ),
	.shareout());
defparam \Add53~21 .extended_lut = "off";
defparam \Add53~21 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~21 .shared_arith = "off";

arriav_lcell_comb \Add55~5 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~5_sumout ),
	.datag(gnd),
	.cin(\Add55~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~5_sumout ),
	.cout(\Add55~6 ),
	.shareout());
defparam \Add55~5 .extended_lut = "off";
defparam \Add55~5 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~5 .shared_arith = "off";

arriav_lcell_comb \Add53~25 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~9_sumout ),
	.datae(gnd),
	.dataf(!\Add51~25_sumout ),
	.datag(gnd),
	.cin(\Add53~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~25_sumout ),
	.cout(\Add53~26 ),
	.shareout());
defparam \Add53~25 .extended_lut = "off";
defparam \Add53~25 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~25 .shared_arith = "off";

arriav_lcell_comb \Add53~29 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~13_sumout ),
	.datae(gnd),
	.dataf(!\Add51~29_sumout ),
	.datag(gnd),
	.cin(\Add53~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~29_sumout ),
	.cout(\Add53~30 ),
	.shareout());
defparam \Add53~29 .extended_lut = "off";
defparam \Add53~29 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~29 .shared_arith = "off";

arriav_lcell_comb \Add55~9 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~33_sumout ),
	.datae(gnd),
	.dataf(!\Add49~17_sumout ),
	.datag(gnd),
	.cin(\Add55~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~9_sumout ),
	.cout(\Add55~10 ),
	.shareout());
defparam \Add55~9 .extended_lut = "off";
defparam \Add55~9 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~9 .shared_arith = "off";

arriav_lcell_comb \Add57~69 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~65_sumout ),
	.datae(gnd),
	.dataf(!\Add55~69_sumout ),
	.datag(gnd),
	.cin(\Add57~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~69_sumout ),
	.cout(\Add57~70 ),
	.shareout());
defparam \Add57~69 .extended_lut = "off";
defparam \Add57~69 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~69 .shared_arith = "off";

arriav_lcell_comb \Add63~73 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~61_sumout ),
	.datae(gnd),
	.dataf(!\Add57~73_sumout ),
	.datag(gnd),
	.cin(\Add63~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~73_sumout ),
	.cout(\Add63~74 ),
	.shareout());
defparam \Add63~73 .extended_lut = "off";
defparam \Add63~73 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~73 .shared_arith = "off";

arriav_lcell_comb \Add65~77 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~57_sumout ),
	.datae(gnd),
	.dataf(!\Add63~77_sumout ),
	.datag(gnd),
	.cin(\Add65~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~77_sumout ),
	.cout(\Add65~78 ),
	.shareout());
defparam \Add65~77 .extended_lut = "off";
defparam \Add65~77 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~77 .shared_arith = "off";

arriav_lcell_comb \Add71~81 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~53_sumout ),
	.datae(gnd),
	.dataf(!\Add65~81_sumout ),
	.datag(gnd),
	.cin(\Add71~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~81_sumout ),
	.cout(\Add71~82 ),
	.shareout());
defparam \Add71~81 .extended_lut = "off";
defparam \Add71~81 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~81 .shared_arith = "off";

arriav_lcell_comb \Add53~33 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~37_sumout ),
	.datag(gnd),
	.cin(\Add53~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~33_sumout ),
	.cout(\Add53~34 ),
	.shareout());
defparam \Add53~33 .extended_lut = "off";
defparam \Add53~33 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~33 .shared_arith = "off";

arriav_lcell_comb \Add73~85 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~85_sumout ),
	.datae(gnd),
	.dataf(!\Add69~49_sumout ),
	.datag(gnd),
	.cin(\Add73~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~85_sumout ),
	.cout(\Add73~86 ),
	.shareout());
defparam \Add73~85 .extended_lut = "off";
defparam \Add73~85 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~85 .shared_arith = "off";

arriav_lcell_comb \Add53~37 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~1_sumout ),
	.datae(gnd),
	.dataf(!\Add51~41_sumout ),
	.datag(gnd),
	.cin(\Add53~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~37_sumout ),
	.cout(\Add53~38 ),
	.shareout());
defparam \Add53~37 .extended_lut = "off";
defparam \Add53~37 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~37 .shared_arith = "off";

arriav_lcell_comb \Add55~13 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~29_sumout ),
	.datae(gnd),
	.dataf(!\Add49~21_sumout ),
	.datag(gnd),
	.cin(\Add55~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~13_sumout ),
	.cout(\Add55~14 ),
	.shareout());
defparam \Add55~13 .extended_lut = "off";
defparam \Add55~13 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~13 .shared_arith = "off";

arriav_lcell_comb \Add55~17 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~9_sumout ),
	.datag(gnd),
	.cin(\Add55~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~17_sumout ),
	.cout(\Add55~18 ),
	.shareout());
defparam \Add55~17 .extended_lut = "off";
defparam \Add55~17 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~17 .shared_arith = "off";

arriav_lcell_comb \Add55~21 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~13_sumout ),
	.datag(gnd),
	.cin(\Add55~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~21_sumout ),
	.cout(\Add55~22 ),
	.shareout());
defparam \Add55~21 .extended_lut = "off";
defparam \Add55~21 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~21 .shared_arith = "off";

arriav_lcell_comb \Add55~25 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~25_sumout ),
	.datag(gnd),
	.cin(\Add55~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~25_sumout ),
	.cout(\Add55~26 ),
	.shareout());
defparam \Add55~25 .extended_lut = "off";
defparam \Add55~25 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~25 .shared_arith = "off";

arriav_lcell_comb \Add55~29 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~29_sumout ),
	.datag(gnd),
	.cin(\Add55~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~29_sumout ),
	.cout(\Add55~30 ),
	.shareout());
defparam \Add55~29 .extended_lut = "off";
defparam \Add55~29 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~29 .shared_arith = "off";

arriav_lcell_comb \Add55~33 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~41_sumout ),
	.datae(gnd),
	.dataf(!\Add49~33_sumout ),
	.datag(gnd),
	.cin(\Add55~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~33_sumout ),
	.cout(\Add55~34 ),
	.shareout());
defparam \Add55~33 .extended_lut = "off";
defparam \Add55~33 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~33 .shared_arith = "off";

arriav_lcell_comb \Add55~37 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~5_sumout ),
	.datae(gnd),
	.dataf(!\Add49~37_sumout ),
	.datag(gnd),
	.cin(\Add55~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~37_sumout ),
	.cout(\Add55~38 ),
	.shareout());
defparam \Add55~37 .extended_lut = "off";
defparam \Add55~37 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~37 .shared_arith = "off";

arriav_lcell_comb \Add55~41 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~9_sumout ),
	.datae(gnd),
	.dataf(!\Add49~41_sumout ),
	.datag(gnd),
	.cin(\Add55~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~41_sumout ),
	.cout(\Add55~42 ),
	.shareout());
defparam \Add55~41 .extended_lut = "off";
defparam \Add55~41 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~41 .shared_arith = "off";

arriav_lcell_comb \Add53~41 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~45_sumout ),
	.datae(gnd),
	.dataf(!\Add51~45_sumout ),
	.datag(gnd),
	.cin(\Add53~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~41_sumout ),
	.cout(\Add53~42 ),
	.shareout());
defparam \Add53~41 .extended_lut = "off";
defparam \Add53~41 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~41 .shared_arith = "off";

arriav_lcell_comb \Add59~69 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~65_sumout ),
	.datae(gnd),
	.dataf(!\Add53~69_sumout ),
	.datag(gnd),
	.cin(\Add59~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~69_sumout ),
	.cout(\Add59~70 ),
	.shareout());
defparam \Add59~69 .extended_lut = "off";
defparam \Add59~69 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~69 .shared_arith = "off";

arriav_lcell_comb \Add61~73 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~61_sumout ),
	.datae(gnd),
	.dataf(!\Add59~73_sumout ),
	.datag(gnd),
	.cin(\Add61~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~73_sumout ),
	.cout(\Add61~74 ),
	.shareout());
defparam \Add61~73 .extended_lut = "off";
defparam \Add61~73 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~73 .shared_arith = "off";

arriav_lcell_comb \Add67~77 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~57_sumout ),
	.datae(gnd),
	.dataf(!\Add61~77_sumout ),
	.datag(gnd),
	.cin(\Add67~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~77_sumout ),
	.cout(\Add67~78 ),
	.shareout());
defparam \Add67~77 .extended_lut = "off";
defparam \Add67~77 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~77 .shared_arith = "off";

arriav_lcell_comb \Add69~81 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~53_sumout ),
	.datae(gnd),
	.dataf(!\Add67~81_sumout ),
	.datag(gnd),
	.cin(\Add69~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~81_sumout ),
	.cout(\Add69~82 ),
	.shareout());
defparam \Add69~81 .extended_lut = "off";
defparam \Add69~81 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~81 .shared_arith = "off";

arriav_lcell_comb \Add55~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~1_sumout ),
	.datae(gnd),
	.dataf(!\Add49~49_sumout ),
	.datag(gnd),
	.cin(\Add55~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~45_sumout ),
	.cout(\Add55~46 ),
	.shareout());
defparam \Add55~45 .extended_lut = "off";
defparam \Add55~45 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~45 .shared_arith = "off";

arriav_lcell_comb \Add75~85 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~85_sumout ),
	.datae(gnd),
	.dataf(!\Add71~49_sumout ),
	.datag(gnd),
	.cin(\Add75~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~85_sumout ),
	.cout(\Add75~86 ),
	.shareout());
defparam \Add75~85 .extended_lut = "off";
defparam \Add75~85 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~85 .shared_arith = "off";

arriav_lcell_comb \Add53~45 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~41_sumout ),
	.datae(gnd),
	.dataf(!\Add51~49_sumout ),
	.datag(gnd),
	.cin(\Add53~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~45_sumout ),
	.cout(\Add53~46 ),
	.shareout());
defparam \Add53~45 .extended_lut = "off";
defparam \Add53~45 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~45 .shared_arith = "off";

arriav_lcell_comb \Add55~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~25_sumout ),
	.datae(gnd),
	.dataf(!\Add49~53_sumout ),
	.datag(gnd),
	.cin(\Add55~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~49_sumout ),
	.cout(\Add55~50 ),
	.shareout());
defparam \Add55~49 .extended_lut = "off";
defparam \Add55~49 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~49 .shared_arith = "off";

arriav_lcell_comb \Add53~49 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~37_sumout ),
	.datae(gnd),
	.dataf(!\Add51~53_sumout ),
	.datag(gnd),
	.cin(\Add53~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~49_sumout ),
	.cout(\Add53~50 ),
	.shareout());
defparam \Add53~49 .extended_lut = "off";
defparam \Add53~49 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~49 .shared_arith = "off";

arriav_lcell_comb \Add55~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~21_sumout ),
	.datae(gnd),
	.dataf(!\Add49~57_sumout ),
	.datag(gnd),
	.cin(\Add55~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~53_sumout ),
	.cout(\Add55~54 ),
	.shareout());
defparam \Add55~53 .extended_lut = "off";
defparam \Add55~53 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~53 .shared_arith = "off";

arriav_lcell_comb \Add53~53 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~33_sumout ),
	.datae(gnd),
	.dataf(!\Add51~57_sumout ),
	.datag(gnd),
	.cin(\Add53~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~53_sumout ),
	.cout(\Add53~54 ),
	.shareout());
defparam \Add53~53 .extended_lut = "off";
defparam \Add53~53 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~53 .shared_arith = "off";

arriav_lcell_comb \Add55~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~17_sumout ),
	.datae(gnd),
	.dataf(!\Add49~61_sumout ),
	.datag(gnd),
	.cin(\Add55~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~57_sumout ),
	.cout(\Add55~58 ),
	.shareout());
defparam \Add55~57 .extended_lut = "off";
defparam \Add55~57 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~57 .shared_arith = "off";

arriav_lcell_comb \Add53~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~29_sumout ),
	.datae(gnd),
	.dataf(!\Add51~61_sumout ),
	.datag(gnd),
	.cin(\Add53~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~57_sumout ),
	.cout(\Add53~58 ),
	.shareout());
defparam \Add53~57 .extended_lut = "off";
defparam \Add53~57 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~57 .shared_arith = "off";

arriav_lcell_comb \Add55~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~37_sumout ),
	.datae(gnd),
	.dataf(!\Add49~65_sumout ),
	.datag(gnd),
	.cin(\Add55~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~61_sumout ),
	.cout(\Add55~62 ),
	.shareout());
defparam \Add55~61 .extended_lut = "off";
defparam \Add55~61 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~61 .shared_arith = "off";

arriav_lcell_comb \Add53~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~49_sumout ),
	.datae(gnd),
	.dataf(!\Add51~65_sumout ),
	.datag(gnd),
	.cin(\Add53~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~61_sumout ),
	.cout(\Add53~62 ),
	.shareout());
defparam \Add53~61 .extended_lut = "off";
defparam \Add53~61 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~61 .shared_arith = "off";

arriav_lcell_comb \Add55~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~13_sumout ),
	.datae(gnd),
	.dataf(!\Add49~45_sumout ),
	.datag(gnd),
	.cin(\Add55~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~65_sumout ),
	.cout(\Add55~66 ),
	.shareout());
defparam \Add55~65 .extended_lut = "off";
defparam \Add55~65 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~65 .shared_arith = "off";

arriav_lcell_comb \Add53~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~25_sumout ),
	.datae(gnd),
	.dataf(!\Add51~33_sumout ),
	.datag(gnd),
	.cin(\Add53~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~65_sumout ),
	.cout(\Add53~66 ),
	.shareout());
defparam \Add53~65 .extended_lut = "off";
defparam \Add53~65 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~65 .shared_arith = "off";

arriav_lcell_comb \Add1~33 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~33_sumout ),
	.cout(\Add1~34 ),
	.shareout());
defparam \Add1~33 .extended_lut = "off";
defparam \Add1~33 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~33 .shared_arith = "off";

arriav_lcell_comb \Add2~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~41_sumout ),
	.cout(\Add2~42 ),
	.shareout());
defparam \Add2~41 .extended_lut = "off";
defparam \Add2~41 .lut_mask = 64'h00000000000000FF;
defparam \Add2~41 .shared_arith = "off";

arriav_lcell_comb \Add29~34 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[3]~12_combout ),
	.datag(gnd),
	.cin(\Add29~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~34_cout ),
	.shareout());
defparam \Add29~34 .extended_lut = "off";
defparam \Add29~34 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~34 .shared_arith = "off";

arriav_lcell_comb \Add4~29 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~29_sumout ),
	.datad(!\Add2~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~29_sumout ),
	.cout(\Add4~30 ),
	.shareout());
defparam \Add4~29 .extended_lut = "off";
defparam \Add4~29 .lut_mask = 64'h00000000000005AF;
defparam \Add4~29 .shared_arith = "off";

arriav_lcell_comb \Add4~33 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~37_sumout ),
	.datad(!\Add2~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~33_sumout ),
	.cout(\Add4~34 ),
	.shareout());
defparam \Add4~33 .extended_lut = "off";
defparam \Add4~33 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~33 .shared_arith = "off";

arriav_lcell_comb \Add4~37 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~33_sumout ),
	.datad(!\Add2~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~37_sumout ),
	.cout(\Add4~38 ),
	.shareout());
defparam \Add4~37 .extended_lut = "off";
defparam \Add4~37 .lut_mask = 64'h00000000000005AF;
defparam \Add4~37 .shared_arith = "off";

arriav_lcell_comb \Add4~41 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~41_sumout ),
	.datad(!\Add2~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~41_sumout ),
	.cout(\Add4~42 ),
	.shareout());
defparam \Add4~41 .extended_lut = "off";
defparam \Add4~41 .lut_mask = 64'h00000000000005AF;
defparam \Add4~41 .shared_arith = "off";

arriav_lcell_comb \Add4~45 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~45_sumout ),
	.datad(!\Add2~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~45_sumout ),
	.cout(\Add4~46 ),
	.shareout());
defparam \Add4~45 .extended_lut = "off";
defparam \Add4~45 .lut_mask = 64'h00000000000005AF;
defparam \Add4~45 .shared_arith = "off";

arriav_lcell_comb \Add4~49 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~49_sumout ),
	.datad(!\Add2~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~49_sumout ),
	.cout(\Add4~50 ),
	.shareout());
defparam \Add4~49 .extended_lut = "off";
defparam \Add4~49 .lut_mask = 64'h00000000000005AF;
defparam \Add4~49 .shared_arith = "off";

arriav_lcell_comb \Add4~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~53_sumout ),
	.cout(\Add4~54 ),
	.shareout());
defparam \Add4~53 .extended_lut = "off";
defparam \Add4~53 .lut_mask = 64'h00000000000000FF;
defparam \Add4~53 .shared_arith = "off";

arriav_lcell_comb \Add5~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~53_sumout ),
	.cout(\Add5~54 ),
	.shareout());
defparam \Add5~53 .extended_lut = "off";
defparam \Add5~53 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add5~53 .shared_arith = "off";

arriav_lcell_comb \Add6~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~58 ),
	.sharein(\Add6~59 ),
	.combout(),
	.sumout(\Add6~53_sumout ),
	.cout(\Add6~54 ),
	.shareout(\Add6~55 ));
defparam \Add6~53 .extended_lut = "off";
defparam \Add6~53 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~53 .shared_arith = "on";

arriav_lcell_comb \Add7~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~57_sumout ),
	.datad(!\Add6~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~53_sumout ),
	.cout(\Add7~54 ),
	.shareout());
defparam \Add7~53 .extended_lut = "off";
defparam \Add7~53 .lut_mask = 64'h00000000000005AF;
defparam \Add7~53 .shared_arith = "off";

arriav_lcell_comb \Add8~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~57_sumout ),
	.datad(!\Add6~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~53_sumout ),
	.cout(\Add8~54 ),
	.shareout());
defparam \Add8~53 .extended_lut = "off";
defparam \Add8~53 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~53 .shared_arith = "off";

arriav_lcell_comb \Add9~53 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~57_sumout ),
	.datad(!\Add8~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~53_sumout ),
	.cout(\Add9~54 ),
	.shareout());
defparam \Add9~53 .extended_lut = "off";
defparam \Add9~53 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add9~53 .shared_arith = "off";

arriav_lcell_comb \Add10~53 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~57_sumout ),
	.datad(!\Add8~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~53_sumout ),
	.cout(\Add10~54 ),
	.shareout());
defparam \Add10~53 .extended_lut = "off";
defparam \Add10~53 .lut_mask = 64'h00000000000005AF;
defparam \Add10~53 .shared_arith = "off";

arriav_lcell_comb \Add11~53 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~57_sumout ),
	.datad(!\Add10~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~53_sumout ),
	.cout(\Add11~54 ),
	.shareout());
defparam \Add11~53 .extended_lut = "off";
defparam \Add11~53 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~53 .shared_arith = "off";

arriav_lcell_comb \Add12~53 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~57_sumout ),
	.datad(!\Add10~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~53_sumout ),
	.cout(\Add12~54 ),
	.shareout());
defparam \Add12~53 .extended_lut = "off";
defparam \Add12~53 .lut_mask = 64'h00000000000005AF;
defparam \Add12~53 .shared_arith = "off";

arriav_lcell_comb \Add13~53 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~57_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~57_sumout ),
	.datag(gnd),
	.cin(\Add13~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~53_sumout ),
	.cout(\Add13~54 ),
	.shareout());
defparam \Add13~53 .extended_lut = "off";
defparam \Add13~53 .lut_mask = 64'h0000FA500000EE44;
defparam \Add13~53 .shared_arith = "off";

arriav_lcell_comb \Add15~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~57_sumout ),
	.cout(\Add15~58 ),
	.shareout());
defparam \Add15~57 .extended_lut = "off";
defparam \Add15~57 .lut_mask = 64'h00000000000000FF;
defparam \Add15~57 .shared_arith = "off";

arriav_lcell_comb \Add16~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~57_sumout ),
	.cout(\Add16~58 ),
	.shareout());
defparam \Add16~57 .extended_lut = "off";
defparam \Add16~57 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~57 .shared_arith = "off";

arriav_lcell_comb \Add17~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~61_sumout ),
	.datad(!\Add16~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~57_sumout ),
	.cout(\Add17~58 ),
	.shareout());
defparam \Add17~57 .extended_lut = "off";
defparam \Add17~57 .lut_mask = 64'h00000000000005AF;
defparam \Add17~57 .shared_arith = "off";

arriav_lcell_comb \Add18~57 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~61_sumout ),
	.datad(!\Add16~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~57_sumout ),
	.cout(\Add18~58 ),
	.shareout());
defparam \Add18~57 .extended_lut = "off";
defparam \Add18~57 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~57 .shared_arith = "off";

arriav_lcell_comb \Add51~1 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datag(gnd),
	.cin(\Add51~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~1_sumout ),
	.cout(),
	.shareout());
defparam \Add51~1 .extended_lut = "off";
defparam \Add51~1 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~1 .shared_arith = "off";

arriav_lcell_comb \Add49~1 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datag(gnd),
	.cin(\Add49~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~1_sumout ),
	.cout(),
	.shareout());
defparam \Add49~1 .extended_lut = "off";
defparam \Add49~1 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~1 .shared_arith = "off";

arriav_lcell_comb \Add51~5 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][30]~q ),
	.datag(gnd),
	.cin(\Add51~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~5_sumout ),
	.cout(\Add51~6 ),
	.shareout());
defparam \Add51~5 .extended_lut = "off";
defparam \Add51~5 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~5 .shared_arith = "off";

arriav_lcell_comb \Add51~9 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][29]~q ),
	.datag(gnd),
	.cin(\Add51~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~9_sumout ),
	.cout(\Add51~10 ),
	.shareout());
defparam \Add51~9 .extended_lut = "off";
defparam \Add51~9 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~9 .shared_arith = "off";

arriav_lcell_comb \Add51~13 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][28]~q ),
	.datag(gnd),
	.cin(\Add51~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~13_sumout ),
	.cout(\Add51~14 ),
	.shareout());
defparam \Add51~13 .extended_lut = "off";
defparam \Add51~13 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~13 .shared_arith = "off";

arriav_lcell_comb \Add51~17 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][31]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][26]~q ),
	.datag(gnd),
	.cin(\Add51~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~17_sumout ),
	.cout(\Add51~18 ),
	.shareout());
defparam \Add51~17 .extended_lut = "off";
defparam \Add51~17 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~17 .shared_arith = "off";

arriav_lcell_comb \Add49~5 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][31]~q ),
	.datag(gnd),
	.cin(\Add49~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~5_sumout ),
	.cout(\Add49~6 ),
	.shareout());
defparam \Add49~5 .extended_lut = "off";
defparam \Add49~5 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~5 .shared_arith = "off";

arriav_lcell_comb \Add51~21 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][30]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][25]~q ),
	.datag(gnd),
	.cin(\Add51~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~21_sumout ),
	.cout(\Add51~22 ),
	.shareout());
defparam \Add51~21 .extended_lut = "off";
defparam \Add51~21 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~21 .shared_arith = "off";

arriav_lcell_comb \Add49~9 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][30]~q ),
	.datag(gnd),
	.cin(\Add49~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~9_sumout ),
	.cout(\Add49~10 ),
	.shareout());
defparam \Add49~9 .extended_lut = "off";
defparam \Add49~9 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~9 .shared_arith = "off";

arriav_lcell_comb \Add51~25 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][29]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][24]~q ),
	.datag(gnd),
	.cin(\Add51~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~25_sumout ),
	.cout(\Add51~26 ),
	.shareout());
defparam \Add51~25 .extended_lut = "off";
defparam \Add51~25 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~25 .shared_arith = "off";

arriav_lcell_comb \Add49~13 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][29]~q ),
	.datag(gnd),
	.cin(\Add49~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~13_sumout ),
	.cout(\Add49~14 ),
	.shareout());
defparam \Add49~13 .extended_lut = "off";
defparam \Add49~13 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~13 .shared_arith = "off";

arriav_lcell_comb \Add51~29 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][28]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][23]~q ),
	.datag(gnd),
	.cin(\Add51~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~29_sumout ),
	.cout(\Add51~30 ),
	.shareout());
defparam \Add51~29 .extended_lut = "off";
defparam \Add51~29 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~29 .shared_arith = "off";

arriav_lcell_comb \Add51~33 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][27]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][22]~q ),
	.datag(gnd),
	.cin(\Add51~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~33_sumout ),
	.cout(\Add51~34 ),
	.shareout());
defparam \Add51~33 .extended_lut = "off";
defparam \Add51~33 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~33 .shared_arith = "off";

arriav_lcell_comb \Add49~17 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][21]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][16]~q ),
	.datag(gnd),
	.cin(\Add49~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~17_sumout ),
	.cout(\Add49~18 ),
	.shareout());
defparam \Add49~17 .extended_lut = "off";
defparam \Add49~17 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~17 .shared_arith = "off";

arriav_lcell_comb \Add55~69 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~65_sumout ),
	.datae(gnd),
	.dataf(!\Add49~69_sumout ),
	.datag(gnd),
	.cin(\Add55~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~69_sumout ),
	.cout(\Add55~70 ),
	.shareout());
defparam \Add55~69 .extended_lut = "off";
defparam \Add55~69 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~69 .shared_arith = "off";

arriav_lcell_comb \Add57~73 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~61_sumout ),
	.datae(gnd),
	.dataf(!\Add55~73_sumout ),
	.datag(gnd),
	.cin(\Add57~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~73_sumout ),
	.cout(\Add57~74 ),
	.shareout());
defparam \Add57~73 .extended_lut = "off";
defparam \Add57~73 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~73 .shared_arith = "off";

arriav_lcell_comb \Add63~77 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~57_sumout ),
	.datae(gnd),
	.dataf(!\Add57~77_sumout ),
	.datag(gnd),
	.cin(\Add63~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~77_sumout ),
	.cout(\Add63~78 ),
	.shareout());
defparam \Add63~77 .extended_lut = "off";
defparam \Add63~77 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~77 .shared_arith = "off";

arriav_lcell_comb \Add65~81 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~53_sumout ),
	.datae(gnd),
	.dataf(!\Add63~81_sumout ),
	.datag(gnd),
	.cin(\Add65~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~81_sumout ),
	.cout(\Add65~82 ),
	.shareout());
defparam \Add65~81 .extended_lut = "off";
defparam \Add65~81 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~81 .shared_arith = "off";

arriav_lcell_comb \Add71~85 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~49_sumout ),
	.datae(gnd),
	.dataf(!\Add65~85_sumout ),
	.datag(gnd),
	.cin(\Add71~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~85_sumout ),
	.cout(\Add71~86 ),
	.shareout());
defparam \Add71~85 .extended_lut = "off";
defparam \Add71~85 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~85 .shared_arith = "off";

arriav_lcell_comb \Add51~37 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][27]~q ),
	.datag(gnd),
	.cin(\Add51~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~37_sumout ),
	.cout(\Add51~38 ),
	.shareout());
defparam \Add51~37 .extended_lut = "off";
defparam \Add51~37 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~37 .shared_arith = "off";

arriav_lcell_comb \Add73~89 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~89_sumout ),
	.datae(gnd),
	.dataf(!\Add69~45_sumout ),
	.datag(gnd),
	.cin(\Add73~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~89_sumout ),
	.cout(\Add73~90 ),
	.shareout());
defparam \Add73~89 .extended_lut = "off";
defparam \Add73~89 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~89 .shared_arith = "off";

arriav_lcell_comb \Add51~41 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][31]~q ),
	.datag(gnd),
	.cin(\Add51~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~41_sumout ),
	.cout(\Add51~42 ),
	.shareout());
defparam \Add51~41 .extended_lut = "off";
defparam \Add51~41 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~41 .shared_arith = "off";

arriav_lcell_comb \Add49~21 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][22]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][17]~q ),
	.datag(gnd),
	.cin(\Add49~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~21_sumout ),
	.cout(\Add49~22 ),
	.shareout());
defparam \Add49~21 .extended_lut = "off";
defparam \Add49~21 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~21 .shared_arith = "off";

arriav_lcell_comb \Add49~25 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][28]~q ),
	.datag(gnd),
	.cin(\Add49~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~25_sumout ),
	.cout(\Add49~26 ),
	.shareout());
defparam \Add49~25 .extended_lut = "off";
defparam \Add49~25 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~25 .shared_arith = "off";

arriav_lcell_comb \Add49~29 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][31]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][26]~q ),
	.datag(gnd),
	.cin(\Add49~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~29_sumout ),
	.cout(\Add49~30 ),
	.shareout());
defparam \Add49~29 .extended_lut = "off";
defparam \Add49~29 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~29 .shared_arith = "off";

arriav_lcell_comb \Add49~33 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][30]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][25]~q ),
	.datag(gnd),
	.cin(\Add49~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~33_sumout ),
	.cout(\Add49~34 ),
	.shareout());
defparam \Add49~33 .extended_lut = "off";
defparam \Add49~33 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~33 .shared_arith = "off";

arriav_lcell_comb \Add49~37 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][29]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][24]~q ),
	.datag(gnd),
	.cin(\Add49~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~37_sumout ),
	.cout(\Add49~38 ),
	.shareout());
defparam \Add49~37 .extended_lut = "off";
defparam \Add49~37 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~37 .shared_arith = "off";

arriav_lcell_comb \Add49~41 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][28]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][23]~q ),
	.datag(gnd),
	.cin(\Add49~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~41_sumout ),
	.cout(\Add49~42 ),
	.shareout());
defparam \Add49~41 .extended_lut = "off";
defparam \Add49~41 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~41 .shared_arith = "off";

arriav_lcell_comb \Add49~45 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][27]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][22]~q ),
	.datag(gnd),
	.cin(\Add49~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~45_sumout ),
	.cout(\Add49~46 ),
	.shareout());
defparam \Add49~45 .extended_lut = "off";
defparam \Add49~45 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~45 .shared_arith = "off";

arriav_lcell_comb \Add51~45 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][21]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][16]~q ),
	.datag(gnd),
	.cin(\Add51~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~45_sumout ),
	.cout(\Add51~46 ),
	.shareout());
defparam \Add51~45 .extended_lut = "off";
defparam \Add51~45 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~45 .shared_arith = "off";

arriav_lcell_comb \Add53~69 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~65_sumout ),
	.datae(gnd),
	.dataf(!\Add51~69_sumout ),
	.datag(gnd),
	.cin(\Add53~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~69_sumout ),
	.cout(\Add53~70 ),
	.shareout());
defparam \Add53~69 .extended_lut = "off";
defparam \Add53~69 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~69 .shared_arith = "off";

arriav_lcell_comb \Add59~73 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~61_sumout ),
	.datae(gnd),
	.dataf(!\Add53~73_sumout ),
	.datag(gnd),
	.cin(\Add59~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~73_sumout ),
	.cout(\Add59~74 ),
	.shareout());
defparam \Add59~73 .extended_lut = "off";
defparam \Add59~73 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~73 .shared_arith = "off";

arriav_lcell_comb \Add61~77 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~57_sumout ),
	.datae(gnd),
	.dataf(!\Add59~77_sumout ),
	.datag(gnd),
	.cin(\Add61~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~77_sumout ),
	.cout(\Add61~78 ),
	.shareout());
defparam \Add61~77 .extended_lut = "off";
defparam \Add61~77 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~77 .shared_arith = "off";

arriav_lcell_comb \Add67~81 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~53_sumout ),
	.datae(gnd),
	.dataf(!\Add61~81_sumout ),
	.datag(gnd),
	.cin(\Add67~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~81_sumout ),
	.cout(\Add67~82 ),
	.shareout());
defparam \Add67~81 .extended_lut = "off";
defparam \Add67~81 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~81 .shared_arith = "off";

arriav_lcell_comb \Add69~85 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~49_sumout ),
	.datae(gnd),
	.dataf(!\Add67~85_sumout ),
	.datag(gnd),
	.cin(\Add69~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~85_sumout ),
	.cout(\Add69~86 ),
	.shareout());
defparam \Add69~85 .extended_lut = "off";
defparam \Add69~85 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~85 .shared_arith = "off";

arriav_lcell_comb \Add49~49 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][27]~q ),
	.datag(gnd),
	.cin(\Add49~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~49_sumout ),
	.cout(\Add49~50 ),
	.shareout());
defparam \Add49~49 .extended_lut = "off";
defparam \Add49~49 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~49 .shared_arith = "off";

arriav_lcell_comb \Add75~89 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~89_sumout ),
	.datae(gnd),
	.dataf(!\Add71~45_sumout ),
	.datag(gnd),
	.cin(\Add75~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~89_sumout ),
	.cout(\Add75~90 ),
	.shareout());
defparam \Add75~89 .extended_lut = "off";
defparam \Add75~89 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~89 .shared_arith = "off";

arriav_lcell_comb \Add51~49 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][22]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][17]~q ),
	.datag(gnd),
	.cin(\Add51~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~49_sumout ),
	.cout(\Add51~50 ),
	.shareout());
defparam \Add51~49 .extended_lut = "off";
defparam \Add51~49 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~49 .shared_arith = "off";

arriav_lcell_comb \Add49~53 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][23]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][18]~q ),
	.datag(gnd),
	.cin(\Add49~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~53_sumout ),
	.cout(\Add49~54 ),
	.shareout());
defparam \Add49~53 .extended_lut = "off";
defparam \Add49~53 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~53 .shared_arith = "off";

arriav_lcell_comb \Add51~53 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][23]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][18]~q ),
	.datag(gnd),
	.cin(\Add51~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~53_sumout ),
	.cout(\Add51~54 ),
	.shareout());
defparam \Add51~53 .extended_lut = "off";
defparam \Add51~53 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~53 .shared_arith = "off";

arriav_lcell_comb \Add49~57 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][24]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][19]~q ),
	.datag(gnd),
	.cin(\Add49~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~57_sumout ),
	.cout(\Add49~58 ),
	.shareout());
defparam \Add49~57 .extended_lut = "off";
defparam \Add49~57 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~57 .shared_arith = "off";

arriav_lcell_comb \Add51~57 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][24]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][19]~q ),
	.datag(gnd),
	.cin(\Add51~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~57_sumout ),
	.cout(\Add51~58 ),
	.shareout());
defparam \Add51~57 .extended_lut = "off";
defparam \Add51~57 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~57 .shared_arith = "off";

arriav_lcell_comb \Add49~61 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][25]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][20]~q ),
	.datag(gnd),
	.cin(\Add49~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~61_sumout ),
	.cout(\Add49~62 ),
	.shareout());
defparam \Add49~61 .extended_lut = "off";
defparam \Add49~61 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~61 .shared_arith = "off";

arriav_lcell_comb \Add51~61 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][25]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][20]~q ),
	.datag(gnd),
	.cin(\Add51~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~61_sumout ),
	.cout(\Add51~62 ),
	.shareout());
defparam \Add51~61 .extended_lut = "off";
defparam \Add51~61 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~61 .shared_arith = "off";

arriav_lcell_comb \Add49~65 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][26]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][21]~q ),
	.datag(gnd),
	.cin(\Add49~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~65_sumout ),
	.cout(\Add49~66 ),
	.shareout());
defparam \Add49~65 .extended_lut = "off";
defparam \Add49~65 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~65 .shared_arith = "off";

arriav_lcell_comb \Add51~65 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][26]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][21]~q ),
	.datag(gnd),
	.cin(\Add51~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~65_sumout ),
	.cout(\Add51~66 ),
	.shareout());
defparam \Add51~65 .extended_lut = "off";
defparam \Add51~65 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~65 .shared_arith = "off";

arriav_lcell_comb \Add1~37 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~37_sumout ),
	.cout(\Add1~38 ),
	.shareout());
defparam \Add1~37 .extended_lut = "off";
defparam \Add1~37 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~37 .shared_arith = "off";

arriav_lcell_comb \Add2~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~45_sumout ),
	.cout(\Add2~46 ),
	.shareout());
defparam \Add2~45 .extended_lut = "off";
defparam \Add2~45 .lut_mask = 64'h00000000000000FF;
defparam \Add2~45 .shared_arith = "off";

arriav_lcell_comb \Add29~38 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[2]~13_combout ),
	.datag(gnd),
	.cin(\Add29~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~38_cout ),
	.shareout());
defparam \Add29~38 .extended_lut = "off";
defparam \Add29~38 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~38 .shared_arith = "off";

arriav_lcell_comb \Add1~41 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~41_sumout ),
	.cout(\Add1~42 ),
	.shareout());
defparam \Add1~41 .extended_lut = "off";
defparam \Add1~41 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~41 .shared_arith = "off";

arriav_lcell_comb \Add1~45 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~45_sumout ),
	.cout(\Add1~46 ),
	.shareout());
defparam \Add1~45 .extended_lut = "off";
defparam \Add1~45 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~45 .shared_arith = "off";

arriav_lcell_comb \Add2~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~49_sumout ),
	.cout(\Add2~50 ),
	.shareout());
defparam \Add2~49 .extended_lut = "off";
defparam \Add2~49 .lut_mask = 64'h00000000000000FF;
defparam \Add2~49 .shared_arith = "off";

arriav_lcell_comb \Add1~49 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~49_sumout ),
	.cout(\Add1~50 ),
	.shareout());
defparam \Add1~49 .extended_lut = "off";
defparam \Add1~49 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~49 .shared_arith = "off";

arriav_lcell_comb \Add2~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~53_sumout ),
	.cout(\Add2~54 ),
	.shareout());
defparam \Add2~53 .extended_lut = "off";
defparam \Add2~53 .lut_mask = 64'h00000000000000FF;
defparam \Add2~53 .shared_arith = "off";

arriav_lcell_comb \Add1~53 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~53_sumout ),
	.cout(\Add1~54 ),
	.shareout());
defparam \Add1~53 .extended_lut = "off";
defparam \Add1~53 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~53 .shared_arith = "off";

arriav_lcell_comb \Add1~57 (
	.dataa(!a[15]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~57_sumout ),
	.cout(\Add1~58 ),
	.shareout());
defparam \Add1~57 .extended_lut = "off";
defparam \Add1~57 .lut_mask = 64'h0000AAAA000055AA;
defparam \Add1~57 .shared_arith = "off";

arriav_lcell_comb \Add5~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~57_sumout ),
	.cout(\Add5~58 ),
	.shareout());
defparam \Add5~57 .extended_lut = "off";
defparam \Add5~57 .lut_mask = 64'h0000FFFF00000000;
defparam \Add5~57 .shared_arith = "off";

arriav_lcell_comb \Add6~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~62 ),
	.sharein(\Add6~63 ),
	.combout(),
	.sumout(\Add6~57_sumout ),
	.cout(\Add6~58 ),
	.shareout(\Add6~59 ));
defparam \Add6~57 .extended_lut = "off";
defparam \Add6~57 .lut_mask = 64'h000000000000FFFF;
defparam \Add6~57 .shared_arith = "on";

arriav_lcell_comb \Add7~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~61_sumout ),
	.datad(!\Add6~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~57_sumout ),
	.cout(\Add7~58 ),
	.shareout());
defparam \Add7~57 .extended_lut = "off";
defparam \Add7~57 .lut_mask = 64'h00000000000005AF;
defparam \Add7~57 .shared_arith = "off";

arriav_lcell_comb \Add8~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~61_sumout ),
	.datad(!\Add6~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~57_sumout ),
	.cout(\Add8~58 ),
	.shareout());
defparam \Add8~57 .extended_lut = "off";
defparam \Add8~57 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~57 .shared_arith = "off";

arriav_lcell_comb \Add9~57 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~61_sumout ),
	.datad(!\Add8~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~57_sumout ),
	.cout(\Add9~58 ),
	.shareout());
defparam \Add9~57 .extended_lut = "off";
defparam \Add9~57 .lut_mask = 64'h00000000000005AF;
defparam \Add9~57 .shared_arith = "off";

arriav_lcell_comb \Add10~57 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~61_sumout ),
	.datad(!\Add8~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~57_sumout ),
	.cout(\Add10~58 ),
	.shareout());
defparam \Add10~57 .extended_lut = "off";
defparam \Add10~57 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~57 .shared_arith = "off";

arriav_lcell_comb \Add11~57 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~61_sumout ),
	.datad(!\Add10~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~57_sumout ),
	.cout(\Add11~58 ),
	.shareout());
defparam \Add11~57 .extended_lut = "off";
defparam \Add11~57 .lut_mask = 64'h00000000000005AF;
defparam \Add11~57 .shared_arith = "off";

arriav_lcell_comb \Add12~57 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~61_sumout ),
	.datad(!\Add10~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~57_sumout ),
	.cout(\Add12~58 ),
	.shareout());
defparam \Add12~57 .extended_lut = "off";
defparam \Add12~57 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~57 .shared_arith = "off";

arriav_lcell_comb \Add13~57 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~61_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~61_sumout ),
	.datag(gnd),
	.cin(\Add13~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~57_sumout ),
	.cout(\Add13~58 ),
	.shareout());
defparam \Add13~57 .extended_lut = "off";
defparam \Add13~57 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~57 .shared_arith = "off";

arriav_lcell_comb \Add15~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add15~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~61_sumout ),
	.cout(\Add15~62 ),
	.shareout());
defparam \Add15~61 .extended_lut = "off";
defparam \Add15~61 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add15~61 .shared_arith = "off";

arriav_lcell_comb \Add16~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~61_sumout ),
	.cout(\Add16~62 ),
	.shareout());
defparam \Add16~61 .extended_lut = "off";
defparam \Add16~61 .lut_mask = 64'h00000000000000FF;
defparam \Add16~61 .shared_arith = "off";

arriav_lcell_comb \Add17~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~65_sumout ),
	.datad(!\Add16~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~61_sumout ),
	.cout(\Add17~62 ),
	.shareout());
defparam \Add17~61 .extended_lut = "off";
defparam \Add17~61 .lut_mask = 64'h00000000000005AF;
defparam \Add17~61 .shared_arith = "off";

arriav_lcell_comb \Add18~61 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\Add15~65_sumout ),
	.datad(!\Add16~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add18~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~61_sumout ),
	.cout(\Add18~62 ),
	.shareout());
defparam \Add18~61 .extended_lut = "off";
defparam \Add18~61 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add18~61 .shared_arith = "off";

arriav_lcell_comb \Add49~69 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][20]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][15]~q ),
	.datag(gnd),
	.cin(\Add49~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~69_sumout ),
	.cout(\Add49~70 ),
	.shareout());
defparam \Add49~69 .extended_lut = "off";
defparam \Add49~69 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~69 .shared_arith = "off";

arriav_lcell_comb \Add55~73 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~61_sumout ),
	.datae(gnd),
	.dataf(!\Add49~73_sumout ),
	.datag(gnd),
	.cin(\Add55~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~73_sumout ),
	.cout(\Add55~74 ),
	.shareout());
defparam \Add55~73 .extended_lut = "off";
defparam \Add55~73 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~73 .shared_arith = "off";

arriav_lcell_comb \Add57~77 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~57_sumout ),
	.datae(gnd),
	.dataf(!\Add55~77_sumout ),
	.datag(gnd),
	.cin(\Add57~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~77_sumout ),
	.cout(\Add57~78 ),
	.shareout());
defparam \Add57~77 .extended_lut = "off";
defparam \Add57~77 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~77 .shared_arith = "off";

arriav_lcell_comb \Add63~81 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~53_sumout ),
	.datae(gnd),
	.dataf(!\Add57~81_sumout ),
	.datag(gnd),
	.cin(\Add63~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~81_sumout ),
	.cout(\Add63~82 ),
	.shareout());
defparam \Add63~81 .extended_lut = "off";
defparam \Add63~81 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~81 .shared_arith = "off";

arriav_lcell_comb \Add65~85 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~49_sumout ),
	.datae(gnd),
	.dataf(!\Add63~85_sumout ),
	.datag(gnd),
	.cin(\Add65~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~85_sumout ),
	.cout(\Add65~86 ),
	.shareout());
defparam \Add65~85 .extended_lut = "off";
defparam \Add65~85 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~85 .shared_arith = "off";

arriav_lcell_comb \Add71~89 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~45_sumout ),
	.datae(gnd),
	.dataf(!\Add65~89_sumout ),
	.datag(gnd),
	.cin(\Add71~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~89_sumout ),
	.cout(\Add71~90 ),
	.shareout());
defparam \Add71~89 .extended_lut = "off";
defparam \Add71~89 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~89 .shared_arith = "off";

arriav_lcell_comb \Add73~93 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~93_sumout ),
	.datae(gnd),
	.dataf(!\Add69~41_sumout ),
	.datag(gnd),
	.cin(\Add73~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~93_sumout ),
	.cout(\Add73~94 ),
	.shareout());
defparam \Add73~93 .extended_lut = "off";
defparam \Add73~93 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~93 .shared_arith = "off";

arriav_lcell_comb \Add51~69 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][20]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][15]~q ),
	.datag(gnd),
	.cin(\Add51~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~69_sumout ),
	.cout(\Add51~70 ),
	.shareout());
defparam \Add51~69 .extended_lut = "off";
defparam \Add51~69 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~69 .shared_arith = "off";

arriav_lcell_comb \Add53~73 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~61_sumout ),
	.datae(gnd),
	.dataf(!\Add51~73_sumout ),
	.datag(gnd),
	.cin(\Add53~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~73_sumout ),
	.cout(\Add53~74 ),
	.shareout());
defparam \Add53~73 .extended_lut = "off";
defparam \Add53~73 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~73 .shared_arith = "off";

arriav_lcell_comb \Add59~77 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~57_sumout ),
	.datae(gnd),
	.dataf(!\Add53~77_sumout ),
	.datag(gnd),
	.cin(\Add59~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~77_sumout ),
	.cout(\Add59~78 ),
	.shareout());
defparam \Add59~77 .extended_lut = "off";
defparam \Add59~77 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~77 .shared_arith = "off";

arriav_lcell_comb \Add61~81 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~53_sumout ),
	.datae(gnd),
	.dataf(!\Add59~81_sumout ),
	.datag(gnd),
	.cin(\Add61~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~81_sumout ),
	.cout(\Add61~82 ),
	.shareout());
defparam \Add61~81 .extended_lut = "off";
defparam \Add61~81 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~81 .shared_arith = "off";

arriav_lcell_comb \Add67~85 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~49_sumout ),
	.datae(gnd),
	.dataf(!\Add61~85_sumout ),
	.datag(gnd),
	.cin(\Add67~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~85_sumout ),
	.cout(\Add67~86 ),
	.shareout());
defparam \Add67~85 .extended_lut = "off";
defparam \Add67~85 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~85 .shared_arith = "off";

arriav_lcell_comb \Add69~89 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~45_sumout ),
	.datae(gnd),
	.dataf(!\Add67~89_sumout ),
	.datag(gnd),
	.cin(\Add69~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~89_sumout ),
	.cout(\Add69~90 ),
	.shareout());
defparam \Add69~89 .extended_lut = "off";
defparam \Add69~89 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~89 .shared_arith = "off";

arriav_lcell_comb \Add75~93 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~93_sumout ),
	.datae(gnd),
	.dataf(!\Add71~41_sumout ),
	.datag(gnd),
	.cin(\Add75~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~93_sumout ),
	.cout(\Add75~94 ),
	.shareout());
defparam \Add75~93 .extended_lut = "off";
defparam \Add75~93 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~93 .shared_arith = "off";

arriav_lcell_comb \Add29~42 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_8_uid159_sincosTest_o[1]~14_combout ),
	.datag(gnd),
	.cin(\Add29~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~42_cout ),
	.shareout());
defparam \Add29~42 .extended_lut = "off";
defparam \Add29~42 .lut_mask = 64'h0000FF0000007D28;
defparam \Add29~42 .shared_arith = "off";

arriav_lcell_comb \Add5~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~61_sumout ),
	.cout(\Add5~62 ),
	.shareout());
defparam \Add5~61 .extended_lut = "off";
defparam \Add5~61 .lut_mask = 64'h0000FFFF00000000;
defparam \Add5~61 .shared_arith = "off";

arriav_lcell_comb \Add6~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~66 ),
	.sharein(\Add6~67 ),
	.combout(),
	.sumout(\Add6~61_sumout ),
	.cout(\Add6~62 ),
	.shareout(\Add6~63 ));
defparam \Add6~61 .extended_lut = "off";
defparam \Add6~61 .lut_mask = 64'h000000000000FFFF;
defparam \Add6~61 .shared_arith = "on";

arriav_lcell_comb \Add7~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~65_sumout ),
	.datad(!\Add6~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~61_sumout ),
	.cout(\Add7~62 ),
	.shareout());
defparam \Add7~61 .extended_lut = "off";
defparam \Add7~61 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add7~61 .shared_arith = "off";

arriav_lcell_comb \Add8~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~65_sumout ),
	.datad(!\Add6~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~61_sumout ),
	.cout(\Add8~62 ),
	.shareout());
defparam \Add8~61 .extended_lut = "off";
defparam \Add8~61 .lut_mask = 64'h00000000000005AF;
defparam \Add8~61 .shared_arith = "off";

arriav_lcell_comb \Add9~61 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~65_sumout ),
	.datad(!\Add8~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~61_sumout ),
	.cout(\Add9~62 ),
	.shareout());
defparam \Add9~61 .extended_lut = "off";
defparam \Add9~61 .lut_mask = 64'h00000000000005AF;
defparam \Add9~61 .shared_arith = "off";

arriav_lcell_comb \Add10~61 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~65_sumout ),
	.datad(!\Add8~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~61_sumout ),
	.cout(\Add10~62 ),
	.shareout());
defparam \Add10~61 .extended_lut = "off";
defparam \Add10~61 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~61 .shared_arith = "off";

arriav_lcell_comb \Add11~61 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~65_sumout ),
	.datad(!\Add10~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~61_sumout ),
	.cout(\Add11~62 ),
	.shareout());
defparam \Add11~61 .extended_lut = "off";
defparam \Add11~61 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~61 .shared_arith = "off";

arriav_lcell_comb \Add12~61 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~65_sumout ),
	.datad(!\Add10~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~61_sumout ),
	.cout(\Add12~62 ),
	.shareout());
defparam \Add12~61 .extended_lut = "off";
defparam \Add12~61 .lut_mask = 64'h00000000000005AF;
defparam \Add12~61 .shared_arith = "off";

arriav_lcell_comb \Add13~61 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~65_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~65_sumout ),
	.datag(gnd),
	.cin(\Add13~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~61_sumout ),
	.cout(\Add13~62 ),
	.shareout());
defparam \Add13~61 .extended_lut = "off";
defparam \Add13~61 .lut_mask = 64'h0000FA500000EE44;
defparam \Add13~61 .shared_arith = "off";

arriav_lcell_comb \Add15~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add15~65_sumout ),
	.cout(\Add15~66 ),
	.shareout());
defparam \Add15~65 .extended_lut = "off";
defparam \Add15~65 .lut_mask = 64'h00000000000000FF;
defparam \Add15~65 .shared_arith = "off";

arriav_lcell_comb \Add16~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add16~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~65_sumout ),
	.cout(\Add16~66 ),
	.shareout());
defparam \Add16~65 .extended_lut = "off";
defparam \Add16~65 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add16~65 .shared_arith = "off";

arriav_lcell_comb \Add17~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\Add16~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add17~70_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add17~65_sumout ),
	.cout(\Add17~66 ),
	.shareout());
defparam \Add17~65 .extended_lut = "off";
defparam \Add17~65 .lut_mask = 64'h00000000000005AF;
defparam \Add17~65 .shared_arith = "off";

arriav_lcell_comb \Add18~65 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\Add16~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add18~65_sumout ),
	.cout(\Add18~66 ),
	.shareout());
defparam \Add18~65 .extended_lut = "off";
defparam \Add18~65 .lut_mask = 64'h00000000000005AF;
defparam \Add18~65 .shared_arith = "off";

arriav_lcell_comb \Add47~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datag(gnd),
	.cin(\Add47~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~1_sumout ),
	.cout(),
	.shareout());
defparam \Add47~1 .extended_lut = "off";
defparam \Add47~1 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~1 .shared_arith = "off";

arriav_lcell_comb \Add45~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datag(gnd),
	.cin(\Add45~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~1_sumout ),
	.cout(),
	.shareout());
defparam \Add45~1 .extended_lut = "off";
defparam \Add45~1 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~1 .shared_arith = "off";

arriav_lcell_comb \Add45~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[26]~1_combout ),
	.datag(gnd),
	.cin(\Add45~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~5_sumout ),
	.cout(\Add45~6 ),
	.shareout());
defparam \Add45~5 .extended_lut = "off";
defparam \Add45~5 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~5 .shared_arith = "off";

arriav_lcell_comb \Add45~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[25]~2_combout ),
	.datag(gnd),
	.cin(\Add45~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~9_sumout ),
	.cout(\Add45~10 ),
	.shareout());
defparam \Add45~9 .extended_lut = "off";
defparam \Add45~9 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~9 .shared_arith = "off";

arriav_lcell_comb \Add45~13 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[24]~3_combout ),
	.datag(gnd),
	.cin(\Add45~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~13_sumout ),
	.cout(\Add45~14 ),
	.shareout());
defparam \Add45~13 .extended_lut = "off";
defparam \Add45~13 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~13 .shared_arith = "off";

arriav_lcell_comb \Add47~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datag(gnd),
	.cin(\Add47~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~5_sumout ),
	.cout(\Add47~6 ),
	.shareout());
defparam \Add47~5 .extended_lut = "off";
defparam \Add47~5 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~5 .shared_arith = "off";

arriav_lcell_comb \Add45~17 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[30]~1_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[22]~4_combout ),
	.datag(gnd),
	.cin(\Add45~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~17_sumout ),
	.cout(\Add45~18 ),
	.shareout());
defparam \Add45~17 .extended_lut = "off";
defparam \Add45~17 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~17 .shared_arith = "off";

arriav_lcell_comb \Add47~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[30]~1_combout ),
	.datag(gnd),
	.cin(\Add47~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~9_sumout ),
	.cout(\Add47~10 ),
	.shareout());
defparam \Add47~9 .extended_lut = "off";
defparam \Add47~9 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~9 .shared_arith = "off";

arriav_lcell_comb \Add45~21 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[29]~2_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[21]~5_combout ),
	.datag(gnd),
	.cin(\Add45~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~21_sumout ),
	.cout(\Add45~22 ),
	.shareout());
defparam \Add45~21 .extended_lut = "off";
defparam \Add45~21 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~21 .shared_arith = "off";

arriav_lcell_comb \Add47~13 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[29]~2_combout ),
	.datag(gnd),
	.cin(\Add47~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~13_sumout ),
	.cout(\Add47~14 ),
	.shareout());
defparam \Add47~13 .extended_lut = "off";
defparam \Add47~13 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~13 .shared_arith = "off";

arriav_lcell_comb \Add45~25 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[28]~3_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[20]~6_combout ),
	.datag(gnd),
	.cin(\Add45~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~25_sumout ),
	.cout(\Add45~26 ),
	.shareout());
defparam \Add45~25 .extended_lut = "off";
defparam \Add45~25 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~25 .shared_arith = "off";

arriav_lcell_comb \Add47~17 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[28]~3_combout ),
	.datag(gnd),
	.cin(\Add47~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~17_sumout ),
	.cout(\Add47~18 ),
	.shareout());
defparam \Add47~17 .extended_lut = "off";
defparam \Add47~17 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~17 .shared_arith = "off";

arriav_lcell_comb \Add45~29 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[27]~4_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[19]~7_combout ),
	.datag(gnd),
	.cin(\Add45~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~29_sumout ),
	.cout(\Add45~30 ),
	.shareout());
defparam \Add45~29 .extended_lut = "off";
defparam \Add45~29 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~29 .shared_arith = "off";

arriav_lcell_comb \Add47~21 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[27]~4_combout ),
	.datag(gnd),
	.cin(\Add47~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~21_sumout ),
	.cout(\Add47~22 ),
	.shareout());
defparam \Add47~21 .extended_lut = "off";
defparam \Add47~21 .lut_mask = 64'h0000FF000000C963;
defparam \Add47~21 .shared_arith = "off";

arriav_lcell_comb \Add45~33 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[26]~5_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[18]~8_combout ),
	.datag(gnd),
	.cin(\Add45~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~33_sumout ),
	.cout(\Add45~34 ),
	.shareout());
defparam \Add45~33 .extended_lut = "off";
defparam \Add45~33 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~33 .shared_arith = "off";

arriav_lcell_comb \Add45~37 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[25]~6_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[17]~9_combout ),
	.datag(gnd),
	.cin(\Add45~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~37_sumout ),
	.cout(\Add45~38 ),
	.shareout());
defparam \Add45~37 .extended_lut = "off";
defparam \Add45~37 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~37 .shared_arith = "off";

arriav_lcell_comb \Add47~25 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[16]~10_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[16]~7_combout ),
	.datag(gnd),
	.cin(\Add47~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~25_sumout ),
	.cout(\Add47~26 ),
	.shareout());
defparam \Add47~25 .extended_lut = "off";
defparam \Add47~25 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~25 .shared_arith = "off";

arriav_lcell_comb \Add49~73 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][14]~q ),
	.datag(gnd),
	.cin(\Add49~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~73_sumout ),
	.cout(\Add49~74 ),
	.shareout());
defparam \Add49~73 .extended_lut = "off";
defparam \Add49~73 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~73 .shared_arith = "off";

arriav_lcell_comb \Add55~77 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~57_sumout ),
	.datae(gnd),
	.dataf(!\Add49~77_sumout ),
	.datag(gnd),
	.cin(\Add55~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~77_sumout ),
	.cout(\Add55~78 ),
	.shareout());
defparam \Add55~77 .extended_lut = "off";
defparam \Add55~77 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~77 .shared_arith = "off";

arriav_lcell_comb \Add57~81 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~53_sumout ),
	.datae(gnd),
	.dataf(!\Add55~81_sumout ),
	.datag(gnd),
	.cin(\Add57~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~81_sumout ),
	.cout(\Add57~82 ),
	.shareout());
defparam \Add57~81 .extended_lut = "off";
defparam \Add57~81 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~81 .shared_arith = "off";

arriav_lcell_comb \Add63~85 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~49_sumout ),
	.datae(gnd),
	.dataf(!\Add57~85_sumout ),
	.datag(gnd),
	.cin(\Add63~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~85_sumout ),
	.cout(\Add63~86 ),
	.shareout());
defparam \Add63~85 .extended_lut = "off";
defparam \Add63~85 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~85 .shared_arith = "off";

arriav_lcell_comb \Add65~89 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~45_sumout ),
	.datae(gnd),
	.dataf(!\Add63~89_sumout ),
	.datag(gnd),
	.cin(\Add65~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~89_sumout ),
	.cout(\Add65~90 ),
	.shareout());
defparam \Add65~89 .extended_lut = "off";
defparam \Add65~89 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~89 .shared_arith = "off";

arriav_lcell_comb \Add71~93 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~41_sumout ),
	.datae(gnd),
	.dataf(!\Add65~93_sumout ),
	.datag(gnd),
	.cin(\Add71~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~93_sumout ),
	.cout(\Add71~94 ),
	.shareout());
defparam \Add71~93 .extended_lut = "off";
defparam \Add71~93 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~93 .shared_arith = "off";

arriav_lcell_comb \Add45~41 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[23]~11_combout ),
	.datag(gnd),
	.cin(\Add45~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~41_sumout ),
	.cout(\Add45~42 ),
	.shareout());
defparam \Add45~41 .extended_lut = "off";
defparam \Add45~41 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~41 .shared_arith = "off";

arriav_lcell_comb \Add73~97 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~97_sumout ),
	.datae(gnd),
	.dataf(!\Add69~37_sumout ),
	.datag(gnd),
	.cin(\Add73~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~97_sumout ),
	.cout(\Add73~98 ),
	.shareout());
defparam \Add73~97 .extended_lut = "off";
defparam \Add73~97 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~97 .shared_arith = "off";

arriav_lcell_comb \Add45~45 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.datag(gnd),
	.cin(\Add45~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~45_sumout ),
	.cout(\Add45~46 ),
	.shareout());
defparam \Add45~45 .extended_lut = "off";
defparam \Add45~45 .lut_mask = 64'h0000FF000000369C;
defparam \Add45~45 .shared_arith = "off";

arriav_lcell_comb \Add47~29 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[17]~9_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[17]~8_combout ),
	.datag(gnd),
	.cin(\Add47~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~29_sumout ),
	.cout(\Add47~30 ),
	.shareout());
defparam \Add47~29 .extended_lut = "off";
defparam \Add47~29 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~29 .shared_arith = "off";

arriav_lcell_comb \Add47~33 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[26]~1_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[26]~5_combout ),
	.datag(gnd),
	.cin(\Add47~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~33_sumout ),
	.cout(\Add47~34 ),
	.shareout());
defparam \Add47~33 .extended_lut = "off";
defparam \Add47~33 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~33 .shared_arith = "off";

arriav_lcell_comb \Add47~37 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[25]~2_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[25]~6_combout ),
	.datag(gnd),
	.cin(\Add47~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~37_sumout ),
	.cout(\Add47~38 ),
	.shareout());
defparam \Add47~37 .extended_lut = "off";
defparam \Add47~37 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~37 .shared_arith = "off";

arriav_lcell_comb \Add47~41 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[24]~3_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[24]~9_combout ),
	.datag(gnd),
	.cin(\Add47~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~41_sumout ),
	.cout(\Add47~42 ),
	.shareout());
defparam \Add47~41 .extended_lut = "off";
defparam \Add47~41 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~41 .shared_arith = "off";

arriav_lcell_comb \Add47~45 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[23]~11_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[23]~10_combout ),
	.datag(gnd),
	.cin(\Add47~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~45_sumout ),
	.cout(\Add47~46 ),
	.shareout());
defparam \Add47~45 .extended_lut = "off";
defparam \Add47~45 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~45 .shared_arith = "off";

arriav_lcell_comb \Add47~49 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[22]~4_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[22]~11_combout ),
	.datag(gnd),
	.cin(\Add47~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~49_sumout ),
	.cout(\Add47~50 ),
	.shareout());
defparam \Add47~49 .extended_lut = "off";
defparam \Add47~49 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~49 .shared_arith = "off";

arriav_lcell_comb \Add47~53 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[21]~5_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[21]~12_combout ),
	.datag(gnd),
	.cin(\Add47~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~53_sumout ),
	.cout(\Add47~54 ),
	.shareout());
defparam \Add47~53 .extended_lut = "off";
defparam \Add47~53 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~53 .shared_arith = "off";

arriav_lcell_comb \Add45~49 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[20]~13_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[12]~12_combout ),
	.datag(gnd),
	.cin(\Add45~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~49_sumout ),
	.cout(\Add45~50 ),
	.shareout());
defparam \Add45~49 .extended_lut = "off";
defparam \Add45~49 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~49 .shared_arith = "off";

arriav_lcell_comb \Add51~73 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][14]~q ),
	.datag(gnd),
	.cin(\Add51~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~73_sumout ),
	.cout(\Add51~74 ),
	.shareout());
defparam \Add51~73 .extended_lut = "off";
defparam \Add51~73 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~73 .shared_arith = "off";

arriav_lcell_comb \Add53~77 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~57_sumout ),
	.datae(gnd),
	.dataf(!\Add51~77_sumout ),
	.datag(gnd),
	.cin(\Add53~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~77_sumout ),
	.cout(\Add53~78 ),
	.shareout());
defparam \Add53~77 .extended_lut = "off";
defparam \Add53~77 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~77 .shared_arith = "off";

arriav_lcell_comb \Add59~81 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~53_sumout ),
	.datae(gnd),
	.dataf(!\Add53~81_sumout ),
	.datag(gnd),
	.cin(\Add59~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~81_sumout ),
	.cout(\Add59~82 ),
	.shareout());
defparam \Add59~81 .extended_lut = "off";
defparam \Add59~81 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~81 .shared_arith = "off";

arriav_lcell_comb \Add61~85 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~49_sumout ),
	.datae(gnd),
	.dataf(!\Add59~85_sumout ),
	.datag(gnd),
	.cin(\Add61~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~85_sumout ),
	.cout(\Add61~86 ),
	.shareout());
defparam \Add61~85 .extended_lut = "off";
defparam \Add61~85 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~85 .shared_arith = "off";

arriav_lcell_comb \Add67~89 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~45_sumout ),
	.datae(gnd),
	.dataf(!\Add61~89_sumout ),
	.datag(gnd),
	.cin(\Add67~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~89_sumout ),
	.cout(\Add67~90 ),
	.shareout());
defparam \Add67~89 .extended_lut = "off";
defparam \Add67~89 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~89 .shared_arith = "off";

arriav_lcell_comb \Add69~93 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~41_sumout ),
	.datae(gnd),
	.dataf(!\Add67~93_sumout ),
	.datag(gnd),
	.cin(\Add69~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~93_sumout ),
	.cout(\Add69~94 ),
	.shareout());
defparam \Add69~93 .extended_lut = "off";
defparam \Add69~93 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~93 .shared_arith = "off";

arriav_lcell_comb \Add75~97 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~97_sumout ),
	.datae(gnd),
	.dataf(!\Add71~37_sumout ),
	.datag(gnd),
	.cin(\Add75~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~97_sumout ),
	.cout(\Add75~98 ),
	.shareout());
defparam \Add75~97 .extended_lut = "off";
defparam \Add75~97 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~97 .shared_arith = "off";

arriav_lcell_comb \Add45~53 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[21]~12_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[13]~13_combout ),
	.datag(gnd),
	.cin(\Add45~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~53_sumout ),
	.cout(\Add45~54 ),
	.shareout());
defparam \Add45~53 .extended_lut = "off";
defparam \Add45~53 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~53 .shared_arith = "off";

arriav_lcell_comb \Add47~57 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[18]~8_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[18]~14_combout ),
	.datag(gnd),
	.cin(\Add47~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~57_sumout ),
	.cout(\Add47~58 ),
	.shareout());
defparam \Add47~57 .extended_lut = "off";
defparam \Add47~57 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~57 .shared_arith = "off";

arriav_lcell_comb \Add45~57 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[22]~11_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[14]~14_combout ),
	.datag(gnd),
	.cin(\Add45~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~57_sumout ),
	.cout(\Add45~58 ),
	.shareout());
defparam \Add45~57 .extended_lut = "off";
defparam \Add45~57 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~57 .shared_arith = "off";

arriav_lcell_comb \Add47~61 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[19]~7_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[19]~15_combout ),
	.datag(gnd),
	.cin(\Add47~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~61_sumout ),
	.cout(\Add47~62 ),
	.shareout());
defparam \Add47~61 .extended_lut = "off";
defparam \Add47~61 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~61 .shared_arith = "off";

arriav_lcell_comb \Add45~61 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[23]~10_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[15]~15_combout ),
	.datag(gnd),
	.cin(\Add45~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~61_sumout ),
	.cout(\Add45~62 ),
	.shareout());
defparam \Add45~61 .extended_lut = "off";
defparam \Add45~61 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~61 .shared_arith = "off";

arriav_lcell_comb \Add47~65 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[20]~6_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[20]~13_combout ),
	.datag(gnd),
	.cin(\Add47~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~65_sumout ),
	.cout(\Add47~66 ),
	.shareout());
defparam \Add47~65 .extended_lut = "off";
defparam \Add47~65 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~65 .shared_arith = "off";

arriav_lcell_comb \Add45~65 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[24]~9_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[16]~10_combout ),
	.datag(gnd),
	.cin(\Add45~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~65_sumout ),
	.cout(\Add45~66 ),
	.shareout());
defparam \Add45~65 .extended_lut = "off";
defparam \Add45~65 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~65 .shared_arith = "off";

arriav_lcell_comb \Add29~46 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~46_cout ),
	.shareout());
defparam \Add29~46 .extended_lut = "off";
defparam \Add29~46 .lut_mask = 64'h0000000000007D28;
defparam \Add29~46 .shared_arith = "off";

arriav_lcell_comb \Add5~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~65_sumout ),
	.cout(\Add5~66 ),
	.shareout());
defparam \Add5~65 .extended_lut = "off";
defparam \Add5~65 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add5~65 .shared_arith = "off";

arriav_lcell_comb \Add6~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~70 ),
	.sharein(\Add6~71 ),
	.combout(),
	.sumout(\Add6~65_sumout ),
	.cout(\Add6~66 ),
	.shareout(\Add6~67 ));
defparam \Add6~65 .extended_lut = "off";
defparam \Add6~65 .lut_mask = 64'h0000000000000000;
defparam \Add6~65 .shared_arith = "on";

arriav_lcell_comb \Add7~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~69_sumout ),
	.datad(!\Add6~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~65_sumout ),
	.cout(\Add7~66 ),
	.shareout());
defparam \Add7~65 .extended_lut = "off";
defparam \Add7~65 .lut_mask = 64'h00000000000005AF;
defparam \Add7~65 .shared_arith = "off";

arriav_lcell_comb \Add8~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~69_sumout ),
	.datad(!\Add6~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~65_sumout ),
	.cout(\Add8~66 ),
	.shareout());
defparam \Add8~65 .extended_lut = "off";
defparam \Add8~65 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~65 .shared_arith = "off";

arriav_lcell_comb \Add9~65 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~69_sumout ),
	.datad(!\Add8~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~65_sumout ),
	.cout(\Add9~66 ),
	.shareout());
defparam \Add9~65 .extended_lut = "off";
defparam \Add9~65 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add9~65 .shared_arith = "off";

arriav_lcell_comb \Add10~65 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~69_sumout ),
	.datad(!\Add8~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~65_sumout ),
	.cout(\Add10~66 ),
	.shareout());
defparam \Add10~65 .extended_lut = "off";
defparam \Add10~65 .lut_mask = 64'h00000000000005AF;
defparam \Add10~65 .shared_arith = "off";

arriav_lcell_comb \Add11~65 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~69_sumout ),
	.datad(!\Add10~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~65_sumout ),
	.cout(\Add11~66 ),
	.shareout());
defparam \Add11~65 .extended_lut = "off";
defparam \Add11~65 .lut_mask = 64'h00000000000005AF;
defparam \Add11~65 .shared_arith = "off";

arriav_lcell_comb \Add12~65 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~69_sumout ),
	.datad(!\Add10~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~65_sumout ),
	.cout(\Add12~66 ),
	.shareout());
defparam \Add12~65 .extended_lut = "off";
defparam \Add12~65 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add12~65 .shared_arith = "off";

arriav_lcell_comb \Add13~65 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add11~69_sumout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add12~69_sumout ),
	.datag(gnd),
	.cin(\Add13~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~65_sumout ),
	.cout(\Add13~66 ),
	.shareout());
defparam \Add13~65 .extended_lut = "off";
defparam \Add13~65 .lut_mask = 64'h0000FA50000011BB;
defparam \Add13~65 .shared_arith = "off";

arriav_lcell_comb \Add16~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add16~69_sumout ),
	.cout(\Add16~70 ),
	.shareout());
defparam \Add16~69 .extended_lut = "off";
defparam \Add16~69 .lut_mask = 64'h00000000000000FF;
defparam \Add16~69 .shared_arith = "off";

arriav_lcell_comb \Add17~70 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add17~70_cout ),
	.shareout());
defparam \Add17~70 .extended_lut = "off";
defparam \Add17~70 .lut_mask = 64'h000000000000FFFF;
defparam \Add17~70 .shared_arith = "off";

arriav_lcell_comb \Add44~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~1_sumout ),
	.cout(),
	.shareout());
defparam \Add44~1 .extended_lut = "off";
defparam \Add44~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add44~1 .shared_arith = "off";

arriav_lcell_comb \Add43~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~1_sumout ),
	.cout(),
	.shareout());
defparam \Add43~1 .extended_lut = "off";
defparam \Add43~1 .lut_mask = 64'h0000FFFF00000000;
defparam \Add43~1 .shared_arith = "off";

arriav_lcell_comb \Add41~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~1_sumout ),
	.cout(),
	.shareout());
defparam \Add41~1 .extended_lut = "off";
defparam \Add41~1 .lut_mask = 64'h0000FFFF00000000;
defparam \Add41~1 .shared_arith = "off";

arriav_lcell_comb \Add42~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~1_sumout ),
	.cout(),
	.shareout());
defparam \Add42~1 .extended_lut = "off";
defparam \Add42~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add42~1 .shared_arith = "off";

arriav_lcell_comb \Add44~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~5_sumout ),
	.cout(\Add44~6 ),
	.shareout());
defparam \Add44~5 .extended_lut = "off";
defparam \Add44~5 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add44~5 .shared_arith = "off";

arriav_lcell_comb \Add43~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~5_sumout ),
	.cout(\Add43~6 ),
	.shareout());
defparam \Add43~5 .extended_lut = "off";
defparam \Add43~5 .lut_mask = 64'h0000FFFF00000000;
defparam \Add43~5 .shared_arith = "off";

arriav_lcell_comb \Add44~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~9_sumout ),
	.cout(\Add44~10 ),
	.shareout());
defparam \Add44~9 .extended_lut = "off";
defparam \Add44~9 .lut_mask = 64'h000000000000FFAA;
defparam \Add44~9 .shared_arith = "off";

arriav_lcell_comb \Add43~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~9_sumout ),
	.cout(\Add43~10 ),
	.shareout());
defparam \Add43~9 .extended_lut = "off";
defparam \Add43~9 .lut_mask = 64'h0000FFFF0000FFAA;
defparam \Add43~9 .shared_arith = "off";

arriav_lcell_comb \Add44~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~13_sumout ),
	.cout(\Add44~14 ),
	.shareout());
defparam \Add44~13 .extended_lut = "off";
defparam \Add44~13 .lut_mask = 64'h000000000000AAAA;
defparam \Add44~13 .shared_arith = "off";

arriav_lcell_comb \Add43~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~13_sumout ),
	.cout(\Add43~14 ),
	.shareout());
defparam \Add43~13 .extended_lut = "off";
defparam \Add43~13 .lut_mask = 64'h0000FFFF0000AAAA;
defparam \Add43~13 .shared_arith = "off";

arriav_lcell_comb \Add41~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~5_sumout ),
	.cout(\Add41~6 ),
	.shareout());
defparam \Add41~5 .extended_lut = "off";
defparam \Add41~5 .lut_mask = 64'h0000FFFF00000000;
defparam \Add41~5 .shared_arith = "off";

arriav_lcell_comb \Add42~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~5_sumout ),
	.cout(\Add42~6 ),
	.shareout());
defparam \Add42~5 .extended_lut = "off";
defparam \Add42~5 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add42~5 .shared_arith = "off";

arriav_lcell_comb \Add44~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~17_sumout ),
	.cout(\Add44~18 ),
	.shareout());
defparam \Add44~17 .extended_lut = "off";
defparam \Add44~17 .lut_mask = 64'h0000FF550000AAFF;
defparam \Add44~17 .shared_arith = "off";

arriav_lcell_comb \Add43~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~17_sumout ),
	.cout(\Add43~18 ),
	.shareout());
defparam \Add43~17 .extended_lut = "off";
defparam \Add43~17 .lut_mask = 64'h000000AA0000AAFF;
defparam \Add43~17 .shared_arith = "off";

arriav_lcell_comb \Add41~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~9_sumout ),
	.cout(\Add41~10 ),
	.shareout());
defparam \Add41~9 .extended_lut = "off";
defparam \Add41~9 .lut_mask = 64'h0000FFFF0000FF55;
defparam \Add41~9 .shared_arith = "off";

arriav_lcell_comb \Add42~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~9_sumout ),
	.cout(\Add42~10 ),
	.shareout());
defparam \Add42~9 .extended_lut = "off";
defparam \Add42~9 .lut_mask = 64'h000000000000FF55;
defparam \Add42~9 .shared_arith = "off";

arriav_lcell_comb \Add44~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add44~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~21_sumout ),
	.cout(\Add44~22 ),
	.shareout());
defparam \Add44~21 .extended_lut = "off";
defparam \Add44~21 .lut_mask = 64'h0000A0F50000AAAA;
defparam \Add44~21 .shared_arith = "off";

arriav_lcell_comb \Add43~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add43~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~21_sumout ),
	.cout(\Add43~22 ),
	.shareout());
defparam \Add43~21 .extended_lut = "off";
defparam \Add43~21 .lut_mask = 64'h0000A0F500005555;
defparam \Add43~21 .shared_arith = "off";

arriav_lcell_comb \Add41~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~13_sumout ),
	.cout(\Add41~14 ),
	.shareout());
defparam \Add41~13 .extended_lut = "off";
defparam \Add41~13 .lut_mask = 64'h0000FFFF00005555;
defparam \Add41~13 .shared_arith = "off";

arriav_lcell_comb \Add42~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~13_sumout ),
	.cout(\Add42~14 ),
	.shareout());
defparam \Add42~13 .extended_lut = "off";
defparam \Add42~13 .lut_mask = 64'h0000000000005555;
defparam \Add42~13 .shared_arith = "off";

arriav_lcell_comb \Add44~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add44~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~25_sumout ),
	.cout(\Add44~26 ),
	.shareout());
defparam \Add44~25 .extended_lut = "off";
defparam \Add44~25 .lut_mask = 64'h000000550000AAAA;
defparam \Add44~25 .shared_arith = "off";

arriav_lcell_comb \Add43~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add43~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~25_sumout ),
	.cout(\Add43~26 ),
	.shareout());
defparam \Add43~25 .extended_lut = "off";
defparam \Add43~25 .lut_mask = 64'h0000FFAA0000AAAA;
defparam \Add43~25 .shared_arith = "off";

arriav_lcell_comb \Add41~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~17_sumout ),
	.cout(\Add41~18 ),
	.shareout());
defparam \Add41~17 .extended_lut = "off";
defparam \Add41~17 .lut_mask = 64'h0000FFFF00000055;
defparam \Add41~17 .shared_arith = "off";

arriav_lcell_comb \Add42~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~17_sumout ),
	.cout(\Add42~18 ),
	.shareout());
defparam \Add42~17 .extended_lut = "off";
defparam \Add42~17 .lut_mask = 64'h0000000000000055;
defparam \Add42~17 .shared_arith = "off";

arriav_lcell_comb \Add44~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~29_sumout ),
	.cout(\Add44~30 ),
	.shareout());
defparam \Add44~29 .extended_lut = "off";
defparam \Add44~29 .lut_mask = 64'h0000EEEE0000AA00;
defparam \Add44~29 .shared_arith = "off";

arriav_lcell_comb \Add43~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~29_sumout ),
	.cout(\Add43~30 ),
	.shareout());
defparam \Add43~29 .extended_lut = "off";
defparam \Add43~29 .lut_mask = 64'h0000EEEE000055FF;
defparam \Add43~29 .shared_arith = "off";

arriav_lcell_comb \Add41~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~21_sumout ),
	.cout(\Add41~22 ),
	.shareout());
defparam \Add41~21 .extended_lut = "off";
defparam \Add41~21 .lut_mask = 64'h0000AA000000FFAA;
defparam \Add41~21 .shared_arith = "off";

arriav_lcell_comb \Add42~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~21_sumout ),
	.cout(\Add42~22 ),
	.shareout());
defparam \Add42~21 .extended_lut = "off";
defparam \Add42~21 .lut_mask = 64'h0000AA0000000055;
defparam \Add42~21 .shared_arith = "off";

arriav_lcell_comb \Add44~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~33_sumout ),
	.cout(\Add44~34 ),
	.shareout());
defparam \Add44~33 .extended_lut = "off";
defparam \Add44~33 .lut_mask = 64'h00004E4E00004E4E;
defparam \Add44~33 .shared_arith = "off";

arriav_lcell_comb \Add43~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~33_sumout ),
	.cout(\Add43~34 ),
	.shareout());
defparam \Add43~33 .extended_lut = "off";
defparam \Add43~33 .lut_mask = 64'h00004E4E0000B1B1;
defparam \Add43~33 .shared_arith = "off";

arriav_lcell_comb \Add41~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~25_sumout ),
	.cout(\Add41~26 ),
	.shareout());
defparam \Add41~25 .extended_lut = "off";
defparam \Add41~25 .lut_mask = 64'h000050FA0000AAAA;
defparam \Add41~25 .shared_arith = "off";

arriav_lcell_comb \Add42~25 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~25_sumout ),
	.cout(\Add42~26 ),
	.shareout());
defparam \Add42~25 .extended_lut = "off";
defparam \Add42~25 .lut_mask = 64'h000050FA00005555;
defparam \Add42~25 .shared_arith = "off";

arriav_lcell_comb \Add44~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~37_sumout ),
	.cout(\Add44~38 ),
	.shareout());
defparam \Add44~37 .extended_lut = "off";
defparam \Add44~37 .lut_mask = 64'h000055550000AAAA;
defparam \Add44~37 .shared_arith = "off";

arriav_lcell_comb \Add43~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~37_sumout ),
	.cout(\Add43~38 ),
	.shareout());
defparam \Add43~37 .extended_lut = "off";
defparam \Add43~37 .lut_mask = 64'h0000555500005555;
defparam \Add43~37 .shared_arith = "off";

arriav_lcell_comb \Add44~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add44~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~41_sumout ),
	.cout(\Add44~42 ),
	.shareout());
defparam \Add44~41 .extended_lut = "off";
defparam \Add44~41 .lut_mask = 64'h00005F0A0000F5F5;
defparam \Add44~41 .shared_arith = "off";

arriav_lcell_comb \Add43~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add43~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~41_sumout ),
	.cout(\Add43~42 ),
	.shareout());
defparam \Add43~41 .extended_lut = "off";
defparam \Add43~41 .lut_mask = 64'h00005F0A00000A0A;
defparam \Add43~41 .shared_arith = "off";

arriav_lcell_comb \Add41~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~29_sumout ),
	.cout(\Add41~30 ),
	.shareout());
defparam \Add41~29 .extended_lut = "off";
defparam \Add41~29 .lut_mask = 64'h0000EEEE0000BBBB;
defparam \Add41~29 .shared_arith = "off";

arriav_lcell_comb \Add42~29 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~29_sumout ),
	.cout(\Add42~30 ),
	.shareout());
defparam \Add42~29 .extended_lut = "off";
defparam \Add42~29 .lut_mask = 64'h000011110000BBBB;
defparam \Add42~29 .shared_arith = "off";

arriav_lcell_comb \Add47~69 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[15]~15_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[15]~16_combout ),
	.datag(gnd),
	.cin(\Add47~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~69_sumout ),
	.cout(\Add47~70 ),
	.shareout());
defparam \Add47~69 .extended_lut = "off";
defparam \Add47~69 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~69 .shared_arith = "off";

arriav_lcell_comb \Add49~77 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add49~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~77_sumout ),
	.cout(\Add49~78 ),
	.shareout());
defparam \Add49~77 .extended_lut = "off";
defparam \Add49~77 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~77 .shared_arith = "off";

arriav_lcell_comb \Add55~81 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~53_sumout ),
	.datae(gnd),
	.dataf(!\Add49~81_sumout ),
	.datag(gnd),
	.cin(\Add55~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~81_sumout ),
	.cout(\Add55~82 ),
	.shareout());
defparam \Add55~81 .extended_lut = "off";
defparam \Add55~81 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~81 .shared_arith = "off";

arriav_lcell_comb \Add57~85 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~49_sumout ),
	.datae(gnd),
	.dataf(!\Add55~85_sumout ),
	.datag(gnd),
	.cin(\Add57~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~85_sumout ),
	.cout(\Add57~86 ),
	.shareout());
defparam \Add57~85 .extended_lut = "off";
defparam \Add57~85 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~85 .shared_arith = "off";

arriav_lcell_comb \Add63~89 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~45_sumout ),
	.datae(gnd),
	.dataf(!\Add57~89_sumout ),
	.datag(gnd),
	.cin(\Add63~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~89_sumout ),
	.cout(\Add63~90 ),
	.shareout());
defparam \Add63~89 .extended_lut = "off";
defparam \Add63~89 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~89 .shared_arith = "off";

arriav_lcell_comb \Add65~93 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~41_sumout ),
	.datae(gnd),
	.dataf(!\Add63~93_sumout ),
	.datag(gnd),
	.cin(\Add65~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~93_sumout ),
	.cout(\Add65~94 ),
	.shareout());
defparam \Add65~93 .extended_lut = "off";
defparam \Add65~93 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~93 .shared_arith = "off";

arriav_lcell_comb \Add71~97 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~37_sumout ),
	.datae(gnd),
	.dataf(!\Add65~97_sumout ),
	.datag(gnd),
	.cin(\Add71~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~97_sumout ),
	.cout(\Add71~98 ),
	.shareout());
defparam \Add71~97 .extended_lut = "off";
defparam \Add71~97 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~97 .shared_arith = "off";

arriav_lcell_comb \Add44~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~45_sumout ),
	.cout(\Add44~46 ),
	.shareout());
defparam \Add44~45 .extended_lut = "off";
defparam \Add44~45 .lut_mask = 64'h0000FF550000FFFF;
defparam \Add44~45 .shared_arith = "off";

arriav_lcell_comb \Add43~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~45_sumout ),
	.cout(\Add43~46 ),
	.shareout());
defparam \Add43~45 .extended_lut = "off";
defparam \Add43~45 .lut_mask = 64'h0000FF5500000000;
defparam \Add43~45 .shared_arith = "off";

arriav_lcell_comb \Add73~101 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~101_sumout ),
	.datae(gnd),
	.dataf(!\Add69~33_sumout ),
	.datag(gnd),
	.cin(\Add73~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~101_sumout ),
	.cout(\Add73~102 ),
	.shareout());
defparam \Add73~101 .extended_lut = "off";
defparam \Add73~101 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~101 .shared_arith = "off";

arriav_lcell_comb \Add41~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~33_sumout ),
	.cout(\Add41~34 ),
	.shareout());
defparam \Add41~33 .extended_lut = "off";
defparam \Add41~33 .lut_mask = 64'h00004E4E00001B1B;
defparam \Add41~33 .shared_arith = "off";

arriav_lcell_comb \Add42~33 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~33_sumout ),
	.cout(\Add42~34 ),
	.shareout());
defparam \Add42~33 .extended_lut = "off";
defparam \Add42~33 .lut_mask = 64'h0000B1B100001B1B;
defparam \Add42~33 .shared_arith = "off";

arriav_lcell_comb \Add41~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~37_sumout ),
	.cout(\Add41~38 ),
	.shareout());
defparam \Add41~37 .extended_lut = "off";
defparam \Add41~37 .lut_mask = 64'h0000FF5500005555;
defparam \Add41~37 .shared_arith = "off";

arriav_lcell_comb \Add42~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~37_sumout ),
	.cout(\Add42~38 ),
	.shareout());
defparam \Add42~37 .extended_lut = "off";
defparam \Add42~37 .lut_mask = 64'h000000AA00005555;
defparam \Add42~37 .shared_arith = "off";

arriav_lcell_comb \Add41~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~41_sumout ),
	.cout(\Add41~42 ),
	.shareout());
defparam \Add41~41 .extended_lut = "off";
defparam \Add41~41 .lut_mask = 64'h0000FF550000BBBB;
defparam \Add41~41 .shared_arith = "off";

arriav_lcell_comb \Add42~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~41_sumout ),
	.cout(\Add42~42 ),
	.shareout());
defparam \Add42~41 .extended_lut = "off";
defparam \Add42~41 .lut_mask = 64'h0000FF5500004444;
defparam \Add42~41 .shared_arith = "off";

arriav_lcell_comb \Add41~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~45_sumout ),
	.cout(\Add41~46 ),
	.shareout());
defparam \Add41~45 .extended_lut = "off";
defparam \Add41~45 .lut_mask = 64'h0000B1B100004E4E;
defparam \Add41~45 .shared_arith = "off";

arriav_lcell_comb \Add42~45 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~45_sumout ),
	.cout(\Add42~46 ),
	.shareout());
defparam \Add42~45 .extended_lut = "off";
defparam \Add42~45 .lut_mask = 64'h00004E4E00004E4E;
defparam \Add42~45 .shared_arith = "off";

arriav_lcell_comb \Add41~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~49_sumout ),
	.cout(\Add41~50 ),
	.shareout());
defparam \Add41~49 .extended_lut = "off";
defparam \Add41~49 .lut_mask = 64'h0000555500005555;
defparam \Add41~49 .shared_arith = "off";

arriav_lcell_comb \Add42~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~49_sumout ),
	.cout(\Add42~50 ),
	.shareout());
defparam \Add42~49 .extended_lut = "off";
defparam \Add42~49 .lut_mask = 64'h0000AAAA00005555;
defparam \Add42~49 .shared_arith = "off";

arriav_lcell_comb \Add41~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~53_sumout ),
	.cout(\Add41~54 ),
	.shareout());
defparam \Add41~53 .extended_lut = "off";
defparam \Add41~53 .lut_mask = 64'h0000AF0500000505;
defparam \Add41~53 .shared_arith = "off";

arriav_lcell_comb \Add42~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~53_sumout ),
	.cout(\Add42~54 ),
	.shareout());
defparam \Add42~53 .extended_lut = "off";
defparam \Add42~53 .lut_mask = 64'h0000AF050000FAFA;
defparam \Add42~53 .shared_arith = "off";

arriav_lcell_comb \Add44~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~49_sumout ),
	.cout(\Add44~50 ),
	.shareout());
defparam \Add44~49 .extended_lut = "off";
defparam \Add44~49 .lut_mask = 64'h0000222200007777;
defparam \Add44~49 .shared_arith = "off";

arriav_lcell_comb \Add43~49 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~49_sumout ),
	.cout(\Add43~50 ),
	.shareout());
defparam \Add43~49 .extended_lut = "off";
defparam \Add43~49 .lut_mask = 64'h0000DDDD00007777;
defparam \Add43~49 .shared_arith = "off";

arriav_lcell_comb \Add45~69 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[19]~15_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[11]~16_combout ),
	.datag(gnd),
	.cin(\Add45~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~69_sumout ),
	.cout(\Add45~70 ),
	.shareout());
defparam \Add45~69 .extended_lut = "off";
defparam \Add45~69 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~69 .shared_arith = "off";

arriav_lcell_comb \Add51~77 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add51~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~77_sumout ),
	.cout(\Add51~78 ),
	.shareout());
defparam \Add51~77 .extended_lut = "off";
defparam \Add51~77 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~77 .shared_arith = "off";

arriav_lcell_comb \Add53~81 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~53_sumout ),
	.datae(gnd),
	.dataf(!\Add51~81_sumout ),
	.datag(gnd),
	.cin(\Add53~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~81_sumout ),
	.cout(\Add53~82 ),
	.shareout());
defparam \Add53~81 .extended_lut = "off";
defparam \Add53~81 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~81 .shared_arith = "off";

arriav_lcell_comb \Add59~85 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~49_sumout ),
	.datae(gnd),
	.dataf(!\Add53~85_sumout ),
	.datag(gnd),
	.cin(\Add59~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~85_sumout ),
	.cout(\Add59~86 ),
	.shareout());
defparam \Add59~85 .extended_lut = "off";
defparam \Add59~85 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~85 .shared_arith = "off";

arriav_lcell_comb \Add61~89 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~45_sumout ),
	.datae(gnd),
	.dataf(!\Add59~89_sumout ),
	.datag(gnd),
	.cin(\Add61~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~89_sumout ),
	.cout(\Add61~90 ),
	.shareout());
defparam \Add61~89 .extended_lut = "off";
defparam \Add61~89 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~89 .shared_arith = "off";

arriav_lcell_comb \Add67~93 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~41_sumout ),
	.datae(gnd),
	.dataf(!\Add61~93_sumout ),
	.datag(gnd),
	.cin(\Add67~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~93_sumout ),
	.cout(\Add67~94 ),
	.shareout());
defparam \Add67~93 .extended_lut = "off";
defparam \Add67~93 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~93 .shared_arith = "off";

arriav_lcell_comb \Add69~97 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~37_sumout ),
	.datae(gnd),
	.dataf(!\Add67~97_sumout ),
	.datag(gnd),
	.cin(\Add69~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~97_sumout ),
	.cout(\Add69~98 ),
	.shareout());
defparam \Add69~97 .extended_lut = "off";
defparam \Add69~97 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~97 .shared_arith = "off";

arriav_lcell_comb \Add75~101 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~101_sumout ),
	.datae(gnd),
	.dataf(!\Add71~33_sumout ),
	.datag(gnd),
	.cin(\Add75~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~101_sumout ),
	.cout(\Add75~102 ),
	.shareout());
defparam \Add75~101 .extended_lut = "off";
defparam \Add75~101 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~101 .shared_arith = "off";

arriav_lcell_comb \Add44~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~53_sumout ),
	.cout(\Add44~54 ),
	.shareout());
defparam \Add44~53 .extended_lut = "off";
defparam \Add44~53 .lut_mask = 64'h0000727200002727;
defparam \Add44~53 .shared_arith = "off";

arriav_lcell_comb \Add43~53 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~53_sumout ),
	.cout(\Add43~54 ),
	.shareout());
defparam \Add43~53 .extended_lut = "off";
defparam \Add43~53 .lut_mask = 64'h00008D8D00002727;
defparam \Add43~53 .shared_arith = "off";

arriav_lcell_comb \Add41~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~57_sumout ),
	.cout(\Add41~58 ),
	.shareout());
defparam \Add41~57 .extended_lut = "off";
defparam \Add41~57 .lut_mask = 64'h0000555500000055;
defparam \Add41~57 .shared_arith = "off";

arriav_lcell_comb \Add42~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~57_sumout ),
	.cout(\Add42~58 ),
	.shareout());
defparam \Add42~57 .extended_lut = "off";
defparam \Add42~57 .lut_mask = 64'h0000AAAA00000055;
defparam \Add42~57 .shared_arith = "off";

arriav_lcell_comb \Add44~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~57_sumout ),
	.cout(\Add44~58 ),
	.shareout());
defparam \Add44~57 .extended_lut = "off";
defparam \Add44~57 .lut_mask = 64'h00005555000000AA;
defparam \Add44~57 .shared_arith = "off";

arriav_lcell_comb \Add43~57 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~57_sumout ),
	.cout(\Add43~58 ),
	.shareout());
defparam \Add43~57 .extended_lut = "off";
defparam \Add43~57 .lut_mask = 64'h0000AAAA000000AA;
defparam \Add43~57 .shared_arith = "off";

arriav_lcell_comb \Add41~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add41~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~61_sumout ),
	.cout(\Add41~62 ),
	.shareout());
defparam \Add41~61 .extended_lut = "off";
defparam \Add41~61 .lut_mask = 64'h00005F0A00000A0A;
defparam \Add41~61 .shared_arith = "off";

arriav_lcell_comb \Add42~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add42~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~61_sumout ),
	.cout(\Add42~62 ),
	.shareout());
defparam \Add42~61 .extended_lut = "off";
defparam \Add42~61 .lut_mask = 64'h0000A0F500000A0A;
defparam \Add42~61 .shared_arith = "off";

arriav_lcell_comb \Add44~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~61_sumout ),
	.cout(\Add44~62 ),
	.shareout());
defparam \Add44~61 .extended_lut = "off";
defparam \Add44~61 .lut_mask = 64'h000050FA00000505;
defparam \Add44~61 .shared_arith = "off";

arriav_lcell_comb \Add43~61 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~61_sumout ),
	.cout(\Add43~62 ),
	.shareout());
defparam \Add43~61 .extended_lut = "off";
defparam \Add43~61 .lut_mask = 64'h0000AF0500000505;
defparam \Add43~61 .shared_arith = "off";

arriav_lcell_comb \Add5~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~69_sumout ),
	.cout(\Add5~70 ),
	.shareout());
defparam \Add5~69 .extended_lut = "off";
defparam \Add5~69 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add5~69 .shared_arith = "off";

arriav_lcell_comb \Add6~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~74 ),
	.sharein(\Add6~75 ),
	.combout(),
	.sumout(\Add6~69_sumout ),
	.cout(\Add6~70 ),
	.shareout(\Add6~71 ));
defparam \Add6~69 .extended_lut = "off";
defparam \Add6~69 .lut_mask = 64'h0000000000000000;
defparam \Add6~69 .shared_arith = "on";

arriav_lcell_comb \Add7~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~73_sumout ),
	.datad(!\Add6~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~69_sumout ),
	.cout(\Add7~70 ),
	.shareout());
defparam \Add7~69 .extended_lut = "off";
defparam \Add7~69 .lut_mask = 64'h00000000000005AF;
defparam \Add7~69 .shared_arith = "off";

arriav_lcell_comb \Add8~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~73_sumout ),
	.datad(!\Add6~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~69_sumout ),
	.cout(\Add8~70 ),
	.shareout());
defparam \Add8~69 .extended_lut = "off";
defparam \Add8~69 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add8~69 .shared_arith = "off";

arriav_lcell_comb \Add9~69 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~73_sumout ),
	.datad(!\Add8~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~69_sumout ),
	.cout(\Add9~70 ),
	.shareout());
defparam \Add9~69 .extended_lut = "off";
defparam \Add9~69 .lut_mask = 64'h00000000000005AF;
defparam \Add9~69 .shared_arith = "off";

arriav_lcell_comb \Add10~69 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~73_sumout ),
	.datad(!\Add8~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~69_sumout ),
	.cout(\Add10~70 ),
	.shareout());
defparam \Add10~69 .extended_lut = "off";
defparam \Add10~69 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~69 .shared_arith = "off";

arriav_lcell_comb \Add11~69 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~73_sumout ),
	.datad(!\Add10~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~69_sumout ),
	.cout(\Add11~70 ),
	.shareout());
defparam \Add11~69 .extended_lut = "off";
defparam \Add11~69 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add11~69 .shared_arith = "off";

arriav_lcell_comb \Add12~69 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~73_sumout ),
	.datad(!\Add10~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~69_sumout ),
	.cout(\Add12~70 ),
	.shareout());
defparam \Add12~69 .extended_lut = "off";
defparam \Add12~69 .lut_mask = 64'h00000000000005AF;
defparam \Add12~69 .shared_arith = "off";

arriav_lcell_comb \Add13~69 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\aip1E_4_uid95_sincosTest_o[2]~0_combout ),
	.datad(!\Add12~1_sumout ),
	.datae(gnd),
	.dataf(!\Add11~73_sumout ),
	.datag(gnd),
	.cin(\Add13~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~69_sumout ),
	.cout(\Add13~70 ),
	.shareout());
defparam \Add13~69 .extended_lut = "off";
defparam \Add13~69 .lut_mask = 64'h0000F5A00000EE44;
defparam \Add13~69 .shared_arith = "off";

arriav_lcell_comb \Add13~73 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add9~81_sumout ),
	.datac(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datad(!\aip1E_6_uid127_sincosTest_a[20]~0_combout ),
	.datae(gnd),
	.dataf(!\Add11~77_sumout ),
	.datag(gnd),
	.cin(\Add13~78_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~73_sumout ),
	.cout(\Add13~74 ),
	.shareout());
defparam \Add13~73 .extended_lut = "off";
defparam \Add13~73 .lut_mask = 64'h00007F2A000000FF;
defparam \Add13~73 .shared_arith = "off";

arriav_lcell_comb \Add41~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~65_sumout ),
	.cout(\Add41~66 ),
	.shareout());
defparam \Add41~65 .extended_lut = "off";
defparam \Add41~65 .lut_mask = 64'h0000DDDD0000AAFF;
defparam \Add41~65 .shared_arith = "off";

arriav_lcell_comb \Add42~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~65_sumout ),
	.cout(\Add42~66 ),
	.shareout());
defparam \Add42~65 .extended_lut = "off";
defparam \Add42~65 .lut_mask = 64'h000000AA0000BBBB;
defparam \Add42~65 .shared_arith = "off";

arriav_lcell_comb \Add47~73 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[14]~14_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[14]~17_combout ),
	.datag(gnd),
	.cin(\Add47~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~73_sumout ),
	.cout(\Add47~74 ),
	.shareout());
defparam \Add47~73 .extended_lut = "off";
defparam \Add47~73 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~73 .shared_arith = "off";

arriav_lcell_comb \Add49~81 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][12]~q ),
	.datag(gnd),
	.cin(\Add49~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~81_sumout ),
	.cout(\Add49~82 ),
	.shareout());
defparam \Add49~81 .extended_lut = "off";
defparam \Add49~81 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~81 .shared_arith = "off";

arriav_lcell_comb \Add55~85 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~49_sumout ),
	.datae(gnd),
	.dataf(!\Add49~85_sumout ),
	.datag(gnd),
	.cin(\Add55~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~85_sumout ),
	.cout(\Add55~86 ),
	.shareout());
defparam \Add55~85 .extended_lut = "off";
defparam \Add55~85 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~85 .shared_arith = "off";

arriav_lcell_comb \Add57~89 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~45_sumout ),
	.datae(gnd),
	.dataf(!\Add55~89_sumout ),
	.datag(gnd),
	.cin(\Add57~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~89_sumout ),
	.cout(\Add57~90 ),
	.shareout());
defparam \Add57~89 .extended_lut = "off";
defparam \Add57~89 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~89 .shared_arith = "off";

arriav_lcell_comb \Add63~93 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~41_sumout ),
	.datae(gnd),
	.dataf(!\Add57~93_sumout ),
	.datag(gnd),
	.cin(\Add63~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~93_sumout ),
	.cout(\Add63~94 ),
	.shareout());
defparam \Add63~93 .extended_lut = "off";
defparam \Add63~93 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~93 .shared_arith = "off";

arriav_lcell_comb \Add65~97 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~37_sumout ),
	.datae(gnd),
	.dataf(!\Add63~97_sumout ),
	.datag(gnd),
	.cin(\Add65~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~97_sumout ),
	.cout(\Add65~98 ),
	.shareout());
defparam \Add65~97 .extended_lut = "off";
defparam \Add65~97 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~97 .shared_arith = "off";

arriav_lcell_comb \Add71~101 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~33_sumout ),
	.datae(gnd),
	.dataf(!\Add65~101_sumout ),
	.datag(gnd),
	.cin(\Add71~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~101_sumout ),
	.cout(\Add71~102 ),
	.shareout());
defparam \Add71~101 .extended_lut = "off";
defparam \Add71~101 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~101 .shared_arith = "off";

arriav_lcell_comb \Add73~105 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~105_sumout ),
	.datae(gnd),
	.dataf(!\Add69~29_sumout ),
	.datag(gnd),
	.cin(\Add73~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~105_sumout ),
	.cout(\Add73~106 ),
	.shareout());
defparam \Add73~105 .extended_lut = "off";
defparam \Add73~105 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~105 .shared_arith = "off";

arriav_lcell_comb \Add44~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~65_sumout ),
	.cout(\Add44~66 ),
	.shareout());
defparam \Add44~65 .extended_lut = "off";
defparam \Add44~65 .lut_mask = 64'h00001111000055FF;
defparam \Add44~65 .shared_arith = "off";

arriav_lcell_comb \Add43~65 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~65_sumout ),
	.cout(\Add43~66 ),
	.shareout());
defparam \Add43~65 .extended_lut = "off";
defparam \Add43~65 .lut_mask = 64'h0000EEEE000055FF;
defparam \Add43~65 .shared_arith = "off";

arriav_lcell_comb \Add45~73 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[18]~14_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[10]~17_combout ),
	.datag(gnd),
	.cin(\Add45~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~73_sumout ),
	.cout(\Add45~74 ),
	.shareout());
defparam \Add45~73 .extended_lut = "off";
defparam \Add45~73 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~73 .shared_arith = "off";

arriav_lcell_comb \Add51~81 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][12]~q ),
	.datag(gnd),
	.cin(\Add51~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~81_sumout ),
	.cout(\Add51~82 ),
	.shareout());
defparam \Add51~81 .extended_lut = "off";
defparam \Add51~81 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~81 .shared_arith = "off";

arriav_lcell_comb \Add53~85 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~21_sumout ),
	.datae(gnd),
	.dataf(!\Add51~85_sumout ),
	.datag(gnd),
	.cin(\Add53~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~85_sumout ),
	.cout(\Add53~86 ),
	.shareout());
defparam \Add53~85 .extended_lut = "off";
defparam \Add53~85 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~85 .shared_arith = "off";

arriav_lcell_comb \Add59~89 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~13_sumout ),
	.datae(gnd),
	.dataf(!\Add53~89_sumout ),
	.datag(gnd),
	.cin(\Add59~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~89_sumout ),
	.cout(\Add59~90 ),
	.shareout());
defparam \Add59~89 .extended_lut = "off";
defparam \Add59~89 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~89 .shared_arith = "off";

arriav_lcell_comb \Add61~93 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~9_sumout ),
	.datae(gnd),
	.dataf(!\Add59~93_sumout ),
	.datag(gnd),
	.cin(\Add61~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~93_sumout ),
	.cout(\Add61~94 ),
	.shareout());
defparam \Add61~93 .extended_lut = "off";
defparam \Add61~93 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~93 .shared_arith = "off";

arriav_lcell_comb \Add67~97 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~9_sumout ),
	.datae(gnd),
	.dataf(!\Add61~97_sumout ),
	.datag(gnd),
	.cin(\Add67~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~97_sumout ),
	.cout(\Add67~98 ),
	.shareout());
defparam \Add67~97 .extended_lut = "off";
defparam \Add67~97 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~97 .shared_arith = "off";

arriav_lcell_comb \Add69~101 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~9_sumout ),
	.datae(gnd),
	.dataf(!\Add67~101_sumout ),
	.datag(gnd),
	.cin(\Add69~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~101_sumout ),
	.cout(\Add69~102 ),
	.shareout());
defparam \Add69~101 .extended_lut = "off";
defparam \Add69~101 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~101 .shared_arith = "off";

arriav_lcell_comb \Add75~105 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~105_sumout ),
	.datae(gnd),
	.dataf(!\Add71~9_sumout ),
	.datag(gnd),
	.cin(\Add75~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~105_sumout ),
	.cout(\Add75~106 ),
	.shareout());
defparam \Add75~105 .extended_lut = "off";
defparam \Add75~105 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~105 .shared_arith = "off";

arriav_lcell_comb \Add5~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add2~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~73_sumout ),
	.cout(\Add5~74 ),
	.shareout());
defparam \Add5~73 .extended_lut = "off";
defparam \Add5~73 .lut_mask = 64'h000000000000FF00;
defparam \Add5~73 .shared_arith = "off";

arriav_lcell_comb \Add6~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add2~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~78_cout ),
	.sharein(\Add6~79 ),
	.combout(),
	.sumout(\Add6~73_sumout ),
	.cout(\Add6~74 ),
	.shareout(\Add6~75 ));
defparam \Add6~73 .extended_lut = "off";
defparam \Add6~73 .lut_mask = 64'h0000FF00000000FF;
defparam \Add6~73 .shared_arith = "on";

arriav_lcell_comb \Add7~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~73_sumout ),
	.cout(\Add7~74 ),
	.shareout());
defparam \Add7~73 .extended_lut = "off";
defparam \Add7~73 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add7~73 .shared_arith = "off";

arriav_lcell_comb \Add8~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~73_sumout ),
	.cout(\Add8~74 ),
	.shareout());
defparam \Add8~73 .extended_lut = "off";
defparam \Add8~73 .lut_mask = 64'h0000FFFF00000000;
defparam \Add8~73 .shared_arith = "off";

arriav_lcell_comb \Add9~73 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~77_sumout ),
	.datad(!\Add8~77_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~73_sumout ),
	.cout(\Add9~74 ),
	.shareout());
defparam \Add9~73 .extended_lut = "off";
defparam \Add9~73 .lut_mask = 64'h00000000000005AF;
defparam \Add9~73 .shared_arith = "off";

arriav_lcell_comb \Add10~73 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~77_sumout ),
	.datad(!\Add8~77_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~73_sumout ),
	.cout(\Add10~74 ),
	.shareout());
defparam \Add10~73 .extended_lut = "off";
defparam \Add10~73 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~73 .shared_arith = "off";

arriav_lcell_comb \Add11~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\aip1E_4_uid95_sincosTest_o[2]~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~73_sumout ),
	.cout(\Add11~74 ),
	.shareout());
defparam \Add11~73 .extended_lut = "off";
defparam \Add11~73 .lut_mask = 64'h00000000000000FF;
defparam \Add11~73 .shared_arith = "off";

arriav_lcell_comb \Add9~77 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~81_sumout ),
	.datad(!\Add8~81_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add9~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~77_sumout ),
	.cout(\Add9~78 ),
	.shareout());
defparam \Add9~77 .extended_lut = "off";
defparam \Add9~77 .lut_mask = 64'h00000000000005AF;
defparam \Add9~77 .shared_arith = "off";

arriav_lcell_comb \Add10~77 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(gnd),
	.datac(!\Add7~81_sumout ),
	.datad(!\Add8~81_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~82_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add10~77_sumout ),
	.cout(\Add10~78 ),
	.shareout());
defparam \Add10~77 .extended_lut = "off";
defparam \Add10~77 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add10~77 .shared_arith = "off";

arriav_lcell_comb \Add9~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~81_sumout ),
	.cout(\Add9~82 ),
	.shareout());
defparam \Add9~81 .extended_lut = "off";
defparam \Add9~81 .lut_mask = 64'h000000000000FFFF;
defparam \Add9~81 .shared_arith = "off";

arriav_lcell_comb \Add11~77 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add8~1_sumout ),
	.datac(!\Add7~1_sumout ),
	.datad(!\Add9~81_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~77_sumout ),
	.cout(\Add11~78 ),
	.shareout());
defparam \Add11~77 .extended_lut = "off";
defparam \Add11~77 .lut_mask = 64'h000000000000D800;
defparam \Add11~77 .shared_arith = "off";

arriav_lcell_comb \Add13~78 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add13~78_cout ),
	.shareout());
defparam \Add13~78 .extended_lut = "off";
defparam \Add13~78 .lut_mask = 64'h000000000000FFFF;
defparam \Add13~78 .shared_arith = "off";

arriav_lcell_comb \Add41~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~69_sumout ),
	.cout(\Add41~70 ),
	.shareout());
defparam \Add41~69 .extended_lut = "off";
defparam \Add41~69 .lut_mask = 64'h0000FFFF00002277;
defparam \Add41~69 .shared_arith = "off";

arriav_lcell_comb \Add42~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~69_sumout ),
	.cout(\Add42~70 ),
	.shareout());
defparam \Add42~69 .extended_lut = "off";
defparam \Add42~69 .lut_mask = 64'h0000FFFF0000EE44;
defparam \Add42~69 .shared_arith = "off";

arriav_lcell_comb \Add47~77 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[13]~13_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[13]~18_combout ),
	.datag(gnd),
	.cin(\Add47~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~77_sumout ),
	.cout(\Add47~78 ),
	.shareout());
defparam \Add47~77 .extended_lut = "off";
defparam \Add47~77 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~77 .shared_arith = "off";

arriav_lcell_comb \Add49~85 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add49~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~85_sumout ),
	.cout(\Add49~86 ),
	.shareout());
defparam \Add49~85 .extended_lut = "off";
defparam \Add49~85 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~85 .shared_arith = "off";

arriav_lcell_comb \Add55~89 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~45_sumout ),
	.datae(gnd),
	.dataf(!\Add49~89_sumout ),
	.datag(gnd),
	.cin(\Add55~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~89_sumout ),
	.cout(\Add55~90 ),
	.shareout());
defparam \Add55~89 .extended_lut = "off";
defparam \Add55~89 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~89 .shared_arith = "off";

arriav_lcell_comb \Add57~93 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~41_sumout ),
	.datae(gnd),
	.dataf(!\Add55~93_sumout ),
	.datag(gnd),
	.cin(\Add57~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~93_sumout ),
	.cout(\Add57~94 ),
	.shareout());
defparam \Add57~93 .extended_lut = "off";
defparam \Add57~93 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~93 .shared_arith = "off";

arriav_lcell_comb \Add63~97 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~37_sumout ),
	.datae(gnd),
	.dataf(!\Add57~97_sumout ),
	.datag(gnd),
	.cin(\Add63~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~97_sumout ),
	.cout(\Add63~98 ),
	.shareout());
defparam \Add63~97 .extended_lut = "off";
defparam \Add63~97 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~97 .shared_arith = "off";

arriav_lcell_comb \Add65~101 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~33_sumout ),
	.datae(gnd),
	.dataf(!\Add63~101_sumout ),
	.datag(gnd),
	.cin(\Add65~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~101_sumout ),
	.cout(\Add65~102 ),
	.shareout());
defparam \Add65~101 .extended_lut = "off";
defparam \Add65~101 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~101 .shared_arith = "off";

arriav_lcell_comb \Add71~105 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~29_sumout ),
	.datae(gnd),
	.dataf(!\Add65~105_sumout ),
	.datag(gnd),
	.cin(\Add71~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~105_sumout ),
	.cout(\Add71~106 ),
	.shareout());
defparam \Add71~105 .extended_lut = "off";
defparam \Add71~105 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~105 .shared_arith = "off";

arriav_lcell_comb \Add73~109 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~109_sumout ),
	.datae(gnd),
	.dataf(!\Add69~25_sumout ),
	.datag(gnd),
	.cin(\Add73~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~109_sumout ),
	.cout(\Add73~110 ),
	.shareout());
defparam \Add73~109 .extended_lut = "off";
defparam \Add73~109 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~109 .shared_arith = "off";

arriav_lcell_comb \Add44~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~69_sumout ),
	.cout(\Add44~70 ),
	.shareout());
defparam \Add44~69 .extended_lut = "off";
defparam \Add44~69 .lut_mask = 64'h0000FFFF0000EE44;
defparam \Add44~69 .shared_arith = "off";

arriav_lcell_comb \Add43~69 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~69_sumout ),
	.cout(\Add43~70 ),
	.shareout());
defparam \Add43~69 .extended_lut = "off";
defparam \Add43~69 .lut_mask = 64'h0000FFFF000011BB;
defparam \Add43~69 .shared_arith = "off";

arriav_lcell_comb \Add45~77 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[17]~8_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[9]~18_combout ),
	.datag(gnd),
	.cin(\Add45~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~77_sumout ),
	.cout(\Add45~78 ),
	.shareout());
defparam \Add45~77 .extended_lut = "off";
defparam \Add45~77 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~77 .shared_arith = "off";

arriav_lcell_comb \Add51~85 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add51~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~85_sumout ),
	.cout(\Add51~86 ),
	.shareout());
defparam \Add51~85 .extended_lut = "off";
defparam \Add51~85 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~85 .shared_arith = "off";

arriav_lcell_comb \Add53~89 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~17_sumout ),
	.datae(gnd),
	.dataf(!\Add51~89_sumout ),
	.datag(gnd),
	.cin(\Add53~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~89_sumout ),
	.cout(\Add53~90 ),
	.shareout());
defparam \Add53~89 .extended_lut = "off";
defparam \Add53~89 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~89 .shared_arith = "off";

arriav_lcell_comb \Add59~93 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~9_sumout ),
	.datae(gnd),
	.dataf(!\Add53~93_sumout ),
	.datag(gnd),
	.cin(\Add59~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~93_sumout ),
	.cout(\Add59~94 ),
	.shareout());
defparam \Add59~93 .extended_lut = "off";
defparam \Add59~93 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~93 .shared_arith = "off";

arriav_lcell_comb \Add61~97 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~5_sumout ),
	.datae(gnd),
	.dataf(!\Add59~97_sumout ),
	.datag(gnd),
	.cin(\Add61~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~97_sumout ),
	.cout(\Add61~98 ),
	.shareout());
defparam \Add61~97 .extended_lut = "off";
defparam \Add61~97 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~97 .shared_arith = "off";

arriav_lcell_comb \Add67~101 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~5_sumout ),
	.datae(gnd),
	.dataf(!\Add61~101_sumout ),
	.datag(gnd),
	.cin(\Add67~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~101_sumout ),
	.cout(\Add67~102 ),
	.shareout());
defparam \Add67~101 .extended_lut = "off";
defparam \Add67~101 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~101 .shared_arith = "off";

arriav_lcell_comb \Add69~105 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~5_sumout ),
	.datae(gnd),
	.dataf(!\Add67~105_sumout ),
	.datag(gnd),
	.cin(\Add69~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~105_sumout ),
	.cout(\Add69~106 ),
	.shareout());
defparam \Add69~105 .extended_lut = "off";
defparam \Add69~105 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~105 .shared_arith = "off";

arriav_lcell_comb \Add75~109 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~109_sumout ),
	.datae(gnd),
	.dataf(!\Add71~5_sumout ),
	.datag(gnd),
	.cin(\Add75~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~109_sumout ),
	.cout(\Add75~110 ),
	.shareout());
defparam \Add75~109 .extended_lut = "off";
defparam \Add75~109 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~109 .shared_arith = "off";

arriav_lcell_comb \Add6~78 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~82_cout ),
	.sharein(\Add6~83 ),
	.combout(),
	.sumout(),
	.cout(\Add6~78_cout ),
	.shareout(\Add6~79 ));
defparam \Add6~78 .extended_lut = "off";
defparam \Add6~78 .lut_mask = 64'h0000FFFF00000000;
defparam \Add6~78 .shared_arith = "on";

arriav_lcell_comb \Add7~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~77_sumout ),
	.cout(\Add7~78 ),
	.shareout());
defparam \Add7~77 .extended_lut = "off";
defparam \Add7~77 .lut_mask = 64'h0000FFFF00000000;
defparam \Add7~77 .shared_arith = "off";

arriav_lcell_comb \Add8~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~77_sumout ),
	.cout(\Add8~78 ),
	.shareout());
defparam \Add8~77 .extended_lut = "off";
defparam \Add8~77 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add8~77 .shared_arith = "off";

arriav_lcell_comb \Add7~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~81_sumout ),
	.cout(\Add7~82 ),
	.shareout());
defparam \Add7~81 .extended_lut = "off";
defparam \Add7~81 .lut_mask = 64'h000000000000FF00;
defparam \Add7~81 .shared_arith = "off";

arriav_lcell_comb \Add8~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~86_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~81_sumout ),
	.cout(\Add8~82 ),
	.shareout());
defparam \Add8~81 .extended_lut = "off";
defparam \Add8~81 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add8~81 .shared_arith = "off";

arriav_lcell_comb \Add10~82 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add10~86_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add10~82_cout ),
	.shareout());
defparam \Add10~82 .extended_lut = "off";
defparam \Add10~82 .lut_mask = 64'h000000000000FFFF;
defparam \Add10~82 .shared_arith = "off";

arriav_lcell_comb \Add41~73 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~73_sumout ),
	.cout(\Add41~74 ),
	.shareout());
defparam \Add41~73 .extended_lut = "off";
defparam \Add41~73 .lut_mask = 64'h0000888800007722;
defparam \Add41~73 .shared_arith = "off";

arriav_lcell_comb \Add42~73 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~73_sumout ),
	.cout(\Add42~74 ),
	.shareout());
defparam \Add42~73 .extended_lut = "off";
defparam \Add42~73 .lut_mask = 64'h0000777700007722;
defparam \Add42~73 .shared_arith = "off";

arriav_lcell_comb \Add47~81 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[12]~12_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[12]~19_combout ),
	.datag(gnd),
	.cin(\Add47~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~81_sumout ),
	.cout(\Add47~82 ),
	.shareout());
defparam \Add47~81 .extended_lut = "off";
defparam \Add47~81 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~81 .shared_arith = "off";

arriav_lcell_comb \Add49~89 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][10]~q ),
	.datag(gnd),
	.cin(\Add49~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~89_sumout ),
	.cout(\Add49~90 ),
	.shareout());
defparam \Add49~89 .extended_lut = "off";
defparam \Add49~89 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~89 .shared_arith = "off";

arriav_lcell_comb \Add55~93 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~69_sumout ),
	.datae(gnd),
	.dataf(!\Add49~93_sumout ),
	.datag(gnd),
	.cin(\Add55~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~93_sumout ),
	.cout(\Add55~94 ),
	.shareout());
defparam \Add55~93 .extended_lut = "off";
defparam \Add55~93 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~93 .shared_arith = "off";

arriav_lcell_comb \Add57~97 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~69_sumout ),
	.datae(gnd),
	.dataf(!\Add55~97_sumout ),
	.datag(gnd),
	.cin(\Add57~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~97_sumout ),
	.cout(\Add57~98 ),
	.shareout());
defparam \Add57~97 .extended_lut = "off";
defparam \Add57~97 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~97 .shared_arith = "off";

arriav_lcell_comb \Add63~101 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~69_sumout ),
	.datae(gnd),
	.dataf(!\Add57~101_sumout ),
	.datag(gnd),
	.cin(\Add63~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~101_sumout ),
	.cout(\Add63~102 ),
	.shareout());
defparam \Add63~101 .extended_lut = "off";
defparam \Add63~101 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~101 .shared_arith = "off";

arriav_lcell_comb \Add65~105 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~69_sumout ),
	.datae(gnd),
	.dataf(!\Add63~105_sumout ),
	.datag(gnd),
	.cin(\Add65~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~105_sumout ),
	.cout(\Add65~106 ),
	.shareout());
defparam \Add65~105 .extended_lut = "off";
defparam \Add65~105 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~105 .shared_arith = "off";

arriav_lcell_comb \Add71~109 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~69_sumout ),
	.datae(gnd),
	.dataf(!\Add65~109_sumout ),
	.datag(gnd),
	.cin(\Add71~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~109_sumout ),
	.cout(\Add71~110 ),
	.shareout());
defparam \Add71~109 .extended_lut = "off";
defparam \Add71~109 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~109 .shared_arith = "off";

arriav_lcell_comb \Add73~113 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~113_sumout ),
	.datae(gnd),
	.dataf(!\Add69~69_sumout ),
	.datag(gnd),
	.cin(\Add73~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~113_sumout ),
	.cout(\Add73~114 ),
	.shareout());
defparam \Add73~113 .extended_lut = "off";
defparam \Add73~113 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~113 .shared_arith = "off";

arriav_lcell_comb \Add44~73 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~73_sumout ),
	.cout(\Add44~74 ),
	.shareout());
defparam \Add44~73 .extended_lut = "off";
defparam \Add44~73 .lut_mask = 64'h000044EE00004444;
defparam \Add44~73 .shared_arith = "off";

arriav_lcell_comb \Add43~73 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~73_sumout ),
	.cout(\Add43~74 ),
	.shareout());
defparam \Add43~73 .extended_lut = "off";
defparam \Add43~73 .lut_mask = 64'h000044EE0000BBBB;
defparam \Add43~73 .shared_arith = "off";

arriav_lcell_comb \Add45~81 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[16]~7_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[8]~19_combout ),
	.datag(gnd),
	.cin(\Add45~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~81_sumout ),
	.cout(\Add45~82 ),
	.shareout());
defparam \Add45~81 .extended_lut = "off";
defparam \Add45~81 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~81 .shared_arith = "off";

arriav_lcell_comb \Add51~89 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][10]~q ),
	.datag(gnd),
	.cin(\Add51~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~89_sumout ),
	.cout(\Add51~90 ),
	.shareout());
defparam \Add51~89 .extended_lut = "off";
defparam \Add51~89 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~89 .shared_arith = "off";

arriav_lcell_comb \Add53~93 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~69_sumout ),
	.datae(gnd),
	.dataf(!\Add51~93_sumout ),
	.datag(gnd),
	.cin(\Add53~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~93_sumout ),
	.cout(\Add53~94 ),
	.shareout());
defparam \Add53~93 .extended_lut = "off";
defparam \Add53~93 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~93 .shared_arith = "off";

arriav_lcell_comb \Add59~97 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~69_sumout ),
	.datae(gnd),
	.dataf(!\Add53~97_sumout ),
	.datag(gnd),
	.cin(\Add59~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~97_sumout ),
	.cout(\Add59~98 ),
	.shareout());
defparam \Add59~97 .extended_lut = "off";
defparam \Add59~97 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~97 .shared_arith = "off";

arriav_lcell_comb \Add61~101 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~69_sumout ),
	.datae(gnd),
	.dataf(!\Add59~101_sumout ),
	.datag(gnd),
	.cin(\Add61~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~101_sumout ),
	.cout(\Add61~102 ),
	.shareout());
defparam \Add61~101 .extended_lut = "off";
defparam \Add61~101 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~101 .shared_arith = "off";

arriav_lcell_comb \Add67~105 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~69_sumout ),
	.datae(gnd),
	.dataf(!\Add61~105_sumout ),
	.datag(gnd),
	.cin(\Add67~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~105_sumout ),
	.cout(\Add67~106 ),
	.shareout());
defparam \Add67~105 .extended_lut = "off";
defparam \Add67~105 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~105 .shared_arith = "off";

arriav_lcell_comb \Add69~109 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~69_sumout ),
	.datae(gnd),
	.dataf(!\Add67~109_sumout ),
	.datag(gnd),
	.cin(\Add69~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~109_sumout ),
	.cout(\Add69~110 ),
	.shareout());
defparam \Add69~109 .extended_lut = "off";
defparam \Add69~109 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~109 .shared_arith = "off";

arriav_lcell_comb \Add75~113 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~113_sumout ),
	.datae(gnd),
	.dataf(!\Add71~69_sumout ),
	.datag(gnd),
	.cin(\Add75~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~113_sumout ),
	.cout(\Add75~114 ),
	.shareout());
defparam \Add75~113 .extended_lut = "off";
defparam \Add75~113 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~113 .shared_arith = "off";

arriav_lcell_comb \Add6~82 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~86_cout ),
	.sharein(\Add6~87 ),
	.combout(),
	.sumout(),
	.cout(\Add6~82_cout ),
	.shareout(\Add6~83 ));
defparam \Add6~82 .extended_lut = "off";
defparam \Add6~82 .lut_mask = 64'h0000000000000000;
defparam \Add6~82 .shared_arith = "on";

arriav_lcell_comb \Add8~86 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~90_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add8~86_cout ),
	.shareout());
defparam \Add8~86 .extended_lut = "off";
defparam \Add8~86 .lut_mask = 64'h0000FFFF00000000;
defparam \Add8~86 .shared_arith = "off";

arriav_lcell_comb \Add10~86 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add10~86_cout ),
	.shareout());
defparam \Add10~86 .extended_lut = "off";
defparam \Add10~86 .lut_mask = 64'h000000000000FFFF;
defparam \Add10~86 .shared_arith = "off";

arriav_lcell_comb \Add41~77 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~77_sumout ),
	.cout(\Add41~78 ),
	.shareout());
defparam \Add41~77 .extended_lut = "off";
defparam \Add41~77 .lut_mask = 64'h000088880000DD88;
defparam \Add41~77 .shared_arith = "off";

arriav_lcell_comb \Add42~77 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~77_sumout ),
	.cout(\Add42~78 ),
	.shareout());
defparam \Add42~77 .extended_lut = "off";
defparam \Add42~77 .lut_mask = 64'h000077770000DD88;
defparam \Add42~77 .shared_arith = "off";

arriav_lcell_comb \Add47~85 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[11]~16_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[11]~20_combout ),
	.datag(gnd),
	.cin(\Add47~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~85_sumout ),
	.cout(\Add47~86 ),
	.shareout());
defparam \Add47~85 .extended_lut = "off";
defparam \Add47~85 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~85 .shared_arith = "off";

arriav_lcell_comb \Add49~93 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][9]~q ),
	.datag(gnd),
	.cin(\Add49~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~93_sumout ),
	.cout(\Add49~94 ),
	.shareout());
defparam \Add49~93 .extended_lut = "off";
defparam \Add49~93 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~93 .shared_arith = "off";

arriav_lcell_comb \Add55~97 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~73_sumout ),
	.datae(gnd),
	.dataf(!\Add49~97_sumout ),
	.datag(gnd),
	.cin(\Add55~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~97_sumout ),
	.cout(\Add55~98 ),
	.shareout());
defparam \Add55~97 .extended_lut = "off";
defparam \Add55~97 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~97 .shared_arith = "off";

arriav_lcell_comb \Add57~101 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~73_sumout ),
	.datae(gnd),
	.dataf(!\Add55~101_sumout ),
	.datag(gnd),
	.cin(\Add57~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~101_sumout ),
	.cout(\Add57~102 ),
	.shareout());
defparam \Add57~101 .extended_lut = "off";
defparam \Add57~101 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~101 .shared_arith = "off";

arriav_lcell_comb \Add63~105 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~73_sumout ),
	.datae(gnd),
	.dataf(!\Add57~105_sumout ),
	.datag(gnd),
	.cin(\Add63~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~105_sumout ),
	.cout(\Add63~106 ),
	.shareout());
defparam \Add63~105 .extended_lut = "off";
defparam \Add63~105 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~105 .shared_arith = "off";

arriav_lcell_comb \Add65~109 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~73_sumout ),
	.datae(gnd),
	.dataf(!\Add63~109_sumout ),
	.datag(gnd),
	.cin(\Add65~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~109_sumout ),
	.cout(\Add65~110 ),
	.shareout());
defparam \Add65~109 .extended_lut = "off";
defparam \Add65~109 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~109 .shared_arith = "off";

arriav_lcell_comb \Add71~113 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~73_sumout ),
	.datae(gnd),
	.dataf(!\Add65~113_sumout ),
	.datag(gnd),
	.cin(\Add71~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~113_sumout ),
	.cout(\Add71~114 ),
	.shareout());
defparam \Add71~113 .extended_lut = "off";
defparam \Add71~113 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~113 .shared_arith = "off";

arriav_lcell_comb \Add73~117 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add71~117_sumout ),
	.datae(gnd),
	.dataf(!\Add69~73_sumout ),
	.datag(gnd),
	.cin(\Add73~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~117_sumout ),
	.cout(\Add73~118 ),
	.shareout());
defparam \Add73~117 .extended_lut = "off";
defparam \Add73~117 .lut_mask = 64'h00008D72000000FF;
defparam \Add73~117 .shared_arith = "off";

arriav_lcell_comb \Add44~77 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~77_sumout ),
	.cout(\Add44~78 ),
	.shareout());
defparam \Add44~77 .extended_lut = "off";
defparam \Add44~77 .lut_mask = 64'h000011BB00004444;
defparam \Add44~77 .shared_arith = "off";

arriav_lcell_comb \Add43~77 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~77_sumout ),
	.cout(\Add43~78 ),
	.shareout());
defparam \Add43~77 .extended_lut = "off";
defparam \Add43~77 .lut_mask = 64'h000011BB0000BBBB;
defparam \Add43~77 .shared_arith = "off";

arriav_lcell_comb \Add45~85 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[15]~16_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[7]~20_combout ),
	.datag(gnd),
	.cin(\Add45~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~85_sumout ),
	.cout(\Add45~86 ),
	.shareout());
defparam \Add45~85 .extended_lut = "off";
defparam \Add45~85 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~85 .shared_arith = "off";

arriav_lcell_comb \Add51~93 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][9]~q ),
	.datag(gnd),
	.cin(\Add51~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~93_sumout ),
	.cout(\Add51~94 ),
	.shareout());
defparam \Add51~93 .extended_lut = "off";
defparam \Add51~93 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~93 .shared_arith = "off";

arriav_lcell_comb \Add53~97 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~73_sumout ),
	.datae(gnd),
	.dataf(!\Add51~97_sumout ),
	.datag(gnd),
	.cin(\Add53~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~97_sumout ),
	.cout(\Add53~98 ),
	.shareout());
defparam \Add53~97 .extended_lut = "off";
defparam \Add53~97 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~97 .shared_arith = "off";

arriav_lcell_comb \Add59~101 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~73_sumout ),
	.datae(gnd),
	.dataf(!\Add53~101_sumout ),
	.datag(gnd),
	.cin(\Add59~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~101_sumout ),
	.cout(\Add59~102 ),
	.shareout());
defparam \Add59~101 .extended_lut = "off";
defparam \Add59~101 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~101 .shared_arith = "off";

arriav_lcell_comb \Add61~105 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~73_sumout ),
	.datae(gnd),
	.dataf(!\Add59~105_sumout ),
	.datag(gnd),
	.cin(\Add61~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~105_sumout ),
	.cout(\Add61~106 ),
	.shareout());
defparam \Add61~105 .extended_lut = "off";
defparam \Add61~105 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~105 .shared_arith = "off";

arriav_lcell_comb \Add67~109 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~73_sumout ),
	.datae(gnd),
	.dataf(!\Add61~109_sumout ),
	.datag(gnd),
	.cin(\Add67~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~109_sumout ),
	.cout(\Add67~110 ),
	.shareout());
defparam \Add67~109 .extended_lut = "off";
defparam \Add67~109 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~109 .shared_arith = "off";

arriav_lcell_comb \Add69~113 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~73_sumout ),
	.datae(gnd),
	.dataf(!\Add67~113_sumout ),
	.datag(gnd),
	.cin(\Add69~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~113_sumout ),
	.cout(\Add69~114 ),
	.shareout());
defparam \Add69~113 .extended_lut = "off";
defparam \Add69~113 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~113 .shared_arith = "off";

arriav_lcell_comb \Add75~117 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~117_sumout ),
	.datae(gnd),
	.dataf(!\Add71~73_sumout ),
	.datag(gnd),
	.cin(\Add75~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~117_sumout ),
	.cout(\Add75~118 ),
	.shareout());
defparam \Add75~117 .extended_lut = "off";
defparam \Add75~117 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~117 .shared_arith = "off";

arriav_lcell_comb \Add6~86 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~90_cout ),
	.sharein(\Add6~91 ),
	.combout(),
	.sumout(),
	.cout(\Add6~86_cout ),
	.shareout(\Add6~87 ));
defparam \Add6~86 .extended_lut = "off";
defparam \Add6~86 .lut_mask = 64'h0000000000000000;
defparam \Add6~86 .shared_arith = "on";

arriav_lcell_comb \Add8~90 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~94_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add8~90_cout ),
	.shareout());
defparam \Add8~90 .extended_lut = "off";
defparam \Add8~90 .lut_mask = 64'h000000000000FFFF;
defparam \Add8~90 .shared_arith = "off";

arriav_lcell_comb \Add41~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~81_sumout ),
	.cout(\Add41~82 ),
	.shareout());
defparam \Add41~81 .extended_lut = "off";
defparam \Add41~81 .lut_mask = 64'h0000FFFF00000000;
defparam \Add41~81 .shared_arith = "off";

arriav_lcell_comb \Add42~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~81_sumout ),
	.cout(\Add42~82 ),
	.shareout());
defparam \Add42~81 .extended_lut = "off";
defparam \Add42~81 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add42~81 .shared_arith = "off";

arriav_lcell_comb \Add47~89 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[10]~17_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[10]~21_combout ),
	.datag(gnd),
	.cin(\Add47~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~89_sumout ),
	.cout(\Add47~90 ),
	.shareout());
defparam \Add47~89 .extended_lut = "off";
defparam \Add47~89 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~89 .shared_arith = "off";

arriav_lcell_comb \Add49~97 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][8]~q ),
	.datag(gnd),
	.cin(\Add49~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~97_sumout ),
	.cout(\Add49~98 ),
	.shareout());
defparam \Add49~97 .extended_lut = "off";
defparam \Add49~97 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~97 .shared_arith = "off";

arriav_lcell_comb \Add55~101 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~77_sumout ),
	.datae(gnd),
	.dataf(!\Add49~101_sumout ),
	.datag(gnd),
	.cin(\Add55~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~101_sumout ),
	.cout(\Add55~102 ),
	.shareout());
defparam \Add55~101 .extended_lut = "off";
defparam \Add55~101 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~101 .shared_arith = "off";

arriav_lcell_comb \Add57~105 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~77_sumout ),
	.datae(gnd),
	.dataf(!\Add55~105_sumout ),
	.datag(gnd),
	.cin(\Add57~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~105_sumout ),
	.cout(\Add57~106 ),
	.shareout());
defparam \Add57~105 .extended_lut = "off";
defparam \Add57~105 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~105 .shared_arith = "off";

arriav_lcell_comb \Add63~109 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~77_sumout ),
	.datae(gnd),
	.dataf(!\Add57~109_sumout ),
	.datag(gnd),
	.cin(\Add63~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~109_sumout ),
	.cout(\Add63~110 ),
	.shareout());
defparam \Add63~109 .extended_lut = "off";
defparam \Add63~109 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~109 .shared_arith = "off";

arriav_lcell_comb \Add65~113 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~77_sumout ),
	.datae(gnd),
	.dataf(!\Add63~113_sumout ),
	.datag(gnd),
	.cin(\Add65~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~113_sumout ),
	.cout(\Add65~114 ),
	.shareout());
defparam \Add65~113 .extended_lut = "off";
defparam \Add65~113 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~113 .shared_arith = "off";

arriav_lcell_comb \Add71~117 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add67~77_sumout ),
	.datae(gnd),
	.dataf(!\Add65~117_sumout ),
	.datag(gnd),
	.cin(\Add71~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~117_sumout ),
	.cout(\Add71~118 ),
	.shareout());
defparam \Add71~117 .extended_lut = "off";
defparam \Add71~117 .lut_mask = 64'h0000FF000000728D;
defparam \Add71~117 .shared_arith = "off";

arriav_lcell_comb \Add73~121 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\Add69~77_sumout ),
	.datad(!\Add71~121_sumout ),
	.datae(gnd),
	.dataf(!\Add24~0_combout ),
	.datag(gnd),
	.cin(\Add73~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~121_sumout ),
	.cout(\Add73~122 ),
	.shareout());
defparam \Add73~121 .extended_lut = "off";
defparam \Add73~121 .lut_mask = 64'h0000B41E000000FF;
defparam \Add73~121 .shared_arith = "off";

arriav_lcell_comb \Add44~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~81_sumout ),
	.cout(\Add44~82 ),
	.shareout());
defparam \Add44~81 .extended_lut = "off";
defparam \Add44~81 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add44~81 .shared_arith = "off";

arriav_lcell_comb \Add43~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~81_sumout ),
	.cout(\Add43~82 ),
	.shareout());
defparam \Add43~81 .extended_lut = "off";
defparam \Add43~81 .lut_mask = 64'h0000FFFF00000000;
defparam \Add43~81 .shared_arith = "off";

arriav_lcell_comb \Add45~89 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[14]~17_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[6]~21_combout ),
	.datag(gnd),
	.cin(\Add45~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~89_sumout ),
	.cout(\Add45~90 ),
	.shareout());
defparam \Add45~89 .extended_lut = "off";
defparam \Add45~89 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~89 .shared_arith = "off";

arriav_lcell_comb \Add51~97 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][8]~q ),
	.datag(gnd),
	.cin(\Add51~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~97_sumout ),
	.cout(\Add51~98 ),
	.shareout());
defparam \Add51~97 .extended_lut = "off";
defparam \Add51~97 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~97 .shared_arith = "off";

arriav_lcell_comb \Add53~101 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~77_sumout ),
	.datae(gnd),
	.dataf(!\Add51~101_sumout ),
	.datag(gnd),
	.cin(\Add53~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~101_sumout ),
	.cout(\Add53~102 ),
	.shareout());
defparam \Add53~101 .extended_lut = "off";
defparam \Add53~101 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~101 .shared_arith = "off";

arriav_lcell_comb \Add59~105 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~77_sumout ),
	.datae(gnd),
	.dataf(!\Add53~105_sumout ),
	.datag(gnd),
	.cin(\Add59~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~105_sumout ),
	.cout(\Add59~106 ),
	.shareout());
defparam \Add59~105 .extended_lut = "off";
defparam \Add59~105 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~105 .shared_arith = "off";

arriav_lcell_comb \Add61~109 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~77_sumout ),
	.datae(gnd),
	.dataf(!\Add59~109_sumout ),
	.datag(gnd),
	.cin(\Add61~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~109_sumout ),
	.cout(\Add61~110 ),
	.shareout());
defparam \Add61~109 .extended_lut = "off";
defparam \Add61~109 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~109 .shared_arith = "off";

arriav_lcell_comb \Add67~113 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~77_sumout ),
	.datae(gnd),
	.dataf(!\Add61~113_sumout ),
	.datag(gnd),
	.cin(\Add67~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~113_sumout ),
	.cout(\Add67~114 ),
	.shareout());
defparam \Add67~113 .extended_lut = "off";
defparam \Add67~113 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~113 .shared_arith = "off";

arriav_lcell_comb \Add69~117 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~77_sumout ),
	.datae(gnd),
	.dataf(!\Add67~117_sumout ),
	.datag(gnd),
	.cin(\Add69~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~117_sumout ),
	.cout(\Add69~118 ),
	.shareout());
defparam \Add69~117 .extended_lut = "off";
defparam \Add69~117 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~117 .shared_arith = "off";

arriav_lcell_comb \Add75~121 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~121_sumout ),
	.datae(gnd),
	.dataf(!\Add71~77_sumout ),
	.datag(gnd),
	.cin(\Add75~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~121_sumout ),
	.cout(\Add75~122 ),
	.shareout());
defparam \Add75~121 .extended_lut = "off";
defparam \Add75~121 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~121 .shared_arith = "off";

arriav_lcell_comb \Add6~90 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add6~90_cout ),
	.shareout(\Add6~91 ));
defparam \Add6~90 .extended_lut = "off";
defparam \Add6~90 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add6~90 .shared_arith = "on";

arriav_lcell_comb \Add8~94 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add8~94_cout ),
	.shareout());
defparam \Add8~94 .extended_lut = "off";
defparam \Add8~94 .lut_mask = 64'h000000000000FFFF;
defparam \Add8~94 .shared_arith = "off";

arriav_lcell_comb \Add41~85 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add41~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~85_sumout ),
	.cout(\Add41~86 ),
	.shareout());
defparam \Add41~85 .extended_lut = "off";
defparam \Add41~85 .lut_mask = 64'h00005F0A00000A0A;
defparam \Add41~85 .shared_arith = "off";

arriav_lcell_comb \Add42~85 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add42~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~85_sumout ),
	.cout(\Add42~86 ),
	.shareout());
defparam \Add42~85 .extended_lut = "off";
defparam \Add42~85 .lut_mask = 64'h0000A0F500000A0A;
defparam \Add42~85 .shared_arith = "off";

arriav_lcell_comb \Add47~93 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[9]~18_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[9]~22_combout ),
	.datag(gnd),
	.cin(\Add47~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~93_sumout ),
	.cout(\Add47~94 ),
	.shareout());
defparam \Add47~93 .extended_lut = "off";
defparam \Add47~93 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~93 .shared_arith = "off";

arriav_lcell_comb \Add49~101 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][7]~q ),
	.datag(gnd),
	.cin(\Add49~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~101_sumout ),
	.cout(\Add49~102 ),
	.shareout());
defparam \Add49~101 .extended_lut = "off";
defparam \Add49~101 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~101 .shared_arith = "off";

arriav_lcell_comb \Add55~105 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~81_sumout ),
	.datae(gnd),
	.dataf(!\Add49~105_sumout ),
	.datag(gnd),
	.cin(\Add55~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~105_sumout ),
	.cout(\Add55~106 ),
	.shareout());
defparam \Add55~105 .extended_lut = "off";
defparam \Add55~105 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~105 .shared_arith = "off";

arriav_lcell_comb \Add57~109 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~81_sumout ),
	.datae(gnd),
	.dataf(!\Add55~109_sumout ),
	.datag(gnd),
	.cin(\Add57~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~109_sumout ),
	.cout(\Add57~110 ),
	.shareout());
defparam \Add57~109 .extended_lut = "off";
defparam \Add57~109 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~109 .shared_arith = "off";

arriav_lcell_comb \Add63~113 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~81_sumout ),
	.datae(gnd),
	.dataf(!\Add57~113_sumout ),
	.datag(gnd),
	.cin(\Add63~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~113_sumout ),
	.cout(\Add63~114 ),
	.shareout());
defparam \Add63~113 .extended_lut = "off";
defparam \Add63~113 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~113 .shared_arith = "off";

arriav_lcell_comb \Add65~117 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~81_sumout ),
	.datae(gnd),
	.dataf(!\Add63~117_sumout ),
	.datag(gnd),
	.cin(\Add65~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~117_sumout ),
	.cout(\Add65~118 ),
	.shareout());
defparam \Add65~117 .extended_lut = "off";
defparam \Add65~117 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~117 .shared_arith = "off";

arriav_lcell_comb \Add71~121 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add67~81_sumout ),
	.datad(!\Add22~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~121_sumout ),
	.datag(gnd),
	.cin(\Add71~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~121_sumout ),
	.cout(\Add71~122 ),
	.shareout());
defparam \Add71~121 .extended_lut = "off";
defparam \Add71~121 .lut_mask = 64'h0000FF0000004BE1;
defparam \Add71~121 .shared_arith = "off";

arriav_lcell_comb \Add73~125 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\Add69~81_sumout ),
	.datad(!\Add71~125_sumout ),
	.datae(gnd),
	.dataf(!\Add24~0_combout ),
	.datag(gnd),
	.cin(\Add73~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~125_sumout ),
	.cout(\Add73~126 ),
	.shareout());
defparam \Add73~125 .extended_lut = "off";
defparam \Add73~125 .lut_mask = 64'h0000B41E000000FF;
defparam \Add73~125 .shared_arith = "off";

arriav_lcell_comb \Add44~85 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~85_sumout ),
	.cout(\Add44~86 ),
	.shareout());
defparam \Add44~85 .extended_lut = "off";
defparam \Add44~85 .lut_mask = 64'h000050FA00000505;
defparam \Add44~85 .shared_arith = "off";

arriav_lcell_comb \Add43~85 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~85_sumout ),
	.cout(\Add43~86 ),
	.shareout());
defparam \Add43~85 .extended_lut = "off";
defparam \Add43~85 .lut_mask = 64'h0000AF0500000505;
defparam \Add43~85 .shared_arith = "off";

arriav_lcell_comb \Add45~93 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[13]~18_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[5]~22_combout ),
	.datag(gnd),
	.cin(\Add45~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~93_sumout ),
	.cout(\Add45~94 ),
	.shareout());
defparam \Add45~93 .extended_lut = "off";
defparam \Add45~93 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~93 .shared_arith = "off";

arriav_lcell_comb \Add51~101 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][7]~q ),
	.datag(gnd),
	.cin(\Add51~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~101_sumout ),
	.cout(\Add51~102 ),
	.shareout());
defparam \Add51~101 .extended_lut = "off";
defparam \Add51~101 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~101 .shared_arith = "off";

arriav_lcell_comb \Add53~105 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~81_sumout ),
	.datae(gnd),
	.dataf(!\Add51~105_sumout ),
	.datag(gnd),
	.cin(\Add53~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~105_sumout ),
	.cout(\Add53~106 ),
	.shareout());
defparam \Add53~105 .extended_lut = "off";
defparam \Add53~105 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~105 .shared_arith = "off";

arriav_lcell_comb \Add59~109 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~81_sumout ),
	.datae(gnd),
	.dataf(!\Add53~109_sumout ),
	.datag(gnd),
	.cin(\Add59~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~109_sumout ),
	.cout(\Add59~110 ),
	.shareout());
defparam \Add59~109 .extended_lut = "off";
defparam \Add59~109 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~109 .shared_arith = "off";

arriav_lcell_comb \Add61~113 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~81_sumout ),
	.datae(gnd),
	.dataf(!\Add59~113_sumout ),
	.datag(gnd),
	.cin(\Add61~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~113_sumout ),
	.cout(\Add61~114 ),
	.shareout());
defparam \Add61~113 .extended_lut = "off";
defparam \Add61~113 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~113 .shared_arith = "off";

arriav_lcell_comb \Add67~117 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add63~81_sumout ),
	.datae(gnd),
	.dataf(!\Add61~117_sumout ),
	.datag(gnd),
	.cin(\Add67~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~117_sumout ),
	.cout(\Add67~118 ),
	.shareout());
defparam \Add67~117 .extended_lut = "off";
defparam \Add67~117 .lut_mask = 64'h0000FF0000008D72;
defparam \Add67~117 .shared_arith = "off";

arriav_lcell_comb \Add69~121 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~81_sumout ),
	.datae(gnd),
	.dataf(!\Add67~121_sumout ),
	.datag(gnd),
	.cin(\Add69~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~121_sumout ),
	.cout(\Add69~122 ),
	.shareout());
defparam \Add69~121 .extended_lut = "off";
defparam \Add69~121 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~121 .shared_arith = "off";

arriav_lcell_comb \Add75~125 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add24~0_combout ),
	.datac(!\Add23~5_sumout ),
	.datad(!\Add69~125_sumout ),
	.datae(gnd),
	.dataf(!\Add71~81_sumout ),
	.datag(gnd),
	.cin(\Add75~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~125_sumout ),
	.cout(\Add75~126 ),
	.shareout());
defparam \Add75~125 .extended_lut = "off";
defparam \Add75~125 .lut_mask = 64'h0000728D000000FF;
defparam \Add75~125 .shared_arith = "off";

arriav_lcell_comb \Add41~89 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add5~1_sumout ),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~89_sumout ),
	.cout(\Add41~90 ),
	.shareout());
defparam \Add41~89 .extended_lut = "off";
defparam \Add41~89 .lut_mask = 64'h000055550000FA50;
defparam \Add41~89 .shared_arith = "off";

arriav_lcell_comb \Add42~89 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~89_sumout ),
	.cout(\Add42~90 ),
	.shareout());
defparam \Add42~89 .extended_lut = "off";
defparam \Add42~89 .lut_mask = 64'h0000555500000A5F;
defparam \Add42~89 .shared_arith = "off";

arriav_lcell_comb \Add47~97 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[8]~19_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[8]~23_combout ),
	.datag(gnd),
	.cin(\Add47~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~97_sumout ),
	.cout(\Add47~98 ),
	.shareout());
defparam \Add47~97 .extended_lut = "off";
defparam \Add47~97 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~97 .shared_arith = "off";

arriav_lcell_comb \Add49~105 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add49~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~105_sumout ),
	.cout(\Add49~106 ),
	.shareout());
defparam \Add49~105 .extended_lut = "off";
defparam \Add49~105 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~105 .shared_arith = "off";

arriav_lcell_comb \Add55~109 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~85_sumout ),
	.datae(gnd),
	.dataf(!\Add49~109_sumout ),
	.datag(gnd),
	.cin(\Add55~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~109_sumout ),
	.cout(\Add55~110 ),
	.shareout());
defparam \Add55~109 .extended_lut = "off";
defparam \Add55~109 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~109 .shared_arith = "off";

arriav_lcell_comb \Add57~113 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~85_sumout ),
	.datae(gnd),
	.dataf(!\Add55~113_sumout ),
	.datag(gnd),
	.cin(\Add57~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~113_sumout ),
	.cout(\Add57~114 ),
	.shareout());
defparam \Add57~113 .extended_lut = "off";
defparam \Add57~113 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~113 .shared_arith = "off";

arriav_lcell_comb \Add63~117 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~85_sumout ),
	.datae(gnd),
	.dataf(!\Add57~117_sumout ),
	.datag(gnd),
	.cin(\Add63~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~117_sumout ),
	.cout(\Add63~118 ),
	.shareout());
defparam \Add63~117 .extended_lut = "off";
defparam \Add63~117 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~117 .shared_arith = "off";

arriav_lcell_comb \Add65~121 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~85_sumout ),
	.datae(gnd),
	.dataf(!\Add63~121_sumout ),
	.datag(gnd),
	.cin(\Add65~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~121_sumout ),
	.cout(\Add65~122 ),
	.shareout());
defparam \Add65~121 .extended_lut = "off";
defparam \Add65~121 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~121 .shared_arith = "off";

arriav_lcell_comb \Add71~125 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add67~85_sumout ),
	.datad(!\Add22~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~125_sumout ),
	.datag(gnd),
	.cin(\Add71~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~125_sumout ),
	.cout(\Add71~126 ),
	.shareout());
defparam \Add71~125 .extended_lut = "off";
defparam \Add71~125 .lut_mask = 64'h0000FF0000004BE1;
defparam \Add71~125 .shared_arith = "off";

arriav_lcell_comb \Add73~129 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\Add69~85_sumout ),
	.datad(!\Add71~129_sumout ),
	.datae(gnd),
	.dataf(!\Add24~0_combout ),
	.datag(gnd),
	.cin(\Add73~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add73~129_sumout ),
	.cout(\Add73~130 ),
	.shareout());
defparam \Add73~129 .extended_lut = "off";
defparam \Add73~129 .lut_mask = 64'h0000B41E000000FF;
defparam \Add73~129 .shared_arith = "off";

arriav_lcell_comb \Add44~89 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~89_sumout ),
	.cout(\Add44~90 ),
	.shareout());
defparam \Add44~89 .extended_lut = "off";
defparam \Add44~89 .lut_mask = 64'h0000AAAA00000A5F;
defparam \Add44~89 .shared_arith = "off";

arriav_lcell_comb \Add43~89 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~89_sumout ),
	.cout(\Add43~90 ),
	.shareout());
defparam \Add43~89 .extended_lut = "off";
defparam \Add43~89 .lut_mask = 64'h0000AAAA0000F5A0;
defparam \Add43~89 .shared_arith = "off";

arriav_lcell_comb \Add45~97 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[12]~19_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[4]~23_combout ),
	.datag(gnd),
	.cin(\Add45~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~97_sumout ),
	.cout(\Add45~98 ),
	.shareout());
defparam \Add45~97 .extended_lut = "off";
defparam \Add45~97 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~97 .shared_arith = "off";

arriav_lcell_comb \Add51~105 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add51~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~105_sumout ),
	.cout(\Add51~106 ),
	.shareout());
defparam \Add51~105 .extended_lut = "off";
defparam \Add51~105 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~105 .shared_arith = "off";

arriav_lcell_comb \Add53~109 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~85_sumout ),
	.datae(gnd),
	.dataf(!\Add51~109_sumout ),
	.datag(gnd),
	.cin(\Add53~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~109_sumout ),
	.cout(\Add53~110 ),
	.shareout());
defparam \Add53~109 .extended_lut = "off";
defparam \Add53~109 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~109 .shared_arith = "off";

arriav_lcell_comb \Add59~113 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~85_sumout ),
	.datae(gnd),
	.dataf(!\Add53~113_sumout ),
	.datag(gnd),
	.cin(\Add59~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~113_sumout ),
	.cout(\Add59~114 ),
	.shareout());
defparam \Add59~113 .extended_lut = "off";
defparam \Add59~113 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~113 .shared_arith = "off";

arriav_lcell_comb \Add61~117 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~85_sumout ),
	.datae(gnd),
	.dataf(!\Add59~117_sumout ),
	.datag(gnd),
	.cin(\Add61~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~117_sumout ),
	.cout(\Add61~118 ),
	.shareout());
defparam \Add61~117 .extended_lut = "off";
defparam \Add61~117 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~117 .shared_arith = "off";

arriav_lcell_comb \Add67~121 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\Add63~85_sumout ),
	.datad(!\Add20~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~121_sumout ),
	.datag(gnd),
	.cin(\Add67~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~121_sumout ),
	.cout(\Add67~122 ),
	.shareout());
defparam \Add67~121 .extended_lut = "off";
defparam \Add67~121 .lut_mask = 64'h0000FF000000B41E;
defparam \Add67~121 .shared_arith = "off";

arriav_lcell_comb \Add69~125 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add22~0_combout ),
	.datac(!\Add21~1_sumout ),
	.datad(!\Add65~85_sumout ),
	.datae(gnd),
	.dataf(!\Add67~125_sumout ),
	.datag(gnd),
	.cin(\Add69~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~125_sumout ),
	.cout(\Add69~126 ),
	.shareout());
defparam \Add69~125 .extended_lut = "off";
defparam \Add69~125 .lut_mask = 64'h0000FF0000008D72;
defparam \Add69~125 .shared_arith = "off";

arriav_lcell_comb \Add75~129 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\Add24~0_combout ),
	.datad(!\Add69~129_sumout ),
	.datae(gnd),
	.dataf(!\Add71~85_sumout ),
	.datag(gnd),
	.cin(\Add75~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add75~129_sumout ),
	.cout(\Add75~130 ),
	.shareout());
defparam \Add75~129 .extended_lut = "off";
defparam \Add75~129 .lut_mask = 64'h00004EB1000000FF;
defparam \Add75~129 .shared_arith = "off";

arriav_lcell_comb \Add41~93 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~93_sumout ),
	.cout(\Add41~94 ),
	.shareout());
defparam \Add41~93 .extended_lut = "off";
defparam \Add41~93 .lut_mask = 64'h0000FFFF0000FFAA;
defparam \Add41~93 .shared_arith = "off";

arriav_lcell_comb \Add42~93 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~93_sumout ),
	.cout(\Add42~94 ),
	.shareout());
defparam \Add42~93 .extended_lut = "off";
defparam \Add42~93 .lut_mask = 64'h000000000000FFAA;
defparam \Add42~93 .shared_arith = "off";

arriav_lcell_comb \Add47~101 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[7]~20_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[7]~24_combout ),
	.datag(gnd),
	.cin(\Add47~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~101_sumout ),
	.cout(\Add47~102 ),
	.shareout());
defparam \Add47~101 .extended_lut = "off";
defparam \Add47~101 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~101 .shared_arith = "off";

arriav_lcell_comb \Add49~109 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add49~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~109_sumout ),
	.cout(\Add49~110 ),
	.shareout());
defparam \Add49~109 .extended_lut = "off";
defparam \Add49~109 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~109 .shared_arith = "off";

arriav_lcell_comb \Add55~113 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~89_sumout ),
	.datae(gnd),
	.dataf(!\Add49~113_sumout ),
	.datag(gnd),
	.cin(\Add55~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~113_sumout ),
	.cout(\Add55~114 ),
	.shareout());
defparam \Add55~113 .extended_lut = "off";
defparam \Add55~113 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~113 .shared_arith = "off";

arriav_lcell_comb \Add57~117 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~89_sumout ),
	.datae(gnd),
	.dataf(!\Add55~117_sumout ),
	.datag(gnd),
	.cin(\Add57~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~117_sumout ),
	.cout(\Add57~118 ),
	.shareout());
defparam \Add57~117 .extended_lut = "off";
defparam \Add57~117 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~117 .shared_arith = "off";

arriav_lcell_comb \Add63~121 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~89_sumout ),
	.datae(gnd),
	.dataf(!\Add57~121_sumout ),
	.datag(gnd),
	.cin(\Add63~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~121_sumout ),
	.cout(\Add63~122 ),
	.shareout());
defparam \Add63~121 .extended_lut = "off";
defparam \Add63~121 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~121 .shared_arith = "off";

arriav_lcell_comb \Add65~125 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add20~0_combout ),
	.datac(!\Add19~1_sumout ),
	.datad(!\Add61~89_sumout ),
	.datae(gnd),
	.dataf(!\Add63~125_sumout ),
	.datag(gnd),
	.cin(\Add65~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~125_sumout ),
	.cout(\Add65~126 ),
	.shareout());
defparam \Add65~125 .extended_lut = "off";
defparam \Add65~125 .lut_mask = 64'h0000FF000000728D;
defparam \Add65~125 .shared_arith = "off";

arriav_lcell_comb \Add71~129 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add67~89_sumout ),
	.datad(!\Add22~0_combout ),
	.datae(gnd),
	.dataf(!\Add65~129_sumout ),
	.datag(gnd),
	.cin(\Add71~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add71~129_sumout ),
	.cout(\Add71~130 ),
	.shareout());
defparam \Add71~129 .extended_lut = "off";
defparam \Add71~129 .lut_mask = 64'h0000FF0000004BE1;
defparam \Add71~129 .shared_arith = "off";

arriav_lcell_comb \Add73~134 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\aip1E_10high_uid196_sincosTest_o[13]~0_combout ),
	.datad(!\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add73~134_cout ),
	.shareout());
defparam \Add73~134 .extended_lut = "off";
defparam \Add73~134 .lut_mask = 64'h0000000000004EE4;
defparam \Add73~134 .shared_arith = "off";

arriav_lcell_comb \Add44~93 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~93_sumout ),
	.cout(\Add44~94 ),
	.shareout());
defparam \Add44~93 .extended_lut = "off";
defparam \Add44~93 .lut_mask = 64'h000000AA0000FFFF;
defparam \Add44~93 .shared_arith = "off";

arriav_lcell_comb \Add43~93 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~93_sumout ),
	.cout(\Add43~94 ),
	.shareout());
defparam \Add43~93 .extended_lut = "off";
defparam \Add43~93 .lut_mask = 64'h000000AA00000000;
defparam \Add43~93 .shared_arith = "off";

arriav_lcell_comb \Add45~101 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[11]~20_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[3]~24_combout ),
	.datag(gnd),
	.cin(\Add45~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~101_sumout ),
	.cout(\Add45~102 ),
	.shareout());
defparam \Add45~101 .extended_lut = "off";
defparam \Add45~101 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~101 .shared_arith = "off";

arriav_lcell_comb \Add51~109 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add51~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~109_sumout ),
	.cout(\Add51~110 ),
	.shareout());
defparam \Add51~109 .extended_lut = "off";
defparam \Add51~109 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~109 .shared_arith = "off";

arriav_lcell_comb \Add53~113 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~89_sumout ),
	.datae(gnd),
	.dataf(!\Add51~113_sumout ),
	.datag(gnd),
	.cin(\Add53~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~113_sumout ),
	.cout(\Add53~114 ),
	.shareout());
defparam \Add53~113 .extended_lut = "off";
defparam \Add53~113 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~113 .shared_arith = "off";

arriav_lcell_comb \Add59~117 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~89_sumout ),
	.datae(gnd),
	.dataf(!\Add53~117_sumout ),
	.datag(gnd),
	.cin(\Add59~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~117_sumout ),
	.cout(\Add59~118 ),
	.shareout());
defparam \Add59~117 .extended_lut = "off";
defparam \Add59~117 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~117 .shared_arith = "off";

arriav_lcell_comb \Add61~121 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~89_sumout ),
	.datae(gnd),
	.dataf(!\Add59~121_sumout ),
	.datag(gnd),
	.cin(\Add61~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~121_sumout ),
	.cout(\Add61~122 ),
	.shareout());
defparam \Add61~121 .extended_lut = "off";
defparam \Add61~121 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~121 .shared_arith = "off";

arriav_lcell_comb \Add67~125 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\Add63~89_sumout ),
	.datad(!\Add20~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~125_sumout ),
	.datag(gnd),
	.cin(\Add67~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~125_sumout ),
	.cout(\Add67~126 ),
	.shareout());
defparam \Add67~125 .extended_lut = "off";
defparam \Add67~125 .lut_mask = 64'h0000FF000000B41E;
defparam \Add67~125 .shared_arith = "off";

arriav_lcell_comb \Add69~129 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add22~0_combout ),
	.datad(!\Add65~89_sumout ),
	.datae(gnd),
	.dataf(!\Add67~129_sumout ),
	.datag(gnd),
	.cin(\Add69~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add69~129_sumout ),
	.cout(\Add69~130 ),
	.shareout());
defparam \Add69~129 .extended_lut = "off";
defparam \Add69~129 .lut_mask = 64'h0000FF000000B14E;
defparam \Add69~129 .shared_arith = "off";

arriav_lcell_comb \Add75~134 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.datad(!\aip1E_10high_uid196_sincosTest_o[13]~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add75~134_cout ),
	.shareout());
defparam \Add75~134 .extended_lut = "off";
defparam \Add75~134 .lut_mask = 64'h000000000000B11B;
defparam \Add75~134 .shared_arith = "off";

arriav_lcell_comb \Add41~97 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add41~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~97_sumout ),
	.cout(\Add41~98 ),
	.shareout());
defparam \Add41~97 .extended_lut = "off";
defparam \Add41~97 .lut_mask = 64'h0000FFAA0000FF55;
defparam \Add41~97 .shared_arith = "off";

arriav_lcell_comb \Add42~97 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(!\Add5~1_sumout ),
	.datag(gnd),
	.cin(\Add42~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~97_sumout ),
	.cout(\Add42~98 ),
	.shareout());
defparam \Add42~97 .extended_lut = "off";
defparam \Add42~97 .lut_mask = 64'h000000550000FF55;
defparam \Add42~97 .shared_arith = "off";

arriav_lcell_comb \Add47~105 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[6]~21_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[6]~25_combout ),
	.datag(gnd),
	.cin(\Add47~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~105_sumout ),
	.cout(\Add47~106 ),
	.shareout());
defparam \Add47~105 .extended_lut = "off";
defparam \Add47~105 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~105 .shared_arith = "off";

arriav_lcell_comb \Add49~113 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add49~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~113_sumout ),
	.cout(\Add49~114 ),
	.shareout());
defparam \Add49~113 .extended_lut = "off";
defparam \Add49~113 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~113 .shared_arith = "off";

arriav_lcell_comb \Add55~117 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~93_sumout ),
	.datae(gnd),
	.dataf(!\Add49~117_sumout ),
	.datag(gnd),
	.cin(\Add55~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~117_sumout ),
	.cout(\Add55~118 ),
	.shareout());
defparam \Add55~117 .extended_lut = "off";
defparam \Add55~117 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~117 .shared_arith = "off";

arriav_lcell_comb \Add57~121 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~93_sumout ),
	.datae(gnd),
	.dataf(!\Add55~121_sumout ),
	.datag(gnd),
	.cin(\Add57~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~121_sumout ),
	.cout(\Add57~122 ),
	.shareout());
defparam \Add57~121 .extended_lut = "off";
defparam \Add57~121 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~121 .shared_arith = "off";

arriav_lcell_comb \Add63~125 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add59~93_sumout ),
	.datae(gnd),
	.dataf(!\Add57~125_sumout ),
	.datag(gnd),
	.cin(\Add63~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~125_sumout ),
	.cout(\Add63~126 ),
	.shareout());
defparam \Add63~125 .extended_lut = "off";
defparam \Add63~125 .lut_mask = 64'h0000FF000000D827;
defparam \Add63~125 .shared_arith = "off";

arriav_lcell_comb \Add65~129 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\Add20~0_combout ),
	.datad(!\Add61~93_sumout ),
	.datae(gnd),
	.dataf(!\Add63~129_sumout ),
	.datag(gnd),
	.cin(\Add65~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add65~129_sumout ),
	.cout(\Add65~130 ),
	.shareout());
defparam \Add65~129 .extended_lut = "off";
defparam \Add65~129 .lut_mask = 64'h0000FF0000004EB1;
defparam \Add65~129 .shared_arith = "off";

arriav_lcell_comb \Add71~134 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\aip1E_9high_uid177_sincosTest_o[14]~0_combout ),
	.datad(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add71~134_cout ),
	.shareout());
defparam \Add71~134 .extended_lut = "off";
defparam \Add71~134 .lut_mask = 64'h0000000000004EE4;
defparam \Add71~134 .shared_arith = "off";

arriav_lcell_comb \Add44~97 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~97_sumout ),
	.cout(\Add44~98 ),
	.shareout());
defparam \Add44~97 .extended_lut = "off";
defparam \Add44~97 .lut_mask = 64'h000000AA0000FFAA;
defparam \Add44~97 .shared_arith = "off";

arriav_lcell_comb \Add43~97 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~97_sumout ),
	.cout(\Add43~98 ),
	.shareout());
defparam \Add43~97 .extended_lut = "off";
defparam \Add43~97 .lut_mask = 64'h0000FF550000FFAA;
defparam \Add43~97 .shared_arith = "off";

arriav_lcell_comb \Add45~105 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[10]~21_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[2]~25_combout ),
	.datag(gnd),
	.cin(\Add45~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~105_sumout ),
	.cout(\Add45~106 ),
	.shareout());
defparam \Add45~105 .extended_lut = "off";
defparam \Add45~105 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~105 .shared_arith = "off";

arriav_lcell_comb \Add51~113 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add51~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~113_sumout ),
	.cout(\Add51~114 ),
	.shareout());
defparam \Add51~113 .extended_lut = "off";
defparam \Add51~113 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~113 .shared_arith = "off";

arriav_lcell_comb \Add53~117 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~93_sumout ),
	.datae(gnd),
	.dataf(!\Add51~117_sumout ),
	.datag(gnd),
	.cin(\Add53~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~117_sumout ),
	.cout(\Add53~118 ),
	.shareout());
defparam \Add53~117 .extended_lut = "off";
defparam \Add53~117 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~117 .shared_arith = "off";

arriav_lcell_comb \Add59~121 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~93_sumout ),
	.datae(gnd),
	.dataf(!\Add53~121_sumout ),
	.datag(gnd),
	.cin(\Add59~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~121_sumout ),
	.cout(\Add59~122 ),
	.shareout());
defparam \Add59~121 .extended_lut = "off";
defparam \Add59~121 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~121 .shared_arith = "off";

arriav_lcell_comb \Add61~125 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add18~1_sumout ),
	.datac(!\Add17~1_sumout ),
	.datad(!\Add57~93_sumout ),
	.datae(gnd),
	.dataf(!\Add59~125_sumout ),
	.datag(gnd),
	.cin(\Add61~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~125_sumout ),
	.cout(\Add61~126 ),
	.shareout());
defparam \Add61~125 .extended_lut = "off";
defparam \Add61~125 .lut_mask = 64'h0000FF00000027D8;
defparam \Add61~125 .shared_arith = "off";

arriav_lcell_comb \Add67~129 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\Add63~93_sumout ),
	.datad(!\Add20~0_combout ),
	.datae(gnd),
	.dataf(!\Add61~129_sumout ),
	.datag(gnd),
	.cin(\Add67~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add67~129_sumout ),
	.cout(\Add67~130 ),
	.shareout());
defparam \Add67~129 .extended_lut = "off";
defparam \Add67~129 .lut_mask = 64'h0000FF000000B41E;
defparam \Add67~129 .shared_arith = "off";

arriav_lcell_comb \Add69~134 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\Add21~1_sumout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datad(!\aip1E_9high_uid177_sincosTest_o[14]~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add69~134_cout ),
	.shareout());
defparam \Add69~134 .extended_lut = "off";
defparam \Add69~134 .lut_mask = 64'h000000000000B11B;
defparam \Add69~134 .shared_arith = "off";

arriav_lcell_comb \Add41~101 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~101_sumout ),
	.cout(\Add41~102 ),
	.shareout());
defparam \Add41~101 .extended_lut = "off";
defparam \Add41~101 .lut_mask = 64'h0000AAAA0000AAAA;
defparam \Add41~101 .shared_arith = "off";

arriav_lcell_comb \Add42~101 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~101_sumout ),
	.cout(\Add42~102 ),
	.shareout());
defparam \Add42~101 .extended_lut = "off";
defparam \Add42~101 .lut_mask = 64'h000055550000AAAA;
defparam \Add42~101 .shared_arith = "off";

arriav_lcell_comb \Add47~109 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[5]~22_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[5]~26_combout ),
	.datag(gnd),
	.cin(\Add47~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~109_sumout ),
	.cout(\Add47~110 ),
	.shareout());
defparam \Add47~109 .extended_lut = "off";
defparam \Add47~109 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~109 .shared_arith = "off";

arriav_lcell_comb \Add49~117 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(\Add49~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~117_sumout ),
	.cout(\Add49~118 ),
	.shareout());
defparam \Add49~117 .extended_lut = "off";
defparam \Add49~117 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~117 .shared_arith = "off";

arriav_lcell_comb \Add55~121 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~97_sumout ),
	.datae(gnd),
	.dataf(!\Add49~121_sumout ),
	.datag(gnd),
	.cin(\Add55~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~121_sumout ),
	.cout(\Add55~122 ),
	.shareout());
defparam \Add55~121 .extended_lut = "off";
defparam \Add55~121 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~121 .shared_arith = "off";

arriav_lcell_comb \Add57~125 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add53~97_sumout ),
	.datae(gnd),
	.dataf(!\Add55~125_sumout ),
	.datag(gnd),
	.cin(\Add57~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~125_sumout ),
	.cout(\Add57~126 ),
	.shareout());
defparam \Add57~125 .extended_lut = "off";
defparam \Add57~125 .lut_mask = 64'h0000FF000000D827;
defparam \Add57~125 .shared_arith = "off";

arriav_lcell_comb \Add63~129 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~1_sumout ),
	.datac(!\Add59~97_sumout ),
	.datad(!\Add18~1_sumout ),
	.datae(gnd),
	.dataf(!\Add57~129_sumout ),
	.datag(gnd),
	.cin(\Add63~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add63~129_sumout ),
	.cout(\Add63~130 ),
	.shareout());
defparam \Add63~129 .extended_lut = "off";
defparam \Add63~129 .lut_mask = 64'h0000FF000000E14B;
defparam \Add63~129 .shared_arith = "off";

arriav_lcell_comb \Add65~134 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.datad(!\aip1E_8_uid159_sincosTest_o[16]~15_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add65~134_cout ),
	.shareout());
defparam \Add65~134 .extended_lut = "off";
defparam \Add65~134 .lut_mask = 64'h0000000000004EE4;
defparam \Add65~134 .shared_arith = "off";

arriav_lcell_comb \Add44~101 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~101_sumout ),
	.cout(\Add44~102 ),
	.shareout());
defparam \Add44~101 .extended_lut = "off";
defparam \Add44~101 .lut_mask = 64'h0000AAAA00005555;
defparam \Add44~101 .shared_arith = "off";

arriav_lcell_comb \Add43~101 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~101_sumout ),
	.cout(\Add43~102 ),
	.shareout());
defparam \Add43~101 .extended_lut = "off";
defparam \Add43~101 .lut_mask = 64'h0000AAAA0000AAAA;
defparam \Add43~101 .shared_arith = "off";

arriav_lcell_comb \Add45~109 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[9]~22_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[1]~26_combout ),
	.datag(gnd),
	.cin(\Add45~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~109_sumout ),
	.cout(\Add45~110 ),
	.shareout());
defparam \Add45~109 .extended_lut = "off";
defparam \Add45~109 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~109 .shared_arith = "off";

arriav_lcell_comb \Add51~117 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(\Add51~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~117_sumout ),
	.cout(\Add51~118 ),
	.shareout());
defparam \Add51~117 .extended_lut = "off";
defparam \Add51~117 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~117 .shared_arith = "off";

arriav_lcell_comb \Add53~121 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~97_sumout ),
	.datae(gnd),
	.dataf(!\Add51~121_sumout ),
	.datag(gnd),
	.cin(\Add53~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~121_sumout ),
	.cout(\Add53~122 ),
	.shareout());
defparam \Add53~121 .extended_lut = "off";
defparam \Add53~121 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~121 .shared_arith = "off";

arriav_lcell_comb \Add59~125 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add16~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add55~97_sumout ),
	.datae(gnd),
	.dataf(!\Add53~125_sumout ),
	.datag(gnd),
	.cin(\Add59~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~125_sumout ),
	.cout(\Add59~126 ),
	.shareout());
defparam \Add59~125 .extended_lut = "off";
defparam \Add59~125 .lut_mask = 64'h0000FF00000027D8;
defparam \Add59~125 .shared_arith = "off";

arriav_lcell_comb \Add61~129 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~1_sumout ),
	.datac(!\Add18~1_sumout ),
	.datad(!\Add57~97_sumout ),
	.datae(gnd),
	.dataf(!\Add59~129_sumout ),
	.datag(gnd),
	.cin(\Add61~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add61~129_sumout ),
	.cout(\Add61~130 ),
	.shareout());
defparam \Add61~129 .extended_lut = "off";
defparam \Add61~129 .lut_mask = 64'h0000FF0000001BE4;
defparam \Add61~129 .shared_arith = "off";

arriav_lcell_comb \Add67~134 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[16]~15_combout ),
	.datad(!\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add67~134_cout ),
	.shareout());
defparam \Add67~134 .extended_lut = "off";
defparam \Add67~134 .lut_mask = 64'h000000000000B11B;
defparam \Add67~134 .shared_arith = "off";

arriav_lcell_comb \Add41~105 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~105_sumout ),
	.cout(\Add41~106 ),
	.shareout());
defparam \Add41~105 .extended_lut = "off";
defparam \Add41~105 .lut_mask = 64'h000011110000FF55;
defparam \Add41~105 .shared_arith = "off";

arriav_lcell_comb \Add42~105 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~105_sumout ),
	.cout(\Add42~106 ),
	.shareout());
defparam \Add42~105 .extended_lut = "off";
defparam \Add42~105 .lut_mask = 64'h00001111000000AA;
defparam \Add42~105 .shared_arith = "off";

arriav_lcell_comb \Add47~113 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[4]~23_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[4]~27_combout ),
	.datag(gnd),
	.cin(\Add47~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~113_sumout ),
	.cout(\Add47~114 ),
	.shareout());
defparam \Add47~113 .extended_lut = "off";
defparam \Add47~113 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~113 .shared_arith = "off";

arriav_lcell_comb \Add49~121 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(\Add49~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~121_sumout ),
	.cout(\Add49~122 ),
	.shareout());
defparam \Add49~121 .extended_lut = "off";
defparam \Add49~121 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~121 .shared_arith = "off";

arriav_lcell_comb \Add55~125 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~101_sumout ),
	.datae(gnd),
	.dataf(!\Add49~125_sumout ),
	.datag(gnd),
	.cin(\Add55~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~125_sumout ),
	.cout(\Add55~126 ),
	.shareout());
defparam \Add55~125 .extended_lut = "off";
defparam \Add55~125 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~125 .shared_arith = "off";

arriav_lcell_comb \Add57~129 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(!\Add16~1_sumout ),
	.datad(!\Add53~101_sumout ),
	.datae(gnd),
	.dataf(!\Add55~129_sumout ),
	.datag(gnd),
	.cin(\Add57~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add57~129_sumout ),
	.cout(\Add57~130 ),
	.shareout());
defparam \Add57~129 .extended_lut = "off";
defparam \Add57~129 .lut_mask = 64'h0000FF000000E41B;
defparam \Add57~129 .shared_arith = "off";

arriav_lcell_comb \Add63~134 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~1_sumout ),
	.datac(gnd),
	.datad(!\Add18~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add63~134_cout ),
	.shareout());
defparam \Add63~134 .extended_lut = "off";
defparam \Add63~134 .lut_mask = 64'h000000000000EE44;
defparam \Add63~134 .shared_arith = "off";

arriav_lcell_comb \Add44~105 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~105_sumout ),
	.cout(\Add44~106 ),
	.shareout());
defparam \Add44~105 .extended_lut = "off";
defparam \Add44~105 .lut_mask = 64'h0000222200000055;
defparam \Add44~105 .shared_arith = "off";

arriav_lcell_comb \Add43~105 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~105_sumout ),
	.cout(\Add43~106 ),
	.shareout());
defparam \Add43~105 .extended_lut = "off";
defparam \Add43~105 .lut_mask = 64'h000022220000FFAA;
defparam \Add43~105 .shared_arith = "off";

arriav_lcell_comb \Add45~113 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[8]~23_combout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[0]~27_combout ),
	.datag(gnd),
	.cin(\Add45~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~113_sumout ),
	.cout(\Add45~114 ),
	.shareout());
defparam \Add45~113 .extended_lut = "off";
defparam \Add45~113 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~113 .shared_arith = "off";

arriav_lcell_comb \Add51~121 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(\Add51~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~121_sumout ),
	.cout(\Add51~122 ),
	.shareout());
defparam \Add51~121 .extended_lut = "off";
defparam \Add51~121 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~121 .shared_arith = "off";

arriav_lcell_comb \Add53~125 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~101_sumout ),
	.datae(gnd),
	.dataf(!\Add51~125_sumout ),
	.datag(gnd),
	.cin(\Add53~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~125_sumout ),
	.cout(\Add53~126 ),
	.shareout());
defparam \Add53~125 .extended_lut = "off";
defparam \Add53~125 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~125 .shared_arith = "off";

arriav_lcell_comb \Add59~129 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(!\Add55~101_sumout ),
	.datad(!\Add16~1_sumout ),
	.datae(gnd),
	.dataf(!\Add53~129_sumout ),
	.datag(gnd),
	.cin(\Add59~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add59~129_sumout ),
	.cout(\Add59~130 ),
	.shareout());
defparam \Add59~129 .extended_lut = "off";
defparam \Add59~129 .lut_mask = 64'h0000FF0000001EB4;
defparam \Add59~129 .shared_arith = "off";

arriav_lcell_comb \Add61~134 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~1_sumout ),
	.datac(gnd),
	.datad(!\Add18~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add61~134_cout ),
	.shareout());
defparam \Add61~134 .extended_lut = "off";
defparam \Add61~134 .lut_mask = 64'h00000000000011BB;
defparam \Add61~134 .shared_arith = "off";

arriav_lcell_comb \Add41~109 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~109_sumout ),
	.cout(\Add41~110 ),
	.shareout());
defparam \Add41~109 .extended_lut = "off";
defparam \Add41~109 .lut_mask = 64'h000011110000EE44;
defparam \Add41~109 .shared_arith = "off";

arriav_lcell_comb \Add42~109 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~109_sumout ),
	.cout(\Add42~110 ),
	.shareout());
defparam \Add42~109 .extended_lut = "off";
defparam \Add42~109 .lut_mask = 64'h0000EEEE0000EE44;
defparam \Add42~109 .shared_arith = "off";

arriav_lcell_comb \Add47~117 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[3]~24_combout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[3]~0_combout ),
	.datag(gnd),
	.cin(\Add47~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~117_sumout ),
	.cout(\Add47~118 ),
	.shareout());
defparam \Add47~117 .extended_lut = "off";
defparam \Add47~117 .lut_mask = 64'h0000FF000000D827;
defparam \Add47~117 .shared_arith = "off";

arriav_lcell_comb \Add49~125 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(\Add49~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~125_sumout ),
	.cout(\Add49~126 ),
	.shareout());
defparam \Add49~125 .extended_lut = "off";
defparam \Add49~125 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~125 .shared_arith = "off";

arriav_lcell_comb \Add55~129 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add51~105_sumout ),
	.datae(gnd),
	.dataf(!\Add49~129_sumout ),
	.datag(gnd),
	.cin(\Add55~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add55~129_sumout ),
	.cout(\Add55~130 ),
	.shareout());
defparam \Add55~129 .extended_lut = "off";
defparam \Add55~129 .lut_mask = 64'h0000FF000000AA55;
defparam \Add55~129 .shared_arith = "off";

arriav_lcell_comb \Add57~134 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(gnd),
	.datad(!\Add16~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add57~134_cout ),
	.shareout());
defparam \Add57~134 .extended_lut = "off";
defparam \Add57~134 .lut_mask = 64'h000000000000EE44;
defparam \Add57~134 .shared_arith = "off";

arriav_lcell_comb \Add44~109 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~109_sumout ),
	.cout(\Add44~110 ),
	.shareout());
defparam \Add44~109 .extended_lut = "off";
defparam \Add44~109 .lut_mask = 64'h0000DDDD0000DD88;
defparam \Add44~109 .shared_arith = "off";

arriav_lcell_comb \Add43~109 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add43~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~109_sumout ),
	.cout(\Add43~110 ),
	.shareout());
defparam \Add43~109 .extended_lut = "off";
defparam \Add43~109 .lut_mask = 64'h000022220000DD88;
defparam \Add43~109 .shared_arith = "off";

arriav_lcell_comb \Add45~117 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[7]~24_combout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[3]~0_combout ),
	.datag(gnd),
	.cin(\Add45~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~117_sumout ),
	.cout(\Add45~118 ),
	.shareout());
defparam \Add45~117 .extended_lut = "off";
defparam \Add45~117 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~117 .shared_arith = "off";

arriav_lcell_comb \Add51~125 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(\Add51~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~125_sumout ),
	.cout(\Add51~126 ),
	.shareout());
defparam \Add51~125 .extended_lut = "off";
defparam \Add51~125 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~125 .shared_arith = "off";

arriav_lcell_comb \Add53~129 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add49~105_sumout ),
	.datae(gnd),
	.dataf(!\Add51~129_sumout ),
	.datag(gnd),
	.cin(\Add53~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add53~129_sumout ),
	.cout(\Add53~130 ),
	.shareout());
defparam \Add53~129 .extended_lut = "off";
defparam \Add53~129 .lut_mask = 64'h0000FF00000055AA;
defparam \Add53~129 .shared_arith = "off";

arriav_lcell_comb \Add59~134 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(gnd),
	.datad(!\Add16~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add59~134_cout ),
	.shareout());
defparam \Add59~134 .extended_lut = "off";
defparam \Add59~134 .lut_mask = 64'h00000000000011BB;
defparam \Add59~134 .shared_arith = "off";

arriav_lcell_comb \Add41~113 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~113_sumout ),
	.cout(\Add41~114 ),
	.shareout());
defparam \Add41~113 .extended_lut = "off";
defparam \Add41~113 .lut_mask = 64'h0000AAAA0000AAFF;
defparam \Add41~113 .shared_arith = "off";

arriav_lcell_comb \Add42~113 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~113_sumout ),
	.cout(\Add42~114 ),
	.shareout());
defparam \Add42~113 .extended_lut = "off";
defparam \Add42~113 .lut_mask = 64'h000055550000AAFF;
defparam \Add42~113 .shared_arith = "off";

arriav_lcell_comb \Add47~121 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add9~1_sumout ),
	.datac(!\xip1E_5_uid108_sincosTest_b[2]~25_combout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[2]~1_combout ),
	.datag(gnd),
	.cin(\Add47~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~121_sumout ),
	.cout(\Add47~122 ),
	.shareout());
defparam \Add47~121 .extended_lut = "off";
defparam \Add47~121 .lut_mask = 64'h0000FF000000E14B;
defparam \Add47~121 .shared_arith = "off";

arriav_lcell_comb \Add49~129 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add49~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add49~129_sumout ),
	.cout(\Add49~130 ),
	.shareout());
defparam \Add49~129 .extended_lut = "off";
defparam \Add49~129 .lut_mask = 64'h0000FF000000AA55;
defparam \Add49~129 .shared_arith = "off";

arriav_lcell_comb \Add55~134 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add55~134_cout ),
	.shareout());
defparam \Add55~134 .extended_lut = "off";
defparam \Add55~134 .lut_mask = 64'h000000000000AAAA;
defparam \Add55~134 .shared_arith = "off";

arriav_lcell_comb \Add44~113 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~113_sumout ),
	.cout(\Add44~114 ),
	.shareout());
defparam \Add44~113 .extended_lut = "off";
defparam \Add44~113 .lut_mask = 64'h0000AA0000005555;
defparam \Add44~113 .shared_arith = "off";

arriav_lcell_comb \Add43~113 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~113_sumout ),
	.cout(\Add43~114 ),
	.shareout());
defparam \Add43~113 .extended_lut = "off";
defparam \Add43~113 .lut_mask = 64'h0000AA000000AAAA;
defparam \Add43~113 .shared_arith = "off";

arriav_lcell_comb \Add45~121 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[6]~25_combout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[2]~1_combout ),
	.datag(gnd),
	.cin(\Add45~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~121_sumout ),
	.cout(\Add45~122 ),
	.shareout());
defparam \Add45~121 .extended_lut = "off";
defparam \Add45~121 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~121 .shared_arith = "off";

arriav_lcell_comb \Add51~129 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist8_xip1_5_uid112_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist7_yip1_5_uid113_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add51~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add51~129_sumout ),
	.cout(\Add51~130 ),
	.shareout());
defparam \Add51~129 .extended_lut = "off";
defparam \Add51~129 .lut_mask = 64'h0000FF00000055AA;
defparam \Add51~129 .shared_arith = "off";

arriav_lcell_comb \Add53~134 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add53~134_cout ),
	.shareout());
defparam \Add53~134 .extended_lut = "off";
defparam \Add53~134 .lut_mask = 64'h0000000000005555;
defparam \Add53~134 .shared_arith = "off";

arriav_lcell_comb \Add41~117 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add41~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~117_sumout ),
	.cout(\Add41~118 ),
	.shareout());
defparam \Add41~117 .extended_lut = "off";
defparam \Add41~117 .lut_mask = 64'h000000AA0000AAFF;
defparam \Add41~117 .shared_arith = "off";

arriav_lcell_comb \Add42~117 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add42~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~117_sumout ),
	.cout(\Add42~118 ),
	.shareout());
defparam \Add42~117 .extended_lut = "off";
defparam \Add42~117 .lut_mask = 64'h0000FF550000AAFF;
defparam \Add42~117 .shared_arith = "off";

arriav_lcell_comb \Add47~125 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add9~1_sumout ),
	.datac(!\xip1E_5_uid108_sincosTest_b[1]~26_combout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[1]~2_combout ),
	.datag(gnd),
	.cin(\Add47~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~125_sumout ),
	.cout(\Add47~126 ),
	.shareout());
defparam \Add47~125 .extended_lut = "off";
defparam \Add47~125 .lut_mask = 64'h0000FF000000E14B;
defparam \Add47~125 .shared_arith = "off";

arriav_lcell_comb \Add49~134 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add49~134_cout ),
	.shareout());
defparam \Add49~134 .extended_lut = "off";
defparam \Add49~134 .lut_mask = 64'h000000000000AAAA;
defparam \Add49~134 .shared_arith = "off";

arriav_lcell_comb \Add44~117 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add44~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~117_sumout ),
	.cout(\Add44~118 ),
	.shareout());
defparam \Add44~117 .extended_lut = "off";
defparam \Add44~117 .lut_mask = 64'h0000AA0000000055;
defparam \Add44~117 .shared_arith = "off";

arriav_lcell_comb \Add43~117 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(!\Add6~1_sumout ),
	.datag(gnd),
	.cin(\Add43~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~117_sumout ),
	.cout(\Add43~118 ),
	.shareout());
defparam \Add43~117 .extended_lut = "off";
defparam \Add43~117 .lut_mask = 64'h0000AA000000FFAA;
defparam \Add43~117 .shared_arith = "off";

arriav_lcell_comb \Add45~125 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add10~1_sumout ),
	.datac(!\Add9~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[5]~26_combout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[1]~2_combout ),
	.datag(gnd),
	.cin(\Add45~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~125_sumout ),
	.cout(\Add45~126 ),
	.shareout());
defparam \Add45~125 .extended_lut = "off";
defparam \Add45~125 .lut_mask = 64'h0000FF00000027D8;
defparam \Add45~125 .shared_arith = "off";

arriav_lcell_comb \Add51~134 (
	.dataa(!\redist6_xMSB_uid115_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add51~134_cout ),
	.shareout());
defparam \Add51~134 .extended_lut = "off";
defparam \Add51~134 .lut_mask = 64'h0000000000005555;
defparam \Add51~134 .shared_arith = "off";

arriav_lcell_comb \Add41~121 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~121_sumout ),
	.cout(\Add41~122 ),
	.shareout());
defparam \Add41~121 .extended_lut = "off";
defparam \Add41~121 .lut_mask = 64'h00008D8D0000D8D8;
defparam \Add41~121 .shared_arith = "off";

arriav_lcell_comb \Add42~121 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add42~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~121_sumout ),
	.cout(\Add42~122 ),
	.shareout());
defparam \Add42~121 .extended_lut = "off";
defparam \Add42~121 .lut_mask = 64'h00008D8D00002727;
defparam \Add42~121 .shared_arith = "off";

arriav_lcell_comb \Add47~129 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add47~132_combout ),
	.datae(gnd),
	.dataf(!\Add42~125_sumout ),
	.datag(gnd),
	.cin(\Add47~135_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add47~129_sumout ),
	.cout(\Add47~130 ),
	.shareout());
defparam \Add47~129 .extended_lut = "off";
defparam \Add47~129 .lut_mask = 64'h0000EA400000FF00;
defparam \Add47~129 .shared_arith = "off";

arriav_lcell_comb \Add44~121 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~121_sumout ),
	.cout(\Add44~122 ),
	.shareout());
defparam \Add44~121 .extended_lut = "off";
defparam \Add44~121 .lut_mask = 64'h0000727200002727;
defparam \Add44~121 .shared_arith = "off";

arriav_lcell_comb \Add43~121 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add43~121_sumout ),
	.cout(\Add43~122 ),
	.shareout());
defparam \Add43~121 .extended_lut = "off";
defparam \Add43~121 .lut_mask = 64'h000072720000D8D8;
defparam \Add43~121 .shared_arith = "off";

arriav_lcell_comb \Add45~129 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\Add5~1_sumout ),
	.datad(!\Add45~132_combout ),
	.datae(gnd),
	.dataf(!\Add44~125_sumout ),
	.datag(gnd),
	.cin(\Add45~135_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add45~129_sumout ),
	.cout(\Add45~130 ),
	.shareout());
defparam \Add45~129 .extended_lut = "off";
defparam \Add45~129 .lut_mask = 64'h00007520000000FF;
defparam \Add45~129 .shared_arith = "off";

arriav_lcell_comb \Add42~125 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~125_sumout ),
	.cout(\Add42~126 ),
	.shareout());
defparam \Add42~125 .extended_lut = "off";
defparam \Add42~125 .lut_mask = 64'h0000000000008888;
defparam \Add42~125 .shared_arith = "off";

arriav_lcell_comb \Add47~135 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add47~135_cout ),
	.shareout());
defparam \Add47~135 .extended_lut = "off";
defparam \Add47~135 .lut_mask = 64'h000000000000FA50;
defparam \Add47~135 .shared_arith = "off";

arriav_lcell_comb \Add44~125 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add5~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~125_sumout ),
	.cout(\Add44~126 ),
	.shareout());
defparam \Add44~125 .extended_lut = "off";
defparam \Add44~125 .lut_mask = 64'h0000000000005500;
defparam \Add44~125 .shared_arith = "off";

arriav_lcell_comb \Add45~135 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(gnd),
	.datac(!\Add9~1_sumout ),
	.datad(!\Add10~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add45~135_cout ),
	.shareout());
defparam \Add45~135 .extended_lut = "off";
defparam \Add45~135 .lut_mask = 64'h00000000000005AF;
defparam \Add45~135 .shared_arith = "off";

arriav_lcell_comb \aip1E_9high_uid177_sincosTest_a[16]~0 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add17~1_sumout ),
	.datac(!\Add15~1_sumout ),
	.datad(!\Add16~1_sumout ),
	.datae(!\Add18~1_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_9high_uid177_sincosTest_a[16]~0 .extended_lut = "off";
defparam \aip1E_9high_uid177_sincosTest_a[16]~0 .lut_mask = 64'h0123FB730123FB73;
defparam \aip1E_9high_uid177_sincosTest_a[16]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_a[18]~0 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(!\Add16~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_a[18]~0 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_a[18]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_a[18]~0 .shared_arith = "off";

arriav_lcell_comb \Add20~0 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~5_sumout ),
	.datac(!\Add18~5_sumout ),
	.datad(!\Add17~9_sumout ),
	.datae(!\Add18~9_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add20~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add20~0 .extended_lut = "off";
defparam \Add20~0 .lut_mask = 64'h1B4EB1E41B4EB1E4;
defparam \Add20~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_10high_uid196_sincosTest_a[15]~0 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\Add19~1_sumout ),
	.datac(!\Add20~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_10high_uid196_sincosTest_a[15]~0 .extended_lut = "off";
defparam \aip1E_10high_uid196_sincosTest_a[15]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \aip1E_10high_uid196_sincosTest_a[15]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[15]~0 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(!\Add16~1_sumout ),
	.datad(!\Add17~5_sumout ),
	.datae(!\Add18~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[15]~0 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[15]~0 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \aip1E_8_uid159_sincosTest_o[15]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[14]~1 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~13_sumout ),
	.datac(!\Add18~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[14]~1 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[14]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[14]~1 .shared_arith = "off";

arriav_lcell_comb \Add22~0 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.datac(!\Add19~5_sumout ),
	.datad(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add22~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add22~0 .extended_lut = "off";
defparam \Add22~0 .lut_mask = 64'h8D728D728D728D72;
defparam \Add22~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_11high_uid215_sincosTest_a[14]~0 (
	.dataa(!\Add21~1_sumout ),
	.datab(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datac(!\Add22~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_11high_uid215_sincosTest_a[14]~0 .extended_lut = "off";
defparam \aip1E_11high_uid215_sincosTest_a[14]~0 .lut_mask = 64'hD1D1D1D1D1D1D1D1;
defparam \aip1E_11high_uid215_sincosTest_a[14]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[13]~2 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~17_sumout ),
	.datac(!\Add18~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[13]~2 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[13]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[13]~2 .shared_arith = "off";

arriav_lcell_comb \aip1E_10high_uid196_sincosTest_o[13]~0 (
	.dataa(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datac(!\Add21~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_10high_uid196_sincosTest_o[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_10high_uid196_sincosTest_o[13]~0 .extended_lut = "off";
defparam \aip1E_10high_uid196_sincosTest_o[13]~0 .lut_mask = 64'h8D8D8D8D8D8D8D8D;
defparam \aip1E_10high_uid196_sincosTest_o[13]~0 .shared_arith = "off";

arriav_lcell_comb \Add24~0 (
	.dataa(!\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.datab(!\aip1E_10high_uid196_sincosTest_a[15]~0_combout ),
	.datac(!\aip1E_8_uid159_sincosTest_o[14]~1_combout ),
	.datad(!\Add21~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add24~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add24~0 .extended_lut = "off";
defparam \Add24~0 .lut_mask = 64'h95A695A695A695A6;
defparam \Add24~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_12high_uid234_sincosTest_a[13]~0 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\Add23~5_sumout ),
	.datac(!\Add24~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_12high_uid234_sincosTest_a[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_12high_uid234_sincosTest_a[13]~0 .extended_lut = "off";
defparam \aip1E_12high_uid234_sincosTest_a[13]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \aip1E_12high_uid234_sincosTest_a[13]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[12]~3 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~21_sumout ),
	.datac(!\Add18~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[12]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[12]~3 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[12]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[12]~3 .shared_arith = "off";

arriav_lcell_comb \aip1E_13high_uid253_sincosTest_a[12]~0 (
	.dataa(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[13]~2_combout ),
	.datac(!\Add23~1_sumout ),
	.datad(!\Add25~1_sumout ),
	.datae(!\aip1E_12high_uid234_sincosTest_a[13]~0_combout ),
	.dataf(!\aip1E_8_uid159_sincosTest_o[12]~3_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_13high_uid253_sincosTest_a[12]~0 .extended_lut = "off";
defparam \aip1E_13high_uid253_sincosTest_a[12]~0 .lut_mask = 64'h727200FF8D8D00FF;
defparam \aip1E_13high_uid253_sincosTest_a[12]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[11]~4 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~25_sumout ),
	.datac(!\Add18~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[11]~4 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[11]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[11]~4 .shared_arith = "off";

arriav_lcell_comb \aip1E_12high_uid234_sincosTest_o[11]~0 (
	.dataa(!\aip1E_8_uid159_sincosTest_o[12]~3_combout ),
	.datab(!\Add25~5_sumout ),
	.datac(!\aip1E_11high_uid215_sincosTest_a[14]~0_combout ),
	.datad(!\Add23~5_sumout ),
	.datae(!\Add24~0_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_12high_uid234_sincosTest_o[11]~0 .extended_lut = "off";
defparam \aip1E_12high_uid234_sincosTest_o[11]~0 .lut_mask = 64'h3A33AAA33A33AAA3;
defparam \aip1E_12high_uid234_sincosTest_o[11]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_14high_uid272_sincosTest_a[11]~0 (
	.dataa(!\aip1E_13high_uid253_sincosTest_a[12]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[11]~4_combout ),
	.datac(!\aip1E_12high_uid234_sincosTest_o[11]~0_combout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_14high_uid272_sincosTest_a[11]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_14high_uid272_sincosTest_a[11]~0 .extended_lut = "off";
defparam \aip1E_14high_uid272_sincosTest_a[11]~0 .lut_mask = 64'h82D782D782D782D7;
defparam \aip1E_14high_uid272_sincosTest_a[11]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[10]~5 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~29_sumout ),
	.datac(!\Add18~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[10]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[10]~5 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[10]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[10]~5 .shared_arith = "off";

arriav_lcell_comb \aip1E_4_uid95_sincosTest_a[22]~0 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add7~1_sumout ),
	.datae(!\Add8~1_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_4_uid95_sincosTest_a[22]~0 .extended_lut = "off";
defparam \aip1E_4_uid95_sincosTest_a[22]~0 .lut_mask = 64'h00B14EFF00B14EFF;
defparam \aip1E_4_uid95_sincosTest_a[22]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_5_uid111_sincosTest_a[21]~0 (
	.dataa(!\Add9~1_sumout ),
	.datab(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datac(!\Add10~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_5_uid111_sincosTest_a[21]~0 .extended_lut = "off";
defparam \aip1E_5_uid111_sincosTest_a[21]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \aip1E_5_uid111_sincosTest_a[21]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[9]~6 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~33_sumout ),
	.datac(!\Add18~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[9]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[9]~6 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[9]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[9]~6 .shared_arith = "off";

arriav_lcell_comb \aip1E_3_uid79_sincosTest_a[23]~0 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_a[23]~0 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_a[23]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \aip1E_3_uid79_sincosTest_a[23]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[8]~7 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~37_sumout ),
	.datac(!\Add18~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[8]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[8]~7 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[8]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[8]~7 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[7]~8 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~41_sumout ),
	.datac(!\Add18~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[7]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[7]~8 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[7]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[7]~8 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[6]~9 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~45_sumout ),
	.datac(!\Add18~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[6]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[6]~9 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[6]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[6]~9 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[5]~10 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~49_sumout ),
	.datac(!\Add18~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[5]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[5]~10 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[5]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[5]~10 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[4]~11 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~53_sumout ),
	.datac(!\Add18~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[4]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[4]~11 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[4]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[4]~11 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[3]~12 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~57_sumout ),
	.datac(!\Add18~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[3]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[3]~12 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[3]~12 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[3]~12 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[2]~13 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~61_sumout ),
	.datac(!\Add18~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[2]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[2]~13 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[2]~13 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[2]~13 .shared_arith = "off";

arriav_lcell_comb \aip1E_6_uid127_sincosTest_a[20]~0 (
	.dataa(!\aip1E_5_uid111_sincosTest_a[21]~0_combout ),
	.datab(!\Add11~1_sumout ),
	.datac(!\Add12~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_6_uid127_sincosTest_a[20]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_6_uid127_sincosTest_a[20]~0 .extended_lut = "off";
defparam \aip1E_6_uid127_sincosTest_a[20]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_6_uid127_sincosTest_a[20]~0 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[1]~14 (
	.dataa(!\aip1E_8_uid159_sincosTest_a[18]~0_combout ),
	.datab(!\Add17~65_sumout ),
	.datac(!\Add18~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[1]~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[1]~14 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[1]~14 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \aip1E_8_uid159_sincosTest_o[1]~14 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[27]~0 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~1_sumout ),
	.datac(!\Add43~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[27]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[27]~0 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[27]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[27]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[31]~0 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~1_sumout ),
	.datac(!\Add42~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[31]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[31]~0 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[31]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[31]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[26]~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~5_sumout ),
	.datac(!\Add43~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[26]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[26]~1 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[26]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[26]~1 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[25]~2 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~9_sumout ),
	.datac(!\Add43~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[25]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[25]~2 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[25]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[25]~2 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[24]~3 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~13_sumout ),
	.datac(!\Add43~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[24]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[24]~3 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[24]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[24]~3 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[30]~1 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~5_sumout ),
	.datac(!\Add42~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[30]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[30]~1 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[30]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[30]~1 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[22]~4 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~17_sumout ),
	.datac(!\Add43~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[22]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[22]~4 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[22]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[22]~4 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[29]~2 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~9_sumout ),
	.datac(!\Add42~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[29]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[29]~2 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[29]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[29]~2 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[21]~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~21_sumout ),
	.datac(!\Add43~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[21]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[21]~5 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[21]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[21]~5 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[28]~3 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~13_sumout ),
	.datac(!\Add42~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[28]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[28]~3 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[28]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[28]~3 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[20]~6 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~25_sumout ),
	.datac(!\Add43~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[20]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[20]~6 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[20]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[20]~6 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[27]~4 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~17_sumout ),
	.datac(!\Add42~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[27]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[27]~4 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[27]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[27]~4 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[19]~7 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~29_sumout ),
	.datac(!\Add43~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[19]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[19]~7 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[19]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[19]~7 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[26]~5 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~21_sumout ),
	.datac(!\Add42~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[26]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[26]~5 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[26]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[26]~5 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[18]~8 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~33_sumout ),
	.datac(!\Add43~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[18]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[18]~8 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[18]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[18]~8 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[25]~6 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~25_sumout ),
	.datac(!\Add42~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[25]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[25]~6 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[25]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[25]~6 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[17]~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~37_sumout ),
	.datac(!\Add43~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[17]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[17]~9 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[17]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[17]~9 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[16]~10 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~41_sumout ),
	.datae(!\Add43~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[16]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[16]~10 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[16]~10 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[16]~10 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[16]~7 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~29_sumout ),
	.datae(!\Add42~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[16]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[16]~7 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[16]~7 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[16]~7 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[23]~11 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add44~45_sumout ),
	.datac(!\Add43~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[23]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[23]~11 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[23]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[23]~11 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[17]~8 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~33_sumout ),
	.datae(!\Add42~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[17]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[17]~8 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[17]~8 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[17]~8 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[24]~9 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~37_sumout ),
	.datac(!\Add42~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[24]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[24]~9 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[24]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[24]~9 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[23]~10 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~41_sumout ),
	.datac(!\Add42~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[23]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[23]~10 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[23]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[23]~10 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[22]~11 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~45_sumout ),
	.datac(!\Add42~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[22]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[22]~11 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[22]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[22]~11 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[21]~12 (
	.dataa(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datab(!\Add41~49_sumout ),
	.datac(!\Add42~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[21]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[21]~12 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[21]~12 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[21]~12 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[20]~13 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~53_sumout ),
	.datae(!\Add42~53_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[20]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[20]~13 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[20]~13 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[20]~13 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[12]~12 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~49_sumout ),
	.datae(!\Add43~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[12]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[12]~12 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[12]~12 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[12]~12 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[13]~13 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~53_sumout ),
	.datae(!\Add43~53_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[13]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[13]~13 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[13]~13 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[13]~13 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[18]~14 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~57_sumout ),
	.datae(!\Add42~57_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[18]~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[18]~14 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[18]~14 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[18]~14 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[14]~14 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~57_sumout ),
	.datae(!\Add43~57_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[14]~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[14]~14 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[14]~14 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[14]~14 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[19]~15 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~61_sumout ),
	.datae(!\Add42~61_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[19]~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[19]~15 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[19]~15 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[19]~15 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[15]~15 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~61_sumout ),
	.datae(!\Add43~61_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[15]~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[15]~15 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[15]~15 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[15]~15 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[15]~16 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~65_sumout ),
	.datae(!\Add42~65_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[15]~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[15]~16 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[15]~16 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[15]~16 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[11]~16 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~65_sumout ),
	.datae(!\Add43~65_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[11]~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[11]~16 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[11]~16 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[11]~16 .shared_arith = "off";

arriav_lcell_comb \aip1E_4_uid95_sincosTest_o[2]~0 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add9~77_sumout ),
	.datae(!\Add10~77_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_4_uid95_sincosTest_o[2]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_4_uid95_sincosTest_o[2]~0 .extended_lut = "off";
defparam \aip1E_4_uid95_sincosTest_o[2]~0 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \aip1E_4_uid95_sincosTest_o[2]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[14]~17 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~69_sumout ),
	.datae(!\Add42~69_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[14]~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[14]~17 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[14]~17 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[14]~17 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[10]~17 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~69_sumout ),
	.datae(!\Add43~69_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[10]~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[10]~17 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[10]~17 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[10]~17 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[13]~18 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~73_sumout ),
	.datae(!\Add42~73_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[13]~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[13]~18 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[13]~18 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[13]~18 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[9]~18 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~73_sumout ),
	.datae(!\Add43~73_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[9]~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[9]~18 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[9]~18 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[9]~18 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[12]~19 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~77_sumout ),
	.datae(!\Add42~77_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[12]~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[12]~19 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[12]~19 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[12]~19 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[8]~19 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~77_sumout ),
	.datae(!\Add43~77_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[8]~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[8]~19 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[8]~19 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[8]~19 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[11]~20 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~81_sumout ),
	.datae(!\Add42~81_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[11]~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[11]~20 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[11]~20 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[11]~20 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[7]~20 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~81_sumout ),
	.datae(!\Add43~81_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[7]~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[7]~20 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[7]~20 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[7]~20 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[10]~21 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~85_sumout ),
	.datae(!\Add42~85_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[10]~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[10]~21 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[10]~21 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[10]~21 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[6]~21 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~85_sumout ),
	.datae(!\Add43~85_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[6]~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[6]~21 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[6]~21 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[6]~21 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[9]~22 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~89_sumout ),
	.datae(!\Add42~89_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[9]~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[9]~22 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[9]~22 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[9]~22 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[5]~22 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~89_sumout ),
	.datae(!\Add43~89_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[5]~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[5]~22 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[5]~22 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[5]~22 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[8]~23 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~93_sumout ),
	.datae(!\Add42~93_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[8]~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[8]~23 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[8]~23 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[8]~23 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[4]~23 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~93_sumout ),
	.datae(!\Add43~93_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[4]~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[4]~23 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[4]~23 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[4]~23 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[7]~24 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~97_sumout ),
	.datae(!\Add42~97_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[7]~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[7]~24 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[7]~24 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[7]~24 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[3]~24 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~97_sumout ),
	.datae(!\Add43~97_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[3]~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[3]~24 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[3]~24 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[3]~24 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[6]~25 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~101_sumout ),
	.datae(!\Add42~101_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[6]~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[6]~25 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[6]~25 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[6]~25 .shared_arith = "off";

arriav_lcell_comb \aip1E_9high_uid177_sincosTest_o[14]~0 (
	.dataa(!\aip1E_9high_uid177_sincosTest_a[16]~0_combout ),
	.datab(!\aip1E_8_uid159_sincosTest_o[15]~0_combout ),
	.datac(!\Add19~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_9high_uid177_sincosTest_o[14]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_9high_uid177_sincosTest_o[14]~0 .extended_lut = "off";
defparam \aip1E_9high_uid177_sincosTest_o[14]~0 .lut_mask = 64'h8D8D8D8D8D8D8D8D;
defparam \aip1E_9high_uid177_sincosTest_o[14]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[2]~25 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~101_sumout ),
	.datae(!\Add43~101_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[2]~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[2]~25 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[2]~25 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[2]~25 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[5]~26 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~105_sumout ),
	.datae(!\Add42~105_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[5]~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[5]~26 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[5]~26 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[5]~26 .shared_arith = "off";

arriav_lcell_comb \aip1E_8_uid159_sincosTest_o[16]~15 (
	.dataa(!\redist5_aip1E_uid130_sincosTest_b_1|delay_signals[0][19]~q ),
	.datab(!\Add15~1_sumout ),
	.datac(!\Add16~1_sumout ),
	.datad(!\Add17~9_sumout ),
	.datae(!\Add18~9_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_8_uid159_sincosTest_o[16]~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_8_uid159_sincosTest_o[16]~15 .extended_lut = "off";
defparam \aip1E_8_uid159_sincosTest_o[16]~15 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \aip1E_8_uid159_sincosTest_o[16]~15 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[1]~26 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~105_sumout ),
	.datae(!\Add43~105_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[1]~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[1]~26 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[1]~26 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[1]~26 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_a[4]~27 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~109_sumout ),
	.datae(!\Add42~109_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[4]~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[4]~27 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[4]~27 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_a[4]~27 .shared_arith = "off";

arriav_lcell_comb \xip1E_5_uid108_sincosTest_b[0]~27 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~109_sumout ),
	.datae(!\Add43~109_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[0]~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[0]~27 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[0]~27 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_5_uid108_sincosTest_b[0]~27 .shared_arith = "off";

arriav_lcell_comb \xip1E_4_uid92_sincosTest_o[3]~0 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~113_sumout ),
	.datae(!\Add42~113_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .shared_arith = "off";

arriav_lcell_comb \yip1E_4_uid93_sincosTest_o[3]~0 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~113_sumout ),
	.datae(!\Add43~113_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_4_uid92_sincosTest_o[2]~1 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~117_sumout ),
	.datae(!\Add42~117_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .shared_arith = "off";

arriav_lcell_comb \yip1E_4_uid93_sincosTest_o[2]~1 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~117_sumout ),
	.datae(!\Add43~117_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .shared_arith = "off";

arriav_lcell_comb \xip1E_4_uid92_sincosTest_o[1]~2 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add41~121_sumout ),
	.datae(!\Add42~121_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .shared_arith = "off";

arriav_lcell_comb \yip1E_4_uid93_sincosTest_o[1]~2 (
	.dataa(!\aip1E_3_uid79_sincosTest_a[23]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add8~1_sumout ),
	.datad(!\Add44~121_sumout ),
	.datae(!\Add43~121_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .lut_mask = 64'h001BE4FF001BE4FF;
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .shared_arith = "off";

arriav_lcell_comb \Add47~132 (
	.dataa(!\Add9~1_sumout ),
	.datab(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datac(!\Add10~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_b[0]~27_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add47~132_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add47~132 .extended_lut = "off";
defparam \Add47~132 .lut_mask = 64'h1DE21DE21DE21DE2;
defparam \Add47~132 .shared_arith = "off";

arriav_lcell_comb \Add45~132 (
	.dataa(!\Add9~1_sumout ),
	.datab(!\aip1E_4_uid95_sincosTest_a[22]~0_combout ),
	.datac(!\Add10~1_sumout ),
	.datad(!\xip1E_5_uid108_sincosTest_a[4]~27_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add45~132_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add45~132 .extended_lut = "off";
defparam \Add45~132 .lut_mask = 64'h1DE21DE21DE21DE2;
defparam \Add45~132 .shared_arith = "off";

arriav_lcell_comb \c[0]~0 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~1_sumout ),
	.datac(!\Add89~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[0]~0 .extended_lut = "off";
defparam \c[0]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[0]~0 .shared_arith = "off";

arriav_lcell_comb \c[1]~1 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~5_sumout ),
	.datac(!\Add89~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[1]~1 .extended_lut = "off";
defparam \c[1]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[1]~1 .shared_arith = "off";

arriav_lcell_comb \c[2]~2 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~9_sumout ),
	.datac(!\Add89~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[2]~2 .extended_lut = "off";
defparam \c[2]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[2]~2 .shared_arith = "off";

arriav_lcell_comb \c[3]~3 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~13_sumout ),
	.datac(!\Add89~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[3]~3 .extended_lut = "off";
defparam \c[3]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[3]~3 .shared_arith = "off";

arriav_lcell_comb \c[4]~4 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~17_sumout ),
	.datac(!\Add89~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[4]~4 .extended_lut = "off";
defparam \c[4]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[4]~4 .shared_arith = "off";

arriav_lcell_comb \c[5]~5 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~21_sumout ),
	.datac(!\Add89~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[5]~5 .extended_lut = "off";
defparam \c[5]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[5]~5 .shared_arith = "off";

arriav_lcell_comb \c[6]~6 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~25_sumout ),
	.datac(!\Add89~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[6]~6 .extended_lut = "off";
defparam \c[6]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[6]~6 .shared_arith = "off";

arriav_lcell_comb \c[7]~7 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~29_sumout ),
	.datac(!\Add89~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[7]~7 .extended_lut = "off";
defparam \c[7]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[7]~7 .shared_arith = "off";

arriav_lcell_comb \c[8]~8 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~33_sumout ),
	.datac(!\Add89~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[8]~8 .extended_lut = "off";
defparam \c[8]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[8]~8 .shared_arith = "off";

arriav_lcell_comb \c[9]~9 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~37_sumout ),
	.datac(!\Add89~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[9]~9 .extended_lut = "off";
defparam \c[9]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[9]~9 .shared_arith = "off";

arriav_lcell_comb \c[10]~10 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~41_sumout ),
	.datac(!\Add89~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[10]~10 .extended_lut = "off";
defparam \c[10]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[10]~10 .shared_arith = "off";

arriav_lcell_comb \c[11]~11 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~45_sumout ),
	.datac(!\Add89~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[11]~11 .extended_lut = "off";
defparam \c[11]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[11]~11 .shared_arith = "off";

arriav_lcell_comb \c[12]~12 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~49_sumout ),
	.datac(!\Add89~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[12]~12 .extended_lut = "off";
defparam \c[12]~12 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[12]~12 .shared_arith = "off";

arriav_lcell_comb \c[13]~13 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~53_sumout ),
	.datac(!\Add89~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[13]~13 .extended_lut = "off";
defparam \c[13]~13 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[13]~13 .shared_arith = "off";

arriav_lcell_comb \c[14]~14 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~57_sumout ),
	.datac(!\Add89~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[14]~14 .extended_lut = "off";
defparam \c[14]~14 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[14]~14 .shared_arith = "off";

arriav_lcell_comb \s[0]~0 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~1_sumout ),
	.datac(!\Add89~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[0]~0 .extended_lut = "off";
defparam \s[0]~0 .lut_mask = 64'h2727272727272727;
defparam \s[0]~0 .shared_arith = "off";

arriav_lcell_comb \s[1]~1 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~5_sumout ),
	.datac(!\Add89~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[1]~1 .extended_lut = "off";
defparam \s[1]~1 .lut_mask = 64'h2727272727272727;
defparam \s[1]~1 .shared_arith = "off";

arriav_lcell_comb \s[2]~2 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~9_sumout ),
	.datac(!\Add89~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[2]~2 .extended_lut = "off";
defparam \s[2]~2 .lut_mask = 64'h2727272727272727;
defparam \s[2]~2 .shared_arith = "off";

arriav_lcell_comb \s[3]~3 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~13_sumout ),
	.datac(!\Add89~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[3]~3 .extended_lut = "off";
defparam \s[3]~3 .lut_mask = 64'h2727272727272727;
defparam \s[3]~3 .shared_arith = "off";

arriav_lcell_comb \s[4]~4 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~17_sumout ),
	.datac(!\Add89~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[4]~4 .extended_lut = "off";
defparam \s[4]~4 .lut_mask = 64'h2727272727272727;
defparam \s[4]~4 .shared_arith = "off";

arriav_lcell_comb \s[5]~5 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~21_sumout ),
	.datac(!\Add89~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[5]~5 .extended_lut = "off";
defparam \s[5]~5 .lut_mask = 64'h2727272727272727;
defparam \s[5]~5 .shared_arith = "off";

arriav_lcell_comb \s[6]~6 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~25_sumout ),
	.datac(!\Add89~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[6]~6 .extended_lut = "off";
defparam \s[6]~6 .lut_mask = 64'h2727272727272727;
defparam \s[6]~6 .shared_arith = "off";

arriav_lcell_comb \s[7]~7 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~29_sumout ),
	.datac(!\Add89~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[7]~7 .extended_lut = "off";
defparam \s[7]~7 .lut_mask = 64'h2727272727272727;
defparam \s[7]~7 .shared_arith = "off";

arriav_lcell_comb \s[8]~8 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~33_sumout ),
	.datac(!\Add89~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[8]~8 .extended_lut = "off";
defparam \s[8]~8 .lut_mask = 64'h2727272727272727;
defparam \s[8]~8 .shared_arith = "off";

arriav_lcell_comb \s[9]~9 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~37_sumout ),
	.datac(!\Add89~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[9]~9 .extended_lut = "off";
defparam \s[9]~9 .lut_mask = 64'h2727272727272727;
defparam \s[9]~9 .shared_arith = "off";

arriav_lcell_comb \s[10]~10 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~41_sumout ),
	.datac(!\Add89~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[10]~10 .extended_lut = "off";
defparam \s[10]~10 .lut_mask = 64'h2727272727272727;
defparam \s[10]~10 .shared_arith = "off";

arriav_lcell_comb \s[11]~11 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~45_sumout ),
	.datac(!\Add89~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[11]~11 .extended_lut = "off";
defparam \s[11]~11 .lut_mask = 64'h2727272727272727;
defparam \s[11]~11 .shared_arith = "off";

arriav_lcell_comb \s[12]~12 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~49_sumout ),
	.datac(!\Add89~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[12]~12 .extended_lut = "off";
defparam \s[12]~12 .lut_mask = 64'h2727272727272727;
defparam \s[12]~12 .shared_arith = "off";

arriav_lcell_comb \s[13]~13 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~53_sumout ),
	.datac(!\Add89~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[13]~13 .extended_lut = "off";
defparam \s[13]~13 .lut_mask = 64'h2727272727272727;
defparam \s[13]~13 .shared_arith = "off";

arriav_lcell_comb \s[14]~14 (
	.dataa(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add94~57_sumout ),
	.datac(!\Add89~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[14]~14 .extended_lut = "off";
defparam \s[14]~14 .lut_mask = 64'h2727272727272727;
defparam \s[14]~14 .shared_arith = "off";

arriav_lcell_comb \Add79~134 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add79~134_cout ),
	.shareout());
defparam \Add79~134 .extended_lut = "off";
defparam \Add79~134 .lut_mask = 64'h000000000000AAAA;
defparam \Add79~134 .shared_arith = "off";

arriav_lcell_comb \Add79~129 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add79~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~129_sumout ),
	.cout(\Add79~130 ),
	.shareout());
defparam \Add79~129 .extended_lut = "off";
defparam \Add79~129 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~129 .shared_arith = "off";

arriav_lcell_comb \Add79~125 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(\Add79~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~125_sumout ),
	.cout(\Add79~126 ),
	.shareout());
defparam \Add79~125 .extended_lut = "off";
defparam \Add79~125 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~125 .shared_arith = "off";

arriav_lcell_comb \Add79~121 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(\Add79~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~121_sumout ),
	.cout(\Add79~122 ),
	.shareout());
defparam \Add79~121 .extended_lut = "off";
defparam \Add79~121 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~121 .shared_arith = "off";

arriav_lcell_comb \Add79~117 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(\Add79~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~117_sumout ),
	.cout(\Add79~118 ),
	.shareout());
defparam \Add79~117 .extended_lut = "off";
defparam \Add79~117 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~117 .shared_arith = "off";

arriav_lcell_comb \Add79~113 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add79~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~113_sumout ),
	.cout(\Add79~114 ),
	.shareout());
defparam \Add79~113 .extended_lut = "off";
defparam \Add79~113 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~113 .shared_arith = "off";

arriav_lcell_comb \Add79~109 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add79~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~109_sumout ),
	.cout(\Add79~110 ),
	.shareout());
defparam \Add79~109 .extended_lut = "off";
defparam \Add79~109 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~109 .shared_arith = "off";

arriav_lcell_comb \Add79~105 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add79~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~105_sumout ),
	.cout(\Add79~106 ),
	.shareout());
defparam \Add79~105 .extended_lut = "off";
defparam \Add79~105 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~105 .shared_arith = "off";

arriav_lcell_comb \Add79~101 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][7]~q ),
	.datag(gnd),
	.cin(\Add79~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~101_sumout ),
	.cout(\Add79~102 ),
	.shareout());
defparam \Add79~101 .extended_lut = "off";
defparam \Add79~101 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~101 .shared_arith = "off";

arriav_lcell_comb \Add79~97 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][20]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][8]~q ),
	.datag(gnd),
	.cin(\Add79~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~97_sumout ),
	.cout(\Add79~98 ),
	.shareout());
defparam \Add79~97 .extended_lut = "off";
defparam \Add79~97 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~97 .shared_arith = "off";

arriav_lcell_comb \Add79~93 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][21]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][9]~q ),
	.datag(gnd),
	.cin(\Add79~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~93_sumout ),
	.cout(\Add79~94 ),
	.shareout());
defparam \Add79~93 .extended_lut = "off";
defparam \Add79~93 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~93 .shared_arith = "off";

arriav_lcell_comb \Add79~89 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][22]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][10]~q ),
	.datag(gnd),
	.cin(\Add79~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~89_sumout ),
	.cout(\Add79~90 ),
	.shareout());
defparam \Add79~89 .extended_lut = "off";
defparam \Add79~89 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~89 .shared_arith = "off";

arriav_lcell_comb \Add79~85 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][23]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add79~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~85_sumout ),
	.cout(\Add79~86 ),
	.shareout());
defparam \Add79~85 .extended_lut = "off";
defparam \Add79~85 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~85 .shared_arith = "off";

arriav_lcell_comb \Add79~81 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][24]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][12]~q ),
	.datag(gnd),
	.cin(\Add79~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~81_sumout ),
	.cout(\Add79~82 ),
	.shareout());
defparam \Add79~81 .extended_lut = "off";
defparam \Add79~81 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~81 .shared_arith = "off";

arriav_lcell_comb \Add79~77 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][25]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add79~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~77_sumout ),
	.cout(\Add79~78 ),
	.shareout());
defparam \Add79~77 .extended_lut = "off";
defparam \Add79~77 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~77 .shared_arith = "off";

arriav_lcell_comb \Add79~73 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][26]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][14]~q ),
	.datag(gnd),
	.cin(\Add79~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~73_sumout ),
	.cout(\Add79~74 ),
	.shareout());
defparam \Add79~73 .extended_lut = "off";
defparam \Add79~73 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~73 .shared_arith = "off";

arriav_lcell_comb \Add79~69 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][27]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][15]~q ),
	.datag(gnd),
	.cin(\Add79~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~69_sumout ),
	.cout(\Add79~70 ),
	.shareout());
defparam \Add79~69 .extended_lut = "off";
defparam \Add79~69 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~69 .shared_arith = "off";

arriav_lcell_comb \Add79~5 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][28]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][16]~q ),
	.datag(gnd),
	.cin(\Add79~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~5_sumout ),
	.cout(\Add79~6 ),
	.shareout());
defparam \Add79~5 .extended_lut = "off";
defparam \Add79~5 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~5 .shared_arith = "off";

arriav_lcell_comb \Add79~9 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][29]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][17]~q ),
	.datag(gnd),
	.cin(\Add79~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~9_sumout ),
	.cout(\Add79~10 ),
	.shareout());
defparam \Add79~9 .extended_lut = "off";
defparam \Add79~9 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~9 .shared_arith = "off";

arriav_lcell_comb \Add79~25 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][30]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][18]~q ),
	.datag(gnd),
	.cin(\Add79~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~25_sumout ),
	.cout(\Add79~26 ),
	.shareout());
defparam \Add79~25 .extended_lut = "off";
defparam \Add79~25 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~25 .shared_arith = "off";

arriav_lcell_comb \Add79~29 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][31]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][19]~q ),
	.datag(gnd),
	.cin(\Add79~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~29_sumout ),
	.cout(\Add79~30 ),
	.shareout());
defparam \Add79~29 .extended_lut = "off";
defparam \Add79~29 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~29 .shared_arith = "off";

arriav_lcell_comb \Add79~33 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][20]~q ),
	.datag(gnd),
	.cin(\Add79~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~33_sumout ),
	.cout(\Add79~34 ),
	.shareout());
defparam \Add79~33 .extended_lut = "off";
defparam \Add79~33 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~33 .shared_arith = "off";

arriav_lcell_comb \Add79~37 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][21]~q ),
	.datag(gnd),
	.cin(\Add79~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~37_sumout ),
	.cout(\Add79~38 ),
	.shareout());
defparam \Add79~37 .extended_lut = "off";
defparam \Add79~37 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~37 .shared_arith = "off";

arriav_lcell_comb \Add79~41 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][22]~q ),
	.datag(gnd),
	.cin(\Add79~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~41_sumout ),
	.cout(\Add79~42 ),
	.shareout());
defparam \Add79~41 .extended_lut = "off";
defparam \Add79~41 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~41 .shared_arith = "off";

arriav_lcell_comb \Add79~45 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][23]~q ),
	.datag(gnd),
	.cin(\Add79~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~45_sumout ),
	.cout(\Add79~46 ),
	.shareout());
defparam \Add79~45 .extended_lut = "off";
defparam \Add79~45 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~45 .shared_arith = "off";

arriav_lcell_comb \Add79~49 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][24]~q ),
	.datag(gnd),
	.cin(\Add79~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~49_sumout ),
	.cout(\Add79~50 ),
	.shareout());
defparam \Add79~49 .extended_lut = "off";
defparam \Add79~49 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~49 .shared_arith = "off";

arriav_lcell_comb \Add79~53 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][25]~q ),
	.datag(gnd),
	.cin(\Add79~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~53_sumout ),
	.cout(\Add79~54 ),
	.shareout());
defparam \Add79~53 .extended_lut = "off";
defparam \Add79~53 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~53 .shared_arith = "off";

arriav_lcell_comb \Add79~57 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][26]~q ),
	.datag(gnd),
	.cin(\Add79~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~57_sumout ),
	.cout(\Add79~58 ),
	.shareout());
defparam \Add79~57 .extended_lut = "off";
defparam \Add79~57 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~57 .shared_arith = "off";

arriav_lcell_comb \Add79~61 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][27]~q ),
	.datag(gnd),
	.cin(\Add79~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~61_sumout ),
	.cout(\Add79~62 ),
	.shareout());
defparam \Add79~61 .extended_lut = "off";
defparam \Add79~61 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~61 .shared_arith = "off";

arriav_lcell_comb \Add79~65 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][28]~q ),
	.datag(gnd),
	.cin(\Add79~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~65_sumout ),
	.cout(\Add79~66 ),
	.shareout());
defparam \Add79~65 .extended_lut = "off";
defparam \Add79~65 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~65 .shared_arith = "off";

arriav_lcell_comb \Add79~17 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][29]~q ),
	.datag(gnd),
	.cin(\Add79~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~17_sumout ),
	.cout(\Add79~18 ),
	.shareout());
defparam \Add79~17 .extended_lut = "off";
defparam \Add79~17 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~17 .shared_arith = "off";

arriav_lcell_comb \Add79~13 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][30]~q ),
	.datag(gnd),
	.cin(\Add79~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~13_sumout ),
	.cout(\Add79~14 ),
	.shareout());
defparam \Add79~13 .extended_lut = "off";
defparam \Add79~13 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~13 .shared_arith = "off";

arriav_lcell_comb \Add79~21 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][31]~q ),
	.datag(gnd),
	.cin(\Add79~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~21_sumout ),
	.cout(\Add79~22 ),
	.shareout());
defparam \Add79~21 .extended_lut = "off";
defparam \Add79~21 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~21 .shared_arith = "off";

arriav_lcell_comb \Add79~1 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datag(gnd),
	.cin(\Add79~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add79~1_sumout ),
	.cout(),
	.shareout());
defparam \Add79~1 .extended_lut = "off";
defparam \Add79~1 .lut_mask = 64'h0000FF000000AA55;
defparam \Add79~1 .shared_arith = "off";

arriav_lcell_comb \Add77~134 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add77~134_cout ),
	.shareout());
defparam \Add77~134 .extended_lut = "off";
defparam \Add77~134 .lut_mask = 64'h0000000000005555;
defparam \Add77~134 .shared_arith = "off";

arriav_lcell_comb \Add77~129 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add77~134_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~129_sumout ),
	.cout(\Add77~130 ),
	.shareout());
defparam \Add77~129 .extended_lut = "off";
defparam \Add77~129 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~129 .shared_arith = "off";

arriav_lcell_comb \Add77~125 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(\Add77~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~125_sumout ),
	.cout(\Add77~126 ),
	.shareout());
defparam \Add77~125 .extended_lut = "off";
defparam \Add77~125 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~125 .shared_arith = "off";

arriav_lcell_comb \Add77~121 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][14]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(\Add77~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~121_sumout ),
	.cout(\Add77~122 ),
	.shareout());
defparam \Add77~121 .extended_lut = "off";
defparam \Add77~121 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~121 .shared_arith = "off";

arriav_lcell_comb \Add77~117 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(\Add77~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~117_sumout ),
	.cout(\Add77~118 ),
	.shareout());
defparam \Add77~117 .extended_lut = "off";
defparam \Add77~117 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~117 .shared_arith = "off";

arriav_lcell_comb \Add77~113 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][16]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add77~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~113_sumout ),
	.cout(\Add77~114 ),
	.shareout());
defparam \Add77~113 .extended_lut = "off";
defparam \Add77~113 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~113 .shared_arith = "off";

arriav_lcell_comb \Add77~109 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][17]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add77~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~109_sumout ),
	.cout(\Add77~110 ),
	.shareout());
defparam \Add77~109 .extended_lut = "off";
defparam \Add77~109 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~109 .shared_arith = "off";

arriav_lcell_comb \Add77~105 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][18]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add77~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~105_sumout ),
	.cout(\Add77~106 ),
	.shareout());
defparam \Add77~105 .extended_lut = "off";
defparam \Add77~105 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~105 .shared_arith = "off";

arriav_lcell_comb \Add77~101 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][19]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][7]~q ),
	.datag(gnd),
	.cin(\Add77~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~101_sumout ),
	.cout(\Add77~102 ),
	.shareout());
defparam \Add77~101 .extended_lut = "off";
defparam \Add77~101 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~101 .shared_arith = "off";

arriav_lcell_comb \Add77~97 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][20]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][8]~q ),
	.datag(gnd),
	.cin(\Add77~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~97_sumout ),
	.cout(\Add77~98 ),
	.shareout());
defparam \Add77~97 .extended_lut = "off";
defparam \Add77~97 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~97 .shared_arith = "off";

arriav_lcell_comb \Add77~93 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][21]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][9]~q ),
	.datag(gnd),
	.cin(\Add77~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~93_sumout ),
	.cout(\Add77~94 ),
	.shareout());
defparam \Add77~93 .extended_lut = "off";
defparam \Add77~93 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~93 .shared_arith = "off";

arriav_lcell_comb \Add77~89 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][22]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][10]~q ),
	.datag(gnd),
	.cin(\Add77~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~89_sumout ),
	.cout(\Add77~90 ),
	.shareout());
defparam \Add77~89 .extended_lut = "off";
defparam \Add77~89 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~89 .shared_arith = "off";

arriav_lcell_comb \Add77~85 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][23]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add77~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~85_sumout ),
	.cout(\Add77~86 ),
	.shareout());
defparam \Add77~85 .extended_lut = "off";
defparam \Add77~85 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~85 .shared_arith = "off";

arriav_lcell_comb \Add77~81 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][24]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][12]~q ),
	.datag(gnd),
	.cin(\Add77~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~81_sumout ),
	.cout(\Add77~82 ),
	.shareout());
defparam \Add77~81 .extended_lut = "off";
defparam \Add77~81 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~81 .shared_arith = "off";

arriav_lcell_comb \Add77~77 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][25]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add77~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~77_sumout ),
	.cout(\Add77~78 ),
	.shareout());
defparam \Add77~77 .extended_lut = "off";
defparam \Add77~77 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~77 .shared_arith = "off";

arriav_lcell_comb \Add77~73 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][26]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][14]~q ),
	.datag(gnd),
	.cin(\Add77~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~73_sumout ),
	.cout(\Add77~74 ),
	.shareout());
defparam \Add77~73 .extended_lut = "off";
defparam \Add77~73 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~73 .shared_arith = "off";

arriav_lcell_comb \Add77~69 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][27]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][15]~q ),
	.datag(gnd),
	.cin(\Add77~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~69_sumout ),
	.cout(\Add77~70 ),
	.shareout());
defparam \Add77~69 .extended_lut = "off";
defparam \Add77~69 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~69 .shared_arith = "off";

arriav_lcell_comb \Add77~17 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][28]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][16]~q ),
	.datag(gnd),
	.cin(\Add77~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~17_sumout ),
	.cout(\Add77~18 ),
	.shareout());
defparam \Add77~17 .extended_lut = "off";
defparam \Add77~17 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~17 .shared_arith = "off";

arriav_lcell_comb \Add77~21 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][29]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][17]~q ),
	.datag(gnd),
	.cin(\Add77~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~21_sumout ),
	.cout(\Add77~22 ),
	.shareout());
defparam \Add77~21 .extended_lut = "off";
defparam \Add77~21 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~21 .shared_arith = "off";

arriav_lcell_comb \Add77~25 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][30]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][18]~q ),
	.datag(gnd),
	.cin(\Add77~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~25_sumout ),
	.cout(\Add77~26 ),
	.shareout());
defparam \Add77~25 .extended_lut = "off";
defparam \Add77~25 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~25 .shared_arith = "off";

arriav_lcell_comb \Add77~29 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][31]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][19]~q ),
	.datag(gnd),
	.cin(\Add77~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~29_sumout ),
	.cout(\Add77~30 ),
	.shareout());
defparam \Add77~29 .extended_lut = "off";
defparam \Add77~29 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~29 .shared_arith = "off";

arriav_lcell_comb \Add77~33 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][20]~q ),
	.datag(gnd),
	.cin(\Add77~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~33_sumout ),
	.cout(\Add77~34 ),
	.shareout());
defparam \Add77~33 .extended_lut = "off";
defparam \Add77~33 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~33 .shared_arith = "off";

arriav_lcell_comb \Add77~37 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][21]~q ),
	.datag(gnd),
	.cin(\Add77~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~37_sumout ),
	.cout(\Add77~38 ),
	.shareout());
defparam \Add77~37 .extended_lut = "off";
defparam \Add77~37 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~37 .shared_arith = "off";

arriav_lcell_comb \Add77~41 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][22]~q ),
	.datag(gnd),
	.cin(\Add77~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~41_sumout ),
	.cout(\Add77~42 ),
	.shareout());
defparam \Add77~41 .extended_lut = "off";
defparam \Add77~41 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~41 .shared_arith = "off";

arriav_lcell_comb \Add77~45 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][23]~q ),
	.datag(gnd),
	.cin(\Add77~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~45_sumout ),
	.cout(\Add77~46 ),
	.shareout());
defparam \Add77~45 .extended_lut = "off";
defparam \Add77~45 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~45 .shared_arith = "off";

arriav_lcell_comb \Add77~49 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][24]~q ),
	.datag(gnd),
	.cin(\Add77~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~49_sumout ),
	.cout(\Add77~50 ),
	.shareout());
defparam \Add77~49 .extended_lut = "off";
defparam \Add77~49 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~49 .shared_arith = "off";

arriav_lcell_comb \Add77~53 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][25]~q ),
	.datag(gnd),
	.cin(\Add77~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~53_sumout ),
	.cout(\Add77~54 ),
	.shareout());
defparam \Add77~53 .extended_lut = "off";
defparam \Add77~53 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~53 .shared_arith = "off";

arriav_lcell_comb \Add77~57 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][26]~q ),
	.datag(gnd),
	.cin(\Add77~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~57_sumout ),
	.cout(\Add77~58 ),
	.shareout());
defparam \Add77~57 .extended_lut = "off";
defparam \Add77~57 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~57 .shared_arith = "off";

arriav_lcell_comb \Add77~61 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][27]~q ),
	.datag(gnd),
	.cin(\Add77~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~61_sumout ),
	.cout(\Add77~62 ),
	.shareout());
defparam \Add77~61 .extended_lut = "off";
defparam \Add77~61 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~61 .shared_arith = "off";

arriav_lcell_comb \Add77~65 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][28]~q ),
	.datag(gnd),
	.cin(\Add77~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~65_sumout ),
	.cout(\Add77~66 ),
	.shareout());
defparam \Add77~65 .extended_lut = "off";
defparam \Add77~65 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~65 .shared_arith = "off";

arriav_lcell_comb \Add77~5 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][29]~q ),
	.datag(gnd),
	.cin(\Add77~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~5_sumout ),
	.cout(\Add77~6 ),
	.shareout());
defparam \Add77~5 .extended_lut = "off";
defparam \Add77~5 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~5 .shared_arith = "off";

arriav_lcell_comb \Add77~1 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][30]~q ),
	.datag(gnd),
	.cin(\Add77~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~1_sumout ),
	.cout(\Add77~2 ),
	.shareout());
defparam \Add77~1 .extended_lut = "off";
defparam \Add77~1 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~1 .shared_arith = "off";

arriav_lcell_comb \Add84~129 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~77_sumout ),
	.datad(!\Add77~129_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add84~129_sumout ),
	.cout(\Add84~130 ),
	.shareout(\Add84~131 ));
defparam \Add84~129 .extended_lut = "off";
defparam \Add84~129 .lut_mask = 64'h0000F0FF00000FF0;
defparam \Add84~129 .shared_arith = "on";

arriav_lcell_comb \Add84~125 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~73_sumout ),
	.datad(!\Add77~125_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~130 ),
	.sharein(\Add84~131 ),
	.combout(),
	.sumout(\Add84~125_sumout ),
	.cout(\Add84~126 ),
	.shareout(\Add84~127 ));
defparam \Add84~125 .extended_lut = "off";
defparam \Add84~125 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~125 .shared_arith = "on";

arriav_lcell_comb \Add84~121 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~69_sumout ),
	.datad(!\Add77~121_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~126 ),
	.sharein(\Add84~127 ),
	.combout(),
	.sumout(\Add84~121_sumout ),
	.cout(\Add84~122 ),
	.shareout(\Add84~123 ));
defparam \Add84~121 .extended_lut = "off";
defparam \Add84~121 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~121 .shared_arith = "on";

arriav_lcell_comb \Add84~117 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~5_sumout ),
	.datad(!\Add77~117_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~122 ),
	.sharein(\Add84~123 ),
	.combout(),
	.sumout(\Add84~117_sumout ),
	.cout(\Add84~118 ),
	.shareout(\Add84~119 ));
defparam \Add84~117 .extended_lut = "off";
defparam \Add84~117 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~117 .shared_arith = "on";

arriav_lcell_comb \Add84~113 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~9_sumout ),
	.datad(!\Add77~113_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~118 ),
	.sharein(\Add84~119 ),
	.combout(),
	.sumout(\Add84~113_sumout ),
	.cout(\Add84~114 ),
	.shareout(\Add84~115 ));
defparam \Add84~113 .extended_lut = "off";
defparam \Add84~113 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~113 .shared_arith = "on";

arriav_lcell_comb \Add84~109 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~25_sumout ),
	.datad(!\Add77~109_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~114 ),
	.sharein(\Add84~115 ),
	.combout(),
	.sumout(\Add84~109_sumout ),
	.cout(\Add84~110 ),
	.shareout(\Add84~111 ));
defparam \Add84~109 .extended_lut = "off";
defparam \Add84~109 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~109 .shared_arith = "on";

arriav_lcell_comb \Add84~105 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~29_sumout ),
	.datad(!\Add77~105_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~110 ),
	.sharein(\Add84~111 ),
	.combout(),
	.sumout(\Add84~105_sumout ),
	.cout(\Add84~106 ),
	.shareout(\Add84~107 ));
defparam \Add84~105 .extended_lut = "off";
defparam \Add84~105 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~105 .shared_arith = "on";

arriav_lcell_comb \Add84~101 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~33_sumout ),
	.datad(!\Add77~101_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~106 ),
	.sharein(\Add84~107 ),
	.combout(),
	.sumout(\Add84~101_sumout ),
	.cout(\Add84~102 ),
	.shareout(\Add84~103 ));
defparam \Add84~101 .extended_lut = "off";
defparam \Add84~101 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~101 .shared_arith = "on";

arriav_lcell_comb \Add84~97 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~37_sumout ),
	.datad(!\Add77~97_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~102 ),
	.sharein(\Add84~103 ),
	.combout(),
	.sumout(\Add84~97_sumout ),
	.cout(\Add84~98 ),
	.shareout(\Add84~99 ));
defparam \Add84~97 .extended_lut = "off";
defparam \Add84~97 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~97 .shared_arith = "on";

arriav_lcell_comb \Add84~93 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~41_sumout ),
	.datad(!\Add77~93_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~98 ),
	.sharein(\Add84~99 ),
	.combout(),
	.sumout(\Add84~93_sumout ),
	.cout(\Add84~94 ),
	.shareout(\Add84~95 ));
defparam \Add84~93 .extended_lut = "off";
defparam \Add84~93 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~93 .shared_arith = "on";

arriav_lcell_comb \Add84~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~45_sumout ),
	.datad(!\Add77~89_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~94 ),
	.sharein(\Add84~95 ),
	.combout(),
	.sumout(\Add84~89_sumout ),
	.cout(\Add84~90 ),
	.shareout(\Add84~91 ));
defparam \Add84~89 .extended_lut = "off";
defparam \Add84~89 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~89 .shared_arith = "on";

arriav_lcell_comb \Add84~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~49_sumout ),
	.datad(!\Add77~85_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~90 ),
	.sharein(\Add84~91 ),
	.combout(),
	.sumout(\Add84~85_sumout ),
	.cout(\Add84~86 ),
	.shareout(\Add84~87 ));
defparam \Add84~85 .extended_lut = "off";
defparam \Add84~85 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~85 .shared_arith = "on";

arriav_lcell_comb \Add84~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~53_sumout ),
	.datad(!\Add77~81_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~86 ),
	.sharein(\Add84~87 ),
	.combout(),
	.sumout(\Add84~81_sumout ),
	.cout(\Add84~82 ),
	.shareout(\Add84~83 ));
defparam \Add84~81 .extended_lut = "off";
defparam \Add84~81 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~81 .shared_arith = "on";

arriav_lcell_comb \Add84~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~57_sumout ),
	.datad(!\Add77~77_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~82 ),
	.sharein(\Add84~83 ),
	.combout(),
	.sumout(\Add84~77_sumout ),
	.cout(\Add84~78 ),
	.shareout(\Add84~79 ));
defparam \Add84~77 .extended_lut = "off";
defparam \Add84~77 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~77 .shared_arith = "on";

arriav_lcell_comb \Add84~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~61_sumout ),
	.datad(!\Add77~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~78 ),
	.sharein(\Add84~79 ),
	.combout(),
	.sumout(\Add84~73_sumout ),
	.cout(\Add84~74 ),
	.shareout(\Add84~75 ));
defparam \Add84~73 .extended_lut = "off";
defparam \Add84~73 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~73 .shared_arith = "on";

arriav_lcell_comb \Add84~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~65_sumout ),
	.datad(!\Add77~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~74 ),
	.sharein(\Add84~75 ),
	.combout(),
	.sumout(\Add84~69_sumout ),
	.cout(\Add84~70 ),
	.shareout(\Add84~71 ));
defparam \Add84~69 .extended_lut = "off";
defparam \Add84~69 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~69 .shared_arith = "on";

arriav_lcell_comb \Add84~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~17_sumout ),
	.datad(!\Add77~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~70 ),
	.sharein(\Add84~71 ),
	.combout(),
	.sumout(\Add84~9_sumout ),
	.cout(\Add84~10 ),
	.shareout(\Add84~11 ));
defparam \Add84~9 .extended_lut = "off";
defparam \Add84~9 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~9 .shared_arith = "on";

arriav_lcell_comb \Add84~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~13_sumout ),
	.datad(!\Add77~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~10 ),
	.sharein(\Add84~11 ),
	.combout(),
	.sumout(\Add84~13_sumout ),
	.cout(\Add84~14 ),
	.shareout(\Add84~15 ));
defparam \Add84~13 .extended_lut = "off";
defparam \Add84~13 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~13 .shared_arith = "on";

arriav_lcell_comb \Add84~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~21_sumout ),
	.datad(!\Add77~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~14 ),
	.sharein(\Add84~15 ),
	.combout(),
	.sumout(\Add84~21_sumout ),
	.cout(\Add84~22 ),
	.shareout(\Add84~23 ));
defparam \Add84~21 .extended_lut = "off";
defparam \Add84~21 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~21 .shared_arith = "on";

arriav_lcell_comb \Add84~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~22 ),
	.sharein(\Add84~23 ),
	.combout(),
	.sumout(\Add84~25_sumout ),
	.cout(\Add84~26 ),
	.shareout(\Add84~27 ));
defparam \Add84~25 .extended_lut = "off";
defparam \Add84~25 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~25 .shared_arith = "on";

arriav_lcell_comb \Add84~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~26 ),
	.sharein(\Add84~27 ),
	.combout(),
	.sumout(\Add84~29_sumout ),
	.cout(\Add84~30 ),
	.shareout(\Add84~31 ));
defparam \Add84~29 .extended_lut = "off";
defparam \Add84~29 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~29 .shared_arith = "on";

arriav_lcell_comb \Add84~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~30 ),
	.sharein(\Add84~31 ),
	.combout(),
	.sumout(\Add84~33_sumout ),
	.cout(\Add84~34 ),
	.shareout(\Add84~35 ));
defparam \Add84~33 .extended_lut = "off";
defparam \Add84~33 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~33 .shared_arith = "on";

arriav_lcell_comb \Add84~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~34 ),
	.sharein(\Add84~35 ),
	.combout(),
	.sumout(\Add84~37_sumout ),
	.cout(\Add84~38 ),
	.shareout(\Add84~39 ));
defparam \Add84~37 .extended_lut = "off";
defparam \Add84~37 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~37 .shared_arith = "on";

arriav_lcell_comb \Add84~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~38 ),
	.sharein(\Add84~39 ),
	.combout(),
	.sumout(\Add84~41_sumout ),
	.cout(\Add84~42 ),
	.shareout(\Add84~43 ));
defparam \Add84~41 .extended_lut = "off";
defparam \Add84~41 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~41 .shared_arith = "on";

arriav_lcell_comb \Add84~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~42 ),
	.sharein(\Add84~43 ),
	.combout(),
	.sumout(\Add84~45_sumout ),
	.cout(\Add84~46 ),
	.shareout(\Add84~47 ));
defparam \Add84~45 .extended_lut = "off";
defparam \Add84~45 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~45 .shared_arith = "on";

arriav_lcell_comb \Add84~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~46 ),
	.sharein(\Add84~47 ),
	.combout(),
	.sumout(\Add84~49_sumout ),
	.cout(\Add84~50 ),
	.shareout(\Add84~51 ));
defparam \Add84~49 .extended_lut = "off";
defparam \Add84~49 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~49 .shared_arith = "on";

arriav_lcell_comb \Add84~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~50 ),
	.sharein(\Add84~51 ),
	.combout(),
	.sumout(\Add84~53_sumout ),
	.cout(\Add84~54 ),
	.shareout(\Add84~55 ));
defparam \Add84~53 .extended_lut = "off";
defparam \Add84~53 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~53 .shared_arith = "on";

arriav_lcell_comb \Add84~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~54 ),
	.sharein(\Add84~55 ),
	.combout(),
	.sumout(\Add84~57_sumout ),
	.cout(\Add84~58 ),
	.shareout(\Add84~59 ));
defparam \Add84~57 .extended_lut = "off";
defparam \Add84~57 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~57 .shared_arith = "on";

arriav_lcell_comb \Add84~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~58 ),
	.sharein(\Add84~59 ),
	.combout(),
	.sumout(\Add84~61_sumout ),
	.cout(\Add84~62 ),
	.shareout(\Add84~63 ));
defparam \Add84~61 .extended_lut = "off";
defparam \Add84~61 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~61 .shared_arith = "on";

arriav_lcell_comb \Add84~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~62 ),
	.sharein(\Add84~63 ),
	.combout(),
	.sumout(\Add84~65_sumout ),
	.cout(\Add84~66 ),
	.shareout(\Add84~67 ));
defparam \Add84~65 .extended_lut = "off";
defparam \Add84~65 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~65 .shared_arith = "on";

arriav_lcell_comb \Add84~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~66 ),
	.sharein(\Add84~67 ),
	.combout(),
	.sumout(\Add84~1_sumout ),
	.cout(\Add84~2 ),
	.shareout(\Add84~3 ));
defparam \Add84~1 .extended_lut = "off";
defparam \Add84~1 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~1 .shared_arith = "on";

arriav_lcell_comb \Add83~129 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~129_sumout ),
	.datae(gnd),
	.dataf(!\Add79~77_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~129_sumout ),
	.cout(\Add83~130 ),
	.shareout());
defparam \Add83~129 .extended_lut = "off";
defparam \Add83~129 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~129 .shared_arith = "off";

arriav_lcell_comb \Add83~125 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~125_sumout ),
	.datae(gnd),
	.dataf(!\Add79~73_sumout ),
	.datag(gnd),
	.cin(\Add83~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~125_sumout ),
	.cout(\Add83~126 ),
	.shareout());
defparam \Add83~125 .extended_lut = "off";
defparam \Add83~125 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~125 .shared_arith = "off";

arriav_lcell_comb \Add83~121 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~121_sumout ),
	.datae(gnd),
	.dataf(!\Add79~69_sumout ),
	.datag(gnd),
	.cin(\Add83~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~121_sumout ),
	.cout(\Add83~122 ),
	.shareout());
defparam \Add83~121 .extended_lut = "off";
defparam \Add83~121 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~121 .shared_arith = "off";

arriav_lcell_comb \Add83~117 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~117_sumout ),
	.datae(gnd),
	.dataf(!\Add79~5_sumout ),
	.datag(gnd),
	.cin(\Add83~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~117_sumout ),
	.cout(\Add83~118 ),
	.shareout());
defparam \Add83~117 .extended_lut = "off";
defparam \Add83~117 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~117 .shared_arith = "off";

arriav_lcell_comb \Add83~113 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~113_sumout ),
	.datae(gnd),
	.dataf(!\Add79~9_sumout ),
	.datag(gnd),
	.cin(\Add83~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~113_sumout ),
	.cout(\Add83~114 ),
	.shareout());
defparam \Add83~113 .extended_lut = "off";
defparam \Add83~113 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~113 .shared_arith = "off";

arriav_lcell_comb \Add83~109 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~109_sumout ),
	.datae(gnd),
	.dataf(!\Add79~25_sumout ),
	.datag(gnd),
	.cin(\Add83~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~109_sumout ),
	.cout(\Add83~110 ),
	.shareout());
defparam \Add83~109 .extended_lut = "off";
defparam \Add83~109 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~109 .shared_arith = "off";

arriav_lcell_comb \Add83~105 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~105_sumout ),
	.datae(gnd),
	.dataf(!\Add79~29_sumout ),
	.datag(gnd),
	.cin(\Add83~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~105_sumout ),
	.cout(\Add83~106 ),
	.shareout());
defparam \Add83~105 .extended_lut = "off";
defparam \Add83~105 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~105 .shared_arith = "off";

arriav_lcell_comb \Add83~101 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~101_sumout ),
	.datae(gnd),
	.dataf(!\Add79~33_sumout ),
	.datag(gnd),
	.cin(\Add83~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~101_sumout ),
	.cout(\Add83~102 ),
	.shareout());
defparam \Add83~101 .extended_lut = "off";
defparam \Add83~101 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~101 .shared_arith = "off";

arriav_lcell_comb \Add83~97 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~97_sumout ),
	.datae(gnd),
	.dataf(!\Add79~37_sumout ),
	.datag(gnd),
	.cin(\Add83~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~97_sumout ),
	.cout(\Add83~98 ),
	.shareout());
defparam \Add83~97 .extended_lut = "off";
defparam \Add83~97 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~97 .shared_arith = "off";

arriav_lcell_comb \Add83~93 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~93_sumout ),
	.datae(gnd),
	.dataf(!\Add79~41_sumout ),
	.datag(gnd),
	.cin(\Add83~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~93_sumout ),
	.cout(\Add83~94 ),
	.shareout());
defparam \Add83~93 .extended_lut = "off";
defparam \Add83~93 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~93 .shared_arith = "off";

arriav_lcell_comb \Add83~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~89_sumout ),
	.datae(gnd),
	.dataf(!\Add79~45_sumout ),
	.datag(gnd),
	.cin(\Add83~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~89_sumout ),
	.cout(\Add83~90 ),
	.shareout());
defparam \Add83~89 .extended_lut = "off";
defparam \Add83~89 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~89 .shared_arith = "off";

arriav_lcell_comb \Add83~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~85_sumout ),
	.datae(gnd),
	.dataf(!\Add79~49_sumout ),
	.datag(gnd),
	.cin(\Add83~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~85_sumout ),
	.cout(\Add83~86 ),
	.shareout());
defparam \Add83~85 .extended_lut = "off";
defparam \Add83~85 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~85 .shared_arith = "off";

arriav_lcell_comb \Add83~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~81_sumout ),
	.datae(gnd),
	.dataf(!\Add79~53_sumout ),
	.datag(gnd),
	.cin(\Add83~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~81_sumout ),
	.cout(\Add83~82 ),
	.shareout());
defparam \Add83~81 .extended_lut = "off";
defparam \Add83~81 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~81 .shared_arith = "off";

arriav_lcell_comb \Add83~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~77_sumout ),
	.datae(gnd),
	.dataf(!\Add79~57_sumout ),
	.datag(gnd),
	.cin(\Add83~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~77_sumout ),
	.cout(\Add83~78 ),
	.shareout());
defparam \Add83~77 .extended_lut = "off";
defparam \Add83~77 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~77 .shared_arith = "off";

arriav_lcell_comb \Add83~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~73_sumout ),
	.datae(gnd),
	.dataf(!\Add79~61_sumout ),
	.datag(gnd),
	.cin(\Add83~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~73_sumout ),
	.cout(\Add83~74 ),
	.shareout());
defparam \Add83~73 .extended_lut = "off";
defparam \Add83~73 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~73 .shared_arith = "off";

arriav_lcell_comb \Add83~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~69_sumout ),
	.datae(gnd),
	.dataf(!\Add79~65_sumout ),
	.datag(gnd),
	.cin(\Add83~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~69_sumout ),
	.cout(\Add83~70 ),
	.shareout());
defparam \Add83~69 .extended_lut = "off";
defparam \Add83~69 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~69 .shared_arith = "off";

arriav_lcell_comb \Add83~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~17_sumout ),
	.datae(gnd),
	.dataf(!\Add79~17_sumout ),
	.datag(gnd),
	.cin(\Add83~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~9_sumout ),
	.cout(\Add83~10 ),
	.shareout());
defparam \Add83~9 .extended_lut = "off";
defparam \Add83~9 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~9 .shared_arith = "off";

arriav_lcell_comb \Add83~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~21_sumout ),
	.datae(gnd),
	.dataf(!\Add79~13_sumout ),
	.datag(gnd),
	.cin(\Add83~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~13_sumout ),
	.cout(\Add83~14 ),
	.shareout());
defparam \Add83~13 .extended_lut = "off";
defparam \Add83~13 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~13 .shared_arith = "off";

arriav_lcell_comb \Add83~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~25_sumout ),
	.datae(gnd),
	.dataf(!\Add79~21_sumout ),
	.datag(gnd),
	.cin(\Add83~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~21_sumout ),
	.cout(\Add83~22 ),
	.shareout());
defparam \Add83~21 .extended_lut = "off";
defparam \Add83~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~21 .shared_arith = "off";

arriav_lcell_comb \Add83~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~29_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~25_sumout ),
	.cout(\Add83~26 ),
	.shareout());
defparam \Add83~25 .extended_lut = "off";
defparam \Add83~25 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~25 .shared_arith = "off";

arriav_lcell_comb \Add83~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~33_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~29_sumout ),
	.cout(\Add83~30 ),
	.shareout());
defparam \Add83~29 .extended_lut = "off";
defparam \Add83~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~29 .shared_arith = "off";

arriav_lcell_comb \Add83~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~37_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~33_sumout ),
	.cout(\Add83~34 ),
	.shareout());
defparam \Add83~33 .extended_lut = "off";
defparam \Add83~33 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~33 .shared_arith = "off";

arriav_lcell_comb \Add83~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~41_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~37_sumout ),
	.cout(\Add83~38 ),
	.shareout());
defparam \Add83~37 .extended_lut = "off";
defparam \Add83~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~37 .shared_arith = "off";

arriav_lcell_comb \Add83~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~45_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~41_sumout ),
	.cout(\Add83~42 ),
	.shareout());
defparam \Add83~41 .extended_lut = "off";
defparam \Add83~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~41 .shared_arith = "off";

arriav_lcell_comb \Add83~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~49_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~45_sumout ),
	.cout(\Add83~46 ),
	.shareout());
defparam \Add83~45 .extended_lut = "off";
defparam \Add83~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~45 .shared_arith = "off";

arriav_lcell_comb \Add83~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~53_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~49_sumout ),
	.cout(\Add83~50 ),
	.shareout());
defparam \Add83~49 .extended_lut = "off";
defparam \Add83~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~49 .shared_arith = "off";

arriav_lcell_comb \Add83~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~57_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~53_sumout ),
	.cout(\Add83~54 ),
	.shareout());
defparam \Add83~53 .extended_lut = "off";
defparam \Add83~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~53 .shared_arith = "off";

arriav_lcell_comb \Add83~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~61_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~57_sumout ),
	.cout(\Add83~58 ),
	.shareout());
defparam \Add83~57 .extended_lut = "off";
defparam \Add83~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~57 .shared_arith = "off";

arriav_lcell_comb \Add83~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~65_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~61_sumout ),
	.cout(\Add83~62 ),
	.shareout());
defparam \Add83~61 .extended_lut = "off";
defparam \Add83~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~61 .shared_arith = "off";

arriav_lcell_comb \Add83~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~5_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~65_sumout ),
	.cout(\Add83~66 ),
	.shareout());
defparam \Add83~65 .extended_lut = "off";
defparam \Add83~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~65 .shared_arith = "off";

arriav_lcell_comb \Add83~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~1_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~1_sumout ),
	.cout(\Add83~2 ),
	.shareout());
defparam \Add83~1 .extended_lut = "off";
defparam \Add83~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~1 .shared_arith = "off";

arriav_lcell_comb \Add81~129 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~77_sumout ),
	.datae(gnd),
	.dataf(!\Add79~129_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~129_sumout ),
	.cout(\Add81~130 ),
	.shareout());
defparam \Add81~129 .extended_lut = "off";
defparam \Add81~129 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~129 .shared_arith = "off";

arriav_lcell_comb \Add81~125 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~73_sumout ),
	.datae(gnd),
	.dataf(!\Add79~125_sumout ),
	.datag(gnd),
	.cin(\Add81~130 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~125_sumout ),
	.cout(\Add81~126 ),
	.shareout());
defparam \Add81~125 .extended_lut = "off";
defparam \Add81~125 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~125 .shared_arith = "off";

arriav_lcell_comb \Add81~121 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~69_sumout ),
	.datae(gnd),
	.dataf(!\Add79~121_sumout ),
	.datag(gnd),
	.cin(\Add81~126 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~121_sumout ),
	.cout(\Add81~122 ),
	.shareout());
defparam \Add81~121 .extended_lut = "off";
defparam \Add81~121 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~121 .shared_arith = "off";

arriav_lcell_comb \Add81~117 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~17_sumout ),
	.datae(gnd),
	.dataf(!\Add79~117_sumout ),
	.datag(gnd),
	.cin(\Add81~122 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~117_sumout ),
	.cout(\Add81~118 ),
	.shareout());
defparam \Add81~117 .extended_lut = "off";
defparam \Add81~117 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~117 .shared_arith = "off";

arriav_lcell_comb \Add81~113 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~21_sumout ),
	.datae(gnd),
	.dataf(!\Add79~113_sumout ),
	.datag(gnd),
	.cin(\Add81~118 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~113_sumout ),
	.cout(\Add81~114 ),
	.shareout());
defparam \Add81~113 .extended_lut = "off";
defparam \Add81~113 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~113 .shared_arith = "off";

arriav_lcell_comb \Add81~109 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~25_sumout ),
	.datae(gnd),
	.dataf(!\Add79~109_sumout ),
	.datag(gnd),
	.cin(\Add81~114 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~109_sumout ),
	.cout(\Add81~110 ),
	.shareout());
defparam \Add81~109 .extended_lut = "off";
defparam \Add81~109 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~109 .shared_arith = "off";

arriav_lcell_comb \Add81~105 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~29_sumout ),
	.datae(gnd),
	.dataf(!\Add79~105_sumout ),
	.datag(gnd),
	.cin(\Add81~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~105_sumout ),
	.cout(\Add81~106 ),
	.shareout());
defparam \Add81~105 .extended_lut = "off";
defparam \Add81~105 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~105 .shared_arith = "off";

arriav_lcell_comb \Add81~101 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~33_sumout ),
	.datae(gnd),
	.dataf(!\Add79~101_sumout ),
	.datag(gnd),
	.cin(\Add81~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~101_sumout ),
	.cout(\Add81~102 ),
	.shareout());
defparam \Add81~101 .extended_lut = "off";
defparam \Add81~101 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~101 .shared_arith = "off";

arriav_lcell_comb \Add81~97 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~37_sumout ),
	.datae(gnd),
	.dataf(!\Add79~97_sumout ),
	.datag(gnd),
	.cin(\Add81~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~97_sumout ),
	.cout(\Add81~98 ),
	.shareout());
defparam \Add81~97 .extended_lut = "off";
defparam \Add81~97 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~97 .shared_arith = "off";

arriav_lcell_comb \Add81~93 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~41_sumout ),
	.datae(gnd),
	.dataf(!\Add79~93_sumout ),
	.datag(gnd),
	.cin(\Add81~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~93_sumout ),
	.cout(\Add81~94 ),
	.shareout());
defparam \Add81~93 .extended_lut = "off";
defparam \Add81~93 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~93 .shared_arith = "off";

arriav_lcell_comb \Add81~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~45_sumout ),
	.datae(gnd),
	.dataf(!\Add79~89_sumout ),
	.datag(gnd),
	.cin(\Add81~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~89_sumout ),
	.cout(\Add81~90 ),
	.shareout());
defparam \Add81~89 .extended_lut = "off";
defparam \Add81~89 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~89 .shared_arith = "off";

arriav_lcell_comb \Add81~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~49_sumout ),
	.datae(gnd),
	.dataf(!\Add79~85_sumout ),
	.datag(gnd),
	.cin(\Add81~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~85_sumout ),
	.cout(\Add81~86 ),
	.shareout());
defparam \Add81~85 .extended_lut = "off";
defparam \Add81~85 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~85 .shared_arith = "off";

arriav_lcell_comb \Add81~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~53_sumout ),
	.datae(gnd),
	.dataf(!\Add79~81_sumout ),
	.datag(gnd),
	.cin(\Add81~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~81_sumout ),
	.cout(\Add81~82 ),
	.shareout());
defparam \Add81~81 .extended_lut = "off";
defparam \Add81~81 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~81 .shared_arith = "off";

arriav_lcell_comb \Add81~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~57_sumout ),
	.datae(gnd),
	.dataf(!\Add79~77_sumout ),
	.datag(gnd),
	.cin(\Add81~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~77_sumout ),
	.cout(\Add81~78 ),
	.shareout());
defparam \Add81~77 .extended_lut = "off";
defparam \Add81~77 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~77 .shared_arith = "off";

arriav_lcell_comb \Add81~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~61_sumout ),
	.datae(gnd),
	.dataf(!\Add79~73_sumout ),
	.datag(gnd),
	.cin(\Add81~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~73_sumout ),
	.cout(\Add81~74 ),
	.shareout());
defparam \Add81~73 .extended_lut = "off";
defparam \Add81~73 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~73 .shared_arith = "off";

arriav_lcell_comb \Add81~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~65_sumout ),
	.datae(gnd),
	.dataf(!\Add79~69_sumout ),
	.datag(gnd),
	.cin(\Add81~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~69_sumout ),
	.cout(\Add81~70 ),
	.shareout());
defparam \Add81~69 .extended_lut = "off";
defparam \Add81~69 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~69 .shared_arith = "off";

arriav_lcell_comb \Add81~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~5_sumout ),
	.datae(gnd),
	.dataf(!\Add79~5_sumout ),
	.datag(gnd),
	.cin(\Add81~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~1_sumout ),
	.cout(\Add81~2 ),
	.shareout());
defparam \Add81~1 .extended_lut = "off";
defparam \Add81~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~1 .shared_arith = "off";

arriav_lcell_comb \Add82~129 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~129_sumout ),
	.datad(!\Add77~77_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add82~129_sumout ),
	.cout(\Add82~130 ),
	.shareout(\Add82~131 ));
defparam \Add82~129 .extended_lut = "off";
defparam \Add82~129 .lut_mask = 64'h0000FF0F00000FF0;
defparam \Add82~129 .shared_arith = "on";

arriav_lcell_comb \Add82~125 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~125_sumout ),
	.datad(!\Add77~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~130 ),
	.sharein(\Add82~131 ),
	.combout(),
	.sumout(\Add82~125_sumout ),
	.cout(\Add82~126 ),
	.shareout(\Add82~127 ));
defparam \Add82~125 .extended_lut = "off";
defparam \Add82~125 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~125 .shared_arith = "on";

arriav_lcell_comb \Add82~121 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~121_sumout ),
	.datad(!\Add77~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~126 ),
	.sharein(\Add82~127 ),
	.combout(),
	.sumout(\Add82~121_sumout ),
	.cout(\Add82~122 ),
	.shareout(\Add82~123 ));
defparam \Add82~121 .extended_lut = "off";
defparam \Add82~121 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~121 .shared_arith = "on";

arriav_lcell_comb \Add82~117 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~117_sumout ),
	.datad(!\Add77~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~122 ),
	.sharein(\Add82~123 ),
	.combout(),
	.sumout(\Add82~117_sumout ),
	.cout(\Add82~118 ),
	.shareout(\Add82~119 ));
defparam \Add82~117 .extended_lut = "off";
defparam \Add82~117 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~117 .shared_arith = "on";

arriav_lcell_comb \Add82~113 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~113_sumout ),
	.datad(!\Add77~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~118 ),
	.sharein(\Add82~119 ),
	.combout(),
	.sumout(\Add82~113_sumout ),
	.cout(\Add82~114 ),
	.shareout(\Add82~115 ));
defparam \Add82~113 .extended_lut = "off";
defparam \Add82~113 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~113 .shared_arith = "on";

arriav_lcell_comb \Add82~109 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~109_sumout ),
	.datad(!\Add77~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~114 ),
	.sharein(\Add82~115 ),
	.combout(),
	.sumout(\Add82~109_sumout ),
	.cout(\Add82~110 ),
	.shareout(\Add82~111 ));
defparam \Add82~109 .extended_lut = "off";
defparam \Add82~109 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~109 .shared_arith = "on";

arriav_lcell_comb \Add82~105 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~105_sumout ),
	.datad(!\Add77~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~110 ),
	.sharein(\Add82~111 ),
	.combout(),
	.sumout(\Add82~105_sumout ),
	.cout(\Add82~106 ),
	.shareout(\Add82~107 ));
defparam \Add82~105 .extended_lut = "off";
defparam \Add82~105 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~105 .shared_arith = "on";

arriav_lcell_comb \Add82~101 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~101_sumout ),
	.datad(!\Add77~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~106 ),
	.sharein(\Add82~107 ),
	.combout(),
	.sumout(\Add82~101_sumout ),
	.cout(\Add82~102 ),
	.shareout(\Add82~103 ));
defparam \Add82~101 .extended_lut = "off";
defparam \Add82~101 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~101 .shared_arith = "on";

arriav_lcell_comb \Add82~97 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~97_sumout ),
	.datad(!\Add77~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~102 ),
	.sharein(\Add82~103 ),
	.combout(),
	.sumout(\Add82~97_sumout ),
	.cout(\Add82~98 ),
	.shareout(\Add82~99 ));
defparam \Add82~97 .extended_lut = "off";
defparam \Add82~97 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~97 .shared_arith = "on";

arriav_lcell_comb \Add82~93 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~93_sumout ),
	.datad(!\Add77~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~98 ),
	.sharein(\Add82~99 ),
	.combout(),
	.sumout(\Add82~93_sumout ),
	.cout(\Add82~94 ),
	.shareout(\Add82~95 ));
defparam \Add82~93 .extended_lut = "off";
defparam \Add82~93 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~93 .shared_arith = "on";

arriav_lcell_comb \Add82~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~89_sumout ),
	.datad(!\Add77~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~94 ),
	.sharein(\Add82~95 ),
	.combout(),
	.sumout(\Add82~89_sumout ),
	.cout(\Add82~90 ),
	.shareout(\Add82~91 ));
defparam \Add82~89 .extended_lut = "off";
defparam \Add82~89 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~89 .shared_arith = "on";

arriav_lcell_comb \Add82~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~85_sumout ),
	.datad(!\Add77~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~90 ),
	.sharein(\Add82~91 ),
	.combout(),
	.sumout(\Add82~85_sumout ),
	.cout(\Add82~86 ),
	.shareout(\Add82~87 ));
defparam \Add82~85 .extended_lut = "off";
defparam \Add82~85 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~85 .shared_arith = "on";

arriav_lcell_comb \Add82~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~81_sumout ),
	.datad(!\Add77~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~86 ),
	.sharein(\Add82~87 ),
	.combout(),
	.sumout(\Add82~81_sumout ),
	.cout(\Add82~82 ),
	.shareout(\Add82~83 ));
defparam \Add82~81 .extended_lut = "off";
defparam \Add82~81 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~81 .shared_arith = "on";

arriav_lcell_comb \Add82~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~77_sumout ),
	.datad(!\Add77~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~82 ),
	.sharein(\Add82~83 ),
	.combout(),
	.sumout(\Add82~77_sumout ),
	.cout(\Add82~78 ),
	.shareout(\Add82~79 ));
defparam \Add82~77 .extended_lut = "off";
defparam \Add82~77 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~77 .shared_arith = "on";

arriav_lcell_comb \Add82~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~73_sumout ),
	.datad(!\Add77~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~78 ),
	.sharein(\Add82~79 ),
	.combout(),
	.sumout(\Add82~73_sumout ),
	.cout(\Add82~74 ),
	.shareout(\Add82~75 ));
defparam \Add82~73 .extended_lut = "off";
defparam \Add82~73 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~73 .shared_arith = "on";

arriav_lcell_comb \Add82~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~69_sumout ),
	.datad(!\Add77~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~74 ),
	.sharein(\Add82~75 ),
	.combout(),
	.sumout(\Add82~69_sumout ),
	.cout(\Add82~70 ),
	.shareout(\Add82~71 ));
defparam \Add82~69 .extended_lut = "off";
defparam \Add82~69 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~69 .shared_arith = "on";

arriav_lcell_comb \Add82~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~5_sumout ),
	.datad(!\Add77~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~70 ),
	.sharein(\Add82~71 ),
	.combout(),
	.sumout(\Add82~1_sumout ),
	.cout(\Add82~2 ),
	.shareout(\Add82~3 ));
defparam \Add82~1 .extended_lut = "off";
defparam \Add82~1 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~1 .shared_arith = "on";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_a[16]~0 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~1_sumout ),
	.datac(!\Add82~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_a[16]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_a[16]~0 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_a[16]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_a[16]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_a[15]~2 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~69_sumout ),
	.datac(!\Add82~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_a[15]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_a[15]~2 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_a[15]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_a[15]~2 .shared_arith = "off";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_a[14]~3 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~73_sumout ),
	.datac(!\Add82~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_a[14]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_a[14]~3 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_a[14]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_a[14]~3 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[13]~0 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~77_sumout ),
	.datac(!\Add82~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[13]~0 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[13]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[13]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[12]~1 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~81_sumout ),
	.datac(!\Add82~81_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[12]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[12]~1 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[12]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[12]~1 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[11]~2 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~85_sumout ),
	.datac(!\Add82~85_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[11]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[11]~2 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[11]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[11]~2 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[10]~3 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~89_sumout ),
	.datac(!\Add82~89_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[10]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[10]~3 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[10]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[10]~3 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[9]~4 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~93_sumout ),
	.datac(!\Add82~93_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[9]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[9]~4 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[9]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[9]~4 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[8]~5 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~97_sumout ),
	.datac(!\Add82~97_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[8]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[8]~5 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[8]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[8]~5 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[7]~6 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~101_sumout ),
	.datac(!\Add82~101_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[7]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[7]~6 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[7]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[7]~6 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[6]~7 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~105_sumout ),
	.datac(!\Add82~105_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[6]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[6]~7 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[6]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[6]~7 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[5]~8 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~109_sumout ),
	.datac(!\Add82~109_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[5]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[5]~8 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[5]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[5]~8 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[4]~9 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~113_sumout ),
	.datac(!\Add82~113_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[4]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[4]~9 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[4]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[4]~9 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[3]~10 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~117_sumout ),
	.datac(!\Add82~117_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[3]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[3]~10 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[3]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[3]~10 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[2]~11 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~121_sumout ),
	.datac(!\Add82~121_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[2]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[2]~11 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[2]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[2]~11 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[1]~12 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~125_sumout ),
	.datac(!\Add82~125_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[1]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[1]~12 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[1]~12 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[1]~12 .shared_arith = "off";

arriav_lcell_comb \xip1E_14_uid267_sincosTest_o[0]~13 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~129_sumout ),
	.datac(!\Add82~129_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_14_uid267_sincosTest_o[0]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_14_uid267_sincosTest_o[0]~13 .extended_lut = "off";
defparam \xip1E_14_uid267_sincosTest_o[0]~13 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_14_uid267_sincosTest_o[0]~13 .shared_arith = "off";

arriav_lcell_comb \Add90~131 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~131_cout ),
	.shareout());
defparam \Add90~131 .extended_lut = "off";
defparam \Add90~131 .lut_mask = 64'h000000000000AAAA;
defparam \Add90~131 .shared_arith = "off";

arriav_lcell_comb \Add90~127 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~73_sumout ),
	.datad(!\Add83~73_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[0]~13_combout ),
	.datag(gnd),
	.cin(\Add90~131_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~127_cout ),
	.shareout());
defparam \Add90~127 .extended_lut = "off";
defparam \Add90~127 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~127 .shared_arith = "off";

arriav_lcell_comb \Add90~123 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~69_sumout ),
	.datad(!\Add83~69_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[1]~12_combout ),
	.datag(gnd),
	.cin(\Add90~127_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~123_cout ),
	.shareout());
defparam \Add90~123 .extended_lut = "off";
defparam \Add90~123 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~123 .shared_arith = "off";

arriav_lcell_comb \Add90~119 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~9_sumout ),
	.datad(!\Add83~9_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[2]~11_combout ),
	.datag(gnd),
	.cin(\Add90~123_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~119_cout ),
	.shareout());
defparam \Add90~119 .extended_lut = "off";
defparam \Add90~119 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~119 .shared_arith = "off";

arriav_lcell_comb \Add90~115 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~13_sumout ),
	.datad(!\Add83~13_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[3]~10_combout ),
	.datag(gnd),
	.cin(\Add90~119_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~115_cout ),
	.shareout());
defparam \Add90~115 .extended_lut = "off";
defparam \Add90~115 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~115 .shared_arith = "off";

arriav_lcell_comb \Add90~111 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~21_sumout ),
	.datad(!\Add83~21_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[4]~9_combout ),
	.datag(gnd),
	.cin(\Add90~115_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~111_cout ),
	.shareout());
defparam \Add90~111 .extended_lut = "off";
defparam \Add90~111 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~111 .shared_arith = "off";

arriav_lcell_comb \Add90~107 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~25_sumout ),
	.datad(!\Add83~25_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[5]~8_combout ),
	.datag(gnd),
	.cin(\Add90~111_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~107_cout ),
	.shareout());
defparam \Add90~107 .extended_lut = "off";
defparam \Add90~107 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~107 .shared_arith = "off";

arriav_lcell_comb \Add90~103 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~29_sumout ),
	.datad(!\Add83~29_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[6]~7_combout ),
	.datag(gnd),
	.cin(\Add90~107_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~103_cout ),
	.shareout());
defparam \Add90~103 .extended_lut = "off";
defparam \Add90~103 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~103 .shared_arith = "off";

arriav_lcell_comb \Add90~99 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~33_sumout ),
	.datad(!\Add83~33_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[7]~6_combout ),
	.datag(gnd),
	.cin(\Add90~103_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~99_cout ),
	.shareout());
defparam \Add90~99 .extended_lut = "off";
defparam \Add90~99 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~99 .shared_arith = "off";

arriav_lcell_comb \Add90~95 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~37_sumout ),
	.datad(!\Add83~37_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[8]~5_combout ),
	.datag(gnd),
	.cin(\Add90~99_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~95_cout ),
	.shareout());
defparam \Add90~95 .extended_lut = "off";
defparam \Add90~95 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~95 .shared_arith = "off";

arriav_lcell_comb \Add90~91 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~41_sumout ),
	.datad(!\Add83~41_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[9]~4_combout ),
	.datag(gnd),
	.cin(\Add90~95_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~91_cout ),
	.shareout());
defparam \Add90~91 .extended_lut = "off";
defparam \Add90~91 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~91 .shared_arith = "off";

arriav_lcell_comb \Add90~87 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~45_sumout ),
	.datad(!\Add83~45_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[10]~3_combout ),
	.datag(gnd),
	.cin(\Add90~91_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~87_cout ),
	.shareout());
defparam \Add90~87 .extended_lut = "off";
defparam \Add90~87 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~87 .shared_arith = "off";

arriav_lcell_comb \Add90~83 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~49_sumout ),
	.datad(!\Add83~49_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[11]~2_combout ),
	.datag(gnd),
	.cin(\Add90~87_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~83_cout ),
	.shareout());
defparam \Add90~83 .extended_lut = "off";
defparam \Add90~83 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~83 .shared_arith = "off";

arriav_lcell_comb \Add90~79 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~53_sumout ),
	.datad(!\Add83~53_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[12]~1_combout ),
	.datag(gnd),
	.cin(\Add90~83_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~79_cout ),
	.shareout());
defparam \Add90~79 .extended_lut = "off";
defparam \Add90~79 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~79 .shared_arith = "off";

arriav_lcell_comb \Add90~75 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~57_sumout ),
	.datad(!\Add83~57_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_14_uid267_sincosTest_o[13]~0_combout ),
	.datag(gnd),
	.cin(\Add90~79_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~75_cout ),
	.shareout());
defparam \Add90~75 .extended_lut = "off";
defparam \Add90~75 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~75 .shared_arith = "off";

arriav_lcell_comb \Add90~71 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~61_sumout ),
	.datad(!\Add83~61_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_a[14]~3_combout ),
	.datag(gnd),
	.cin(\Add90~75_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~71_cout ),
	.shareout());
defparam \Add90~71 .extended_lut = "off";
defparam \Add90~71 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~71 .shared_arith = "off";

arriav_lcell_comb \Add90~66 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~65_sumout ),
	.datad(!\Add83~65_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_a[15]~2_combout ),
	.datag(gnd),
	.cin(\Add90~71_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add90~66_cout ),
	.shareout());
defparam \Add90~66 .extended_lut = "off";
defparam \Add90~66 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~66 .shared_arith = "off";

arriav_lcell_comb \Add90~1 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~1_sumout ),
	.datad(!\Add83~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_a[16]~0_combout ),
	.datag(gnd),
	.cin(\Add90~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~1_sumout ),
	.cout(\Add90~2 ),
	.shareout());
defparam \Add90~1 .extended_lut = "off";
defparam \Add90~1 .lut_mask = 64'h0000FF000000A965;
defparam \Add90~1 .shared_arith = "off";

arriav_lcell_comb \Add77~9 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][31]~q ),
	.datag(gnd),
	.cin(\Add77~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~9_sumout ),
	.cout(\Add77~10 ),
	.shareout());
defparam \Add77~9 .extended_lut = "off";
defparam \Add77~9 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~9 .shared_arith = "off";

arriav_lcell_comb \Add84~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~2 ),
	.sharein(\Add84~3 ),
	.combout(),
	.sumout(\Add84~5_sumout ),
	.cout(\Add84~6 ),
	.shareout(\Add84~7 ));
defparam \Add84~5 .extended_lut = "off";
defparam \Add84~5 .lut_mask = 64'h000000F00000F00F;
defparam \Add84~5 .shared_arith = "on";

arriav_lcell_comb \Add83~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~9_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~5_sumout ),
	.cout(\Add83~6 ),
	.shareout());
defparam \Add83~5 .extended_lut = "off";
defparam \Add83~5 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~5 .shared_arith = "off";

arriav_lcell_comb \Add81~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~1_sumout ),
	.datae(gnd),
	.dataf(!\Add79~9_sumout ),
	.datag(gnd),
	.cin(\Add81~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~5_sumout ),
	.cout(\Add81~6 ),
	.shareout());
defparam \Add81~5 .extended_lut = "off";
defparam \Add81~5 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~5 .shared_arith = "off";

arriav_lcell_comb \Add82~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~9_sumout ),
	.datad(!\Add77~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~2 ),
	.sharein(\Add82~3 ),
	.combout(),
	.sumout(\Add82~5_sumout ),
	.cout(\Add82~6 ),
	.shareout(\Add82~7 ));
defparam \Add82~5 .extended_lut = "off";
defparam \Add82~5 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~5 .shared_arith = "on";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_a[17]~1 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~5_sumout ),
	.datac(!\Add82~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_a[17]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_a[17]~1 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_a[17]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_a[17]~1 .shared_arith = "off";

arriav_lcell_comb \Add90~5 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add84~5_sumout ),
	.datad(!\Add83~5_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_a[17]~1_combout ),
	.datag(gnd),
	.cin(\Add90~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~5_sumout ),
	.cout(\Add90~6 ),
	.shareout());
defparam \Add90~5 .extended_lut = "off";
defparam \Add90~5 .lut_mask = 64'h0000FF000000C963;
defparam \Add90~5 .shared_arith = "off";

arriav_lcell_comb \Add92~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~1_sumout ),
	.datae(gnd),
	.dataf(!\Add90~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~1_sumout ),
	.cout(\Add92~2 ),
	.shareout());
defparam \Add92~1 .extended_lut = "off";
defparam \Add92~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add92~1 .shared_arith = "off";

arriav_lcell_comb \Add94~1 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~1_sumout ),
	.cout(\Add94~2 ),
	.shareout());
defparam \Add94~1 .extended_lut = "off";
defparam \Add94~1 .lut_mask = 64'h0000BBBB000044BB;
defparam \Add94~1 .shared_arith = "off";

arriav_lcell_comb \Add77~13 (
	.dataa(!\redist2_xMSB_uid239_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xip1_12_uid236_sincosTest_b_1|delay_signals[0][32]~q ),
	.datae(gnd),
	.dataf(!\redist3_yip1_12_uid237_sincosTest_b_1|delay_signals[0][32]~q ),
	.datag(gnd),
	.cin(\Add77~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add77~13_sumout ),
	.cout(),
	.shareout());
defparam \Add77~13 .extended_lut = "off";
defparam \Add77~13 .lut_mask = 64'h0000FF00000055AA;
defparam \Add77~13 .shared_arith = "off";

arriav_lcell_comb \Add81~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~9_sumout ),
	.datae(gnd),
	.dataf(!\Add79~25_sumout ),
	.datag(gnd),
	.cin(\Add81~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~17_sumout ),
	.cout(\Add81~18 ),
	.shareout());
defparam \Add81~17 .extended_lut = "off";
defparam \Add81~17 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~17 .shared_arith = "off";

arriav_lcell_comb \Add81~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~29_sumout ),
	.datag(gnd),
	.cin(\Add81~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~25_sumout ),
	.cout(\Add81~26 ),
	.shareout());
defparam \Add81~25 .extended_lut = "off";
defparam \Add81~25 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~25 .shared_arith = "off";

arriav_lcell_comb \Add81~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~33_sumout ),
	.datag(gnd),
	.cin(\Add81~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~29_sumout ),
	.cout(\Add81~30 ),
	.shareout());
defparam \Add81~29 .extended_lut = "off";
defparam \Add81~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~29 .shared_arith = "off";

arriav_lcell_comb \Add81~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~37_sumout ),
	.datag(gnd),
	.cin(\Add81~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~33_sumout ),
	.cout(\Add81~34 ),
	.shareout());
defparam \Add81~33 .extended_lut = "off";
defparam \Add81~33 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~33 .shared_arith = "off";

arriav_lcell_comb \Add81~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~41_sumout ),
	.datag(gnd),
	.cin(\Add81~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~37_sumout ),
	.cout(\Add81~38 ),
	.shareout());
defparam \Add81~37 .extended_lut = "off";
defparam \Add81~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~37 .shared_arith = "off";

arriav_lcell_comb \Add81~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~45_sumout ),
	.datag(gnd),
	.cin(\Add81~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~41_sumout ),
	.cout(\Add81~42 ),
	.shareout());
defparam \Add81~41 .extended_lut = "off";
defparam \Add81~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~41 .shared_arith = "off";

arriav_lcell_comb \Add81~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~49_sumout ),
	.datag(gnd),
	.cin(\Add81~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~45_sumout ),
	.cout(\Add81~46 ),
	.shareout());
defparam \Add81~45 .extended_lut = "off";
defparam \Add81~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~45 .shared_arith = "off";

arriav_lcell_comb \Add81~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~53_sumout ),
	.datag(gnd),
	.cin(\Add81~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~49_sumout ),
	.cout(\Add81~50 ),
	.shareout());
defparam \Add81~49 .extended_lut = "off";
defparam \Add81~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~49 .shared_arith = "off";

arriav_lcell_comb \Add81~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~57_sumout ),
	.datag(gnd),
	.cin(\Add81~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~53_sumout ),
	.cout(\Add81~54 ),
	.shareout());
defparam \Add81~53 .extended_lut = "off";
defparam \Add81~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~53 .shared_arith = "off";

arriav_lcell_comb \Add81~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~61_sumout ),
	.datag(gnd),
	.cin(\Add81~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~57_sumout ),
	.cout(\Add81~58 ),
	.shareout());
defparam \Add81~57 .extended_lut = "off";
defparam \Add81~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~57 .shared_arith = "off";

arriav_lcell_comb \Add81~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~65_sumout ),
	.datag(gnd),
	.cin(\Add81~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~61_sumout ),
	.cout(\Add81~62 ),
	.shareout());
defparam \Add81~61 .extended_lut = "off";
defparam \Add81~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~61 .shared_arith = "off";

arriav_lcell_comb \Add81~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~17_sumout ),
	.datag(gnd),
	.cin(\Add81~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~65_sumout ),
	.cout(\Add81~66 ),
	.shareout());
defparam \Add81~65 .extended_lut = "off";
defparam \Add81~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~65 .shared_arith = "off";

arriav_lcell_comb \Add81~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~13_sumout ),
	.datag(gnd),
	.cin(\Add81~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~9_sumout ),
	.cout(\Add81~10 ),
	.shareout());
defparam \Add81~9 .extended_lut = "off";
defparam \Add81~9 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~9 .shared_arith = "off";

arriav_lcell_comb \Add82~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~25_sumout ),
	.datad(!\Add77~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~6 ),
	.sharein(\Add82~7 ),
	.combout(),
	.sumout(\Add82~17_sumout ),
	.cout(\Add82~18 ),
	.shareout(\Add82~19 ));
defparam \Add82~17 .extended_lut = "off";
defparam \Add82~17 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~17 .shared_arith = "on";

arriav_lcell_comb \Add82~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~29_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~18 ),
	.sharein(\Add82~19 ),
	.combout(),
	.sumout(\Add82~25_sumout ),
	.cout(\Add82~26 ),
	.shareout(\Add82~27 ));
defparam \Add82~25 .extended_lut = "off";
defparam \Add82~25 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~25 .shared_arith = "on";

arriav_lcell_comb \Add82~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~33_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~26 ),
	.sharein(\Add82~27 ),
	.combout(),
	.sumout(\Add82~29_sumout ),
	.cout(\Add82~30 ),
	.shareout(\Add82~31 ));
defparam \Add82~29 .extended_lut = "off";
defparam \Add82~29 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~29 .shared_arith = "on";

arriav_lcell_comb \Add82~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~37_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~30 ),
	.sharein(\Add82~31 ),
	.combout(),
	.sumout(\Add82~33_sumout ),
	.cout(\Add82~34 ),
	.shareout(\Add82~35 ));
defparam \Add82~33 .extended_lut = "off";
defparam \Add82~33 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~33 .shared_arith = "on";

arriav_lcell_comb \Add82~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~41_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~34 ),
	.sharein(\Add82~35 ),
	.combout(),
	.sumout(\Add82~37_sumout ),
	.cout(\Add82~38 ),
	.shareout(\Add82~39 ));
defparam \Add82~37 .extended_lut = "off";
defparam \Add82~37 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~37 .shared_arith = "on";

arriav_lcell_comb \Add82~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~45_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~38 ),
	.sharein(\Add82~39 ),
	.combout(),
	.sumout(\Add82~41_sumout ),
	.cout(\Add82~42 ),
	.shareout(\Add82~43 ));
defparam \Add82~41 .extended_lut = "off";
defparam \Add82~41 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~41 .shared_arith = "on";

arriav_lcell_comb \Add82~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~49_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~42 ),
	.sharein(\Add82~43 ),
	.combout(),
	.sumout(\Add82~45_sumout ),
	.cout(\Add82~46 ),
	.shareout(\Add82~47 ));
defparam \Add82~45 .extended_lut = "off";
defparam \Add82~45 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~45 .shared_arith = "on";

arriav_lcell_comb \Add82~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~53_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~46 ),
	.sharein(\Add82~47 ),
	.combout(),
	.sumout(\Add82~49_sumout ),
	.cout(\Add82~50 ),
	.shareout(\Add82~51 ));
defparam \Add82~49 .extended_lut = "off";
defparam \Add82~49 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~49 .shared_arith = "on";

arriav_lcell_comb \Add82~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~57_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~50 ),
	.sharein(\Add82~51 ),
	.combout(),
	.sumout(\Add82~53_sumout ),
	.cout(\Add82~54 ),
	.shareout(\Add82~55 ));
defparam \Add82~53 .extended_lut = "off";
defparam \Add82~53 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~53 .shared_arith = "on";

arriav_lcell_comb \Add82~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~61_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~54 ),
	.sharein(\Add82~55 ),
	.combout(),
	.sumout(\Add82~57_sumout ),
	.cout(\Add82~58 ),
	.shareout(\Add82~59 ));
defparam \Add82~57 .extended_lut = "off";
defparam \Add82~57 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~57 .shared_arith = "on";

arriav_lcell_comb \Add82~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~65_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~58 ),
	.sharein(\Add82~59 ),
	.combout(),
	.sumout(\Add82~61_sumout ),
	.cout(\Add82~62 ),
	.shareout(\Add82~63 ));
defparam \Add82~61 .extended_lut = "off";
defparam \Add82~61 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~61 .shared_arith = "on";

arriav_lcell_comb \Add82~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~17_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~62 ),
	.sharein(\Add82~63 ),
	.combout(),
	.sumout(\Add82~65_sumout ),
	.cout(\Add82~66 ),
	.shareout(\Add82~67 ));
defparam \Add82~65 .extended_lut = "off";
defparam \Add82~65 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~65 .shared_arith = "on";

arriav_lcell_comb \Add82~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~13_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~66 ),
	.sharein(\Add82~67 ),
	.combout(),
	.sumout(\Add82~9_sumout ),
	.cout(\Add82~10 ),
	.shareout(\Add82~11 ));
defparam \Add82~9 .extended_lut = "off";
defparam \Add82~9 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~9 .shared_arith = "on";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_b[2]~0 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~9_sumout ),
	.datac(!\Add83~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_b[2]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_b[2]~0 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_b[2]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_b[2]~0 .shared_arith = "off";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_b[1]~2 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~69_sumout ),
	.datac(!\Add83~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_b[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_b[1]~2 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_b[1]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_b[1]~2 .shared_arith = "off";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_b[0]~3 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~73_sumout ),
	.datac(!\Add83~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_b[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_b[0]~3 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_b[0]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_b[0]~3 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[13]~0 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~77_sumout ),
	.datac(!\Add83~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[13]~0 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[13]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[13]~0 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[12]~1 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~81_sumout ),
	.datac(!\Add83~81_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[12]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[12]~1 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[12]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[12]~1 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[11]~2 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~85_sumout ),
	.datac(!\Add83~85_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[11]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[11]~2 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[11]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[11]~2 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[10]~3 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~89_sumout ),
	.datac(!\Add83~89_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[10]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[10]~3 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[10]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[10]~3 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[9]~4 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~93_sumout ),
	.datac(!\Add83~93_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[9]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[9]~4 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[9]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[9]~4 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[8]~5 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~97_sumout ),
	.datac(!\Add83~97_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[8]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[8]~5 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[8]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[8]~5 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[7]~6 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~101_sumout ),
	.datac(!\Add83~101_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[7]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[7]~6 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[7]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[7]~6 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[6]~7 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~105_sumout ),
	.datac(!\Add83~105_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[6]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[6]~7 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[6]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[6]~7 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[5]~8 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~109_sumout ),
	.datac(!\Add83~109_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[5]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[5]~8 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[5]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[5]~8 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[4]~9 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~113_sumout ),
	.datac(!\Add83~113_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[4]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[4]~9 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[4]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[4]~9 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[3]~10 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~117_sumout ),
	.datac(!\Add83~117_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[3]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[3]~10 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[3]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[3]~10 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[2]~11 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~121_sumout ),
	.datac(!\Add83~121_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[2]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[2]~11 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[2]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[2]~11 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[1]~12 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~125_sumout ),
	.datac(!\Add83~125_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[1]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[1]~12 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[1]~12 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[1]~12 .shared_arith = "off";

arriav_lcell_comb \yip1E_14_uid268_sincosTest_o[0]~13 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~129_sumout ),
	.datac(!\Add83~129_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_14_uid268_sincosTest_o[0]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_14_uid268_sincosTest_o[0]~13 .extended_lut = "off";
defparam \yip1E_14_uid268_sincosTest_o[0]~13 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_14_uid268_sincosTest_o[0]~13 .shared_arith = "off";

arriav_lcell_comb \Add85~131 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~131_cout ),
	.shareout());
defparam \Add85~131 .extended_lut = "off";
defparam \Add85~131 .lut_mask = 64'h0000000000005555;
defparam \Add85~131 .shared_arith = "off";

arriav_lcell_comb \Add85~127 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~73_sumout ),
	.datad(!\Add82~73_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[0]~13_combout ),
	.datag(gnd),
	.cin(\Add85~131_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~127_cout ),
	.shareout());
defparam \Add85~127 .extended_lut = "off";
defparam \Add85~127 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~127 .shared_arith = "off";

arriav_lcell_comb \Add85~123 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~69_sumout ),
	.datad(!\Add82~69_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[1]~12_combout ),
	.datag(gnd),
	.cin(\Add85~127_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~123_cout ),
	.shareout());
defparam \Add85~123 .extended_lut = "off";
defparam \Add85~123 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~123 .shared_arith = "off";

arriav_lcell_comb \Add85~119 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~1_sumout ),
	.datad(!\Add82~1_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[2]~11_combout ),
	.datag(gnd),
	.cin(\Add85~123_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~119_cout ),
	.shareout());
defparam \Add85~119 .extended_lut = "off";
defparam \Add85~119 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~119 .shared_arith = "off";

arriav_lcell_comb \Add85~115 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~5_sumout ),
	.datad(!\Add82~5_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[3]~10_combout ),
	.datag(gnd),
	.cin(\Add85~119_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~115_cout ),
	.shareout());
defparam \Add85~115 .extended_lut = "off";
defparam \Add85~115 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~115 .shared_arith = "off";

arriav_lcell_comb \Add85~111 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~17_sumout ),
	.datad(!\Add82~17_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[4]~9_combout ),
	.datag(gnd),
	.cin(\Add85~115_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~111_cout ),
	.shareout());
defparam \Add85~111 .extended_lut = "off";
defparam \Add85~111 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~111 .shared_arith = "off";

arriav_lcell_comb \Add85~107 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~25_sumout ),
	.datad(!\Add82~25_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[5]~8_combout ),
	.datag(gnd),
	.cin(\Add85~111_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~107_cout ),
	.shareout());
defparam \Add85~107 .extended_lut = "off";
defparam \Add85~107 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~107 .shared_arith = "off";

arriav_lcell_comb \Add85~103 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~29_sumout ),
	.datad(!\Add82~29_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[6]~7_combout ),
	.datag(gnd),
	.cin(\Add85~107_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~103_cout ),
	.shareout());
defparam \Add85~103 .extended_lut = "off";
defparam \Add85~103 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~103 .shared_arith = "off";

arriav_lcell_comb \Add85~99 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~33_sumout ),
	.datad(!\Add82~33_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[7]~6_combout ),
	.datag(gnd),
	.cin(\Add85~103_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~99_cout ),
	.shareout());
defparam \Add85~99 .extended_lut = "off";
defparam \Add85~99 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~99 .shared_arith = "off";

arriav_lcell_comb \Add85~95 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~37_sumout ),
	.datad(!\Add82~37_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[8]~5_combout ),
	.datag(gnd),
	.cin(\Add85~99_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~95_cout ),
	.shareout());
defparam \Add85~95 .extended_lut = "off";
defparam \Add85~95 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~95 .shared_arith = "off";

arriav_lcell_comb \Add85~91 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~41_sumout ),
	.datad(!\Add82~41_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[9]~4_combout ),
	.datag(gnd),
	.cin(\Add85~95_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~91_cout ),
	.shareout());
defparam \Add85~91 .extended_lut = "off";
defparam \Add85~91 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~91 .shared_arith = "off";

arriav_lcell_comb \Add85~87 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~45_sumout ),
	.datad(!\Add82~45_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[10]~3_combout ),
	.datag(gnd),
	.cin(\Add85~91_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~87_cout ),
	.shareout());
defparam \Add85~87 .extended_lut = "off";
defparam \Add85~87 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~87 .shared_arith = "off";

arriav_lcell_comb \Add85~83 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~49_sumout ),
	.datad(!\Add82~49_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[11]~2_combout ),
	.datag(gnd),
	.cin(\Add85~87_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~83_cout ),
	.shareout());
defparam \Add85~83 .extended_lut = "off";
defparam \Add85~83 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~83 .shared_arith = "off";

arriav_lcell_comb \Add85~79 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~53_sumout ),
	.datad(!\Add82~53_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[12]~1_combout ),
	.datag(gnd),
	.cin(\Add85~83_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~79_cout ),
	.shareout());
defparam \Add85~79 .extended_lut = "off";
defparam \Add85~79 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~79 .shared_arith = "off";

arriav_lcell_comb \Add85~75 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~57_sumout ),
	.datad(!\Add82~57_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_14_uid268_sincosTest_o[13]~0_combout ),
	.datag(gnd),
	.cin(\Add85~79_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~75_cout ),
	.shareout());
defparam \Add85~75 .extended_lut = "off";
defparam \Add85~75 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~75 .shared_arith = "off";

arriav_lcell_comb \Add85~71 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~61_sumout ),
	.datad(!\Add82~61_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_b[0]~3_combout ),
	.datag(gnd),
	.cin(\Add85~75_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~71_cout ),
	.shareout());
defparam \Add85~71 .extended_lut = "off";
defparam \Add85~71 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~71 .shared_arith = "off";

arriav_lcell_comb \Add85~66 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~65_sumout ),
	.datad(!\Add82~65_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_b[1]~2_combout ),
	.datag(gnd),
	.cin(\Add85~71_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add85~66_cout ),
	.shareout());
defparam \Add85~66 .extended_lut = "off";
defparam \Add85~66 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~66 .shared_arith = "off";

arriav_lcell_comb \Add85~1 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~9_sumout ),
	.datad(!\Add82~9_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_b[2]~0_combout ),
	.datag(gnd),
	.cin(\Add85~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~1_sumout ),
	.cout(\Add85~2 ),
	.shareout());
defparam \Add85~1 .extended_lut = "off";
defparam \Add85~1 .lut_mask = 64'h0000FF000000569A;
defparam \Add85~1 .shared_arith = "off";

arriav_lcell_comb \Add81~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~21_sumout ),
	.datag(gnd),
	.cin(\Add81~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~13_sumout ),
	.cout(\Add81~14 ),
	.shareout());
defparam \Add81~13 .extended_lut = "off";
defparam \Add81~13 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~13 .shared_arith = "off";

arriav_lcell_comb \Add82~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~21_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~10 ),
	.sharein(\Add82~11 ),
	.combout(),
	.sumout(\Add82~13_sumout ),
	.cout(\Add82~14 ),
	.shareout(\Add82~15 ));
defparam \Add82~13 .extended_lut = "off";
defparam \Add82~13 .lut_mask = 64'h00000F000000F00F;
defparam \Add82~13 .shared_arith = "on";

arriav_lcell_comb \xip1E_15_uid286_sincosTest_b[3]~1 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~13_sumout ),
	.datac(!\Add83~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_15_uid286_sincosTest_b[3]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_15_uid286_sincosTest_b[3]~1 .extended_lut = "off";
defparam \xip1E_15_uid286_sincosTest_b[3]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_15_uid286_sincosTest_b[3]~1 .shared_arith = "off";

arriav_lcell_comb \Add85~5 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add81~13_sumout ),
	.datad(!\Add82~13_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_15_uid286_sincosTest_b[3]~1_combout ),
	.datag(gnd),
	.cin(\Add85~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~5_sumout ),
	.cout(\Add85~6 ),
	.shareout());
defparam \Add85~5 .extended_lut = "off";
defparam \Add85~5 .lut_mask = 64'h0000FF000000369C;
defparam \Add85~5 .shared_arith = "off";

arriav_lcell_comb \Add87~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~1_sumout ),
	.datae(gnd),
	.dataf(!\Add85~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~1_sumout ),
	.cout(\Add87~2 ),
	.shareout());
defparam \Add87~1 .extended_lut = "off";
defparam \Add87~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add87~1 .shared_arith = "off";

arriav_lcell_comb \Add89~1 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~1_sumout ),
	.cout(\Add89~2 ),
	.shareout());
defparam \Add89~1 .extended_lut = "off";
defparam \Add89~1 .lut_mask = 64'h00008A8A0000758A;
defparam \Add89~1 .shared_arith = "off";

arriav_lcell_comb \Add83~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add83~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add83~17_sumout ),
	.cout(),
	.shareout());
defparam \Add83~17 .extended_lut = "off";
defparam \Add83~17 .lut_mask = 64'h0000FF00000000FF;
defparam \Add83~17 .shared_arith = "off";

arriav_lcell_comb \Add84~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add84~6 ),
	.sharein(\Add84~7 ),
	.combout(),
	.sumout(\Add84~17_sumout ),
	.cout(),
	.shareout());
defparam \Add84~17 .extended_lut = "off";
defparam \Add84~17 .lut_mask = 64'h000000000000F00F;
defparam \Add84~17 .shared_arith = "on";

arriav_lcell_comb \Add90~68 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add83~17_sumout ),
	.datad(!\Add84~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add90~68_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add90~68 .extended_lut = "off";
defparam \Add90~68 .lut_mask = 64'hA695A695A695A695;
defparam \Add90~68 .shared_arith = "off";

arriav_lcell_comb \Add90~9 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~17_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~17_sumout ),
	.datag(gnd),
	.cin(\Add90~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~9_sumout ),
	.cout(\Add90~10 ),
	.shareout());
defparam \Add90~9 .extended_lut = "off";
defparam \Add90~9 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~9 .shared_arith = "off";

arriav_lcell_comb \Add92~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~5_sumout ),
	.cout(\Add92~6 ),
	.shareout());
defparam \Add92~5 .extended_lut = "off";
defparam \Add92~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~5 .shared_arith = "off";

arriav_lcell_comb \Add94~5 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~5_sumout ),
	.cout(\Add94~6 ),
	.shareout());
defparam \Add94~5 .extended_lut = "off";
defparam \Add94~5 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~5 .shared_arith = "off";

arriav_lcell_comb \Add82~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add79~1_sumout ),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add82~14 ),
	.sharein(\Add82~15 ),
	.combout(),
	.sumout(\Add82~21_sumout ),
	.cout(),
	.shareout());
defparam \Add82~21 .extended_lut = "off";
defparam \Add82~21 .lut_mask = 64'h000000000000F00F;
defparam \Add82~21 .shared_arith = "on";

arriav_lcell_comb \Add81~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add77~13_sumout ),
	.datae(gnd),
	.dataf(!\Add79~1_sumout ),
	.datag(gnd),
	.cin(\Add81~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add81~21_sumout ),
	.cout(),
	.shareout());
defparam \Add81~21 .extended_lut = "off";
defparam \Add81~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add81~21 .shared_arith = "off";

arriav_lcell_comb \Add85~68 (
	.dataa(!\redist0_xMSB_uid277_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\Add82~21_sumout ),
	.datad(!\Add81~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add85~68_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add85~68 .extended_lut = "off";
defparam \Add85~68 .lut_mask = 64'h596A596A596A596A;
defparam \Add85~68 .shared_arith = "off";

arriav_lcell_comb \Add85~9 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~21_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~21_sumout ),
	.datag(gnd),
	.cin(\Add85~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~9_sumout ),
	.cout(\Add85~10 ),
	.shareout());
defparam \Add85~9 .extended_lut = "off";
defparam \Add85~9 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~9 .shared_arith = "off";

arriav_lcell_comb \Add87~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~5_sumout ),
	.cout(\Add87~6 ),
	.shareout());
defparam \Add87~5 .extended_lut = "off";
defparam \Add87~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~5 .shared_arith = "off";

arriav_lcell_comb \Add89~5 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~5_sumout ),
	.cout(\Add89~6 ),
	.shareout());
defparam \Add89~5 .extended_lut = "off";
defparam \Add89~5 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~5 .shared_arith = "off";

arriav_lcell_comb \Add90~13 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~25_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~25_sumout ),
	.datag(gnd),
	.cin(\Add90~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~13_sumout ),
	.cout(\Add90~14 ),
	.shareout());
defparam \Add90~13 .extended_lut = "off";
defparam \Add90~13 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~13 .shared_arith = "off";

arriav_lcell_comb \Add92~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~9_sumout ),
	.cout(\Add92~10 ),
	.shareout());
defparam \Add92~9 .extended_lut = "off";
defparam \Add92~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~9 .shared_arith = "off";

arriav_lcell_comb \Add94~9 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~9_sumout ),
	.cout(\Add94~10 ),
	.shareout());
defparam \Add94~9 .extended_lut = "off";
defparam \Add94~9 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~9 .shared_arith = "off";

arriav_lcell_comb \Add85~13 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~25_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~25_sumout ),
	.datag(gnd),
	.cin(\Add85~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~13_sumout ),
	.cout(\Add85~14 ),
	.shareout());
defparam \Add85~13 .extended_lut = "off";
defparam \Add85~13 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~13 .shared_arith = "off";

arriav_lcell_comb \Add87~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~9_sumout ),
	.cout(\Add87~10 ),
	.shareout());
defparam \Add87~9 .extended_lut = "off";
defparam \Add87~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~9 .shared_arith = "off";

arriav_lcell_comb \Add89~9 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~9_sumout ),
	.cout(\Add89~10 ),
	.shareout());
defparam \Add89~9 .extended_lut = "off";
defparam \Add89~9 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~9 .shared_arith = "off";

arriav_lcell_comb \Add90~17 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~29_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~29_sumout ),
	.datag(gnd),
	.cin(\Add90~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~17_sumout ),
	.cout(\Add90~18 ),
	.shareout());
defparam \Add90~17 .extended_lut = "off";
defparam \Add90~17 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~17 .shared_arith = "off";

arriav_lcell_comb \Add92~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~13_sumout ),
	.cout(\Add92~14 ),
	.shareout());
defparam \Add92~13 .extended_lut = "off";
defparam \Add92~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~13 .shared_arith = "off";

arriav_lcell_comb \Add94~13 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~13_sumout ),
	.cout(\Add94~14 ),
	.shareout());
defparam \Add94~13 .extended_lut = "off";
defparam \Add94~13 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~13 .shared_arith = "off";

arriav_lcell_comb \Add85~17 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~29_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~29_sumout ),
	.datag(gnd),
	.cin(\Add85~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~17_sumout ),
	.cout(\Add85~18 ),
	.shareout());
defparam \Add85~17 .extended_lut = "off";
defparam \Add85~17 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~17 .shared_arith = "off";

arriav_lcell_comb \Add87~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~13_sumout ),
	.cout(\Add87~14 ),
	.shareout());
defparam \Add87~13 .extended_lut = "off";
defparam \Add87~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~13 .shared_arith = "off";

arriav_lcell_comb \Add89~13 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~13_sumout ),
	.cout(\Add89~14 ),
	.shareout());
defparam \Add89~13 .extended_lut = "off";
defparam \Add89~13 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~13 .shared_arith = "off";

arriav_lcell_comb \Add90~21 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~33_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~33_sumout ),
	.datag(gnd),
	.cin(\Add90~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~21_sumout ),
	.cout(\Add90~22 ),
	.shareout());
defparam \Add90~21 .extended_lut = "off";
defparam \Add90~21 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~21 .shared_arith = "off";

arriav_lcell_comb \Add92~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~17_sumout ),
	.cout(\Add92~18 ),
	.shareout());
defparam \Add92~17 .extended_lut = "off";
defparam \Add92~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~17 .shared_arith = "off";

arriav_lcell_comb \Add94~17 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~17_sumout ),
	.cout(\Add94~18 ),
	.shareout());
defparam \Add94~17 .extended_lut = "off";
defparam \Add94~17 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~17 .shared_arith = "off";

arriav_lcell_comb \Add85~21 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~33_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~33_sumout ),
	.datag(gnd),
	.cin(\Add85~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~21_sumout ),
	.cout(\Add85~22 ),
	.shareout());
defparam \Add85~21 .extended_lut = "off";
defparam \Add85~21 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~21 .shared_arith = "off";

arriav_lcell_comb \Add87~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~17_sumout ),
	.cout(\Add87~18 ),
	.shareout());
defparam \Add87~17 .extended_lut = "off";
defparam \Add87~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~17 .shared_arith = "off";

arriav_lcell_comb \Add89~17 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~17_sumout ),
	.cout(\Add89~18 ),
	.shareout());
defparam \Add89~17 .extended_lut = "off";
defparam \Add89~17 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~17 .shared_arith = "off";

arriav_lcell_comb \Add90~25 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~37_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~37_sumout ),
	.datag(gnd),
	.cin(\Add90~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~25_sumout ),
	.cout(\Add90~26 ),
	.shareout());
defparam \Add90~25 .extended_lut = "off";
defparam \Add90~25 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~25 .shared_arith = "off";

arriav_lcell_comb \Add92~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~21_sumout ),
	.cout(\Add92~22 ),
	.shareout());
defparam \Add92~21 .extended_lut = "off";
defparam \Add92~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~21 .shared_arith = "off";

arriav_lcell_comb \Add94~21 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~21_sumout ),
	.cout(\Add94~22 ),
	.shareout());
defparam \Add94~21 .extended_lut = "off";
defparam \Add94~21 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~21 .shared_arith = "off";

arriav_lcell_comb \Add85~25 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~37_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~37_sumout ),
	.datag(gnd),
	.cin(\Add85~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~25_sumout ),
	.cout(\Add85~26 ),
	.shareout());
defparam \Add85~25 .extended_lut = "off";
defparam \Add85~25 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~25 .shared_arith = "off";

arriav_lcell_comb \Add87~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~21_sumout ),
	.cout(\Add87~22 ),
	.shareout());
defparam \Add87~21 .extended_lut = "off";
defparam \Add87~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~21 .shared_arith = "off";

arriav_lcell_comb \Add89~21 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~21_sumout ),
	.cout(\Add89~22 ),
	.shareout());
defparam \Add89~21 .extended_lut = "off";
defparam \Add89~21 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~21 .shared_arith = "off";

arriav_lcell_comb \Add90~29 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~41_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~41_sumout ),
	.datag(gnd),
	.cin(\Add90~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~29_sumout ),
	.cout(\Add90~30 ),
	.shareout());
defparam \Add90~29 .extended_lut = "off";
defparam \Add90~29 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~29 .shared_arith = "off";

arriav_lcell_comb \Add92~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~25_sumout ),
	.cout(\Add92~26 ),
	.shareout());
defparam \Add92~25 .extended_lut = "off";
defparam \Add92~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~25 .shared_arith = "off";

arriav_lcell_comb \Add94~25 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~25_sumout ),
	.cout(\Add94~26 ),
	.shareout());
defparam \Add94~25 .extended_lut = "off";
defparam \Add94~25 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~25 .shared_arith = "off";

arriav_lcell_comb \Add85~29 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~41_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~41_sumout ),
	.datag(gnd),
	.cin(\Add85~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~29_sumout ),
	.cout(\Add85~30 ),
	.shareout());
defparam \Add85~29 .extended_lut = "off";
defparam \Add85~29 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~29 .shared_arith = "off";

arriav_lcell_comb \Add87~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~25_sumout ),
	.cout(\Add87~26 ),
	.shareout());
defparam \Add87~25 .extended_lut = "off";
defparam \Add87~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~25 .shared_arith = "off";

arriav_lcell_comb \Add89~25 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~25_sumout ),
	.cout(\Add89~26 ),
	.shareout());
defparam \Add89~25 .extended_lut = "off";
defparam \Add89~25 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~25 .shared_arith = "off";

arriav_lcell_comb \Add90~33 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~45_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~45_sumout ),
	.datag(gnd),
	.cin(\Add90~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~33_sumout ),
	.cout(\Add90~34 ),
	.shareout());
defparam \Add90~33 .extended_lut = "off";
defparam \Add90~33 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~33 .shared_arith = "off";

arriav_lcell_comb \Add92~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~29_sumout ),
	.cout(\Add92~30 ),
	.shareout());
defparam \Add92~29 .extended_lut = "off";
defparam \Add92~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~29 .shared_arith = "off";

arriav_lcell_comb \Add94~29 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~29_sumout ),
	.cout(\Add94~30 ),
	.shareout());
defparam \Add94~29 .extended_lut = "off";
defparam \Add94~29 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~29 .shared_arith = "off";

arriav_lcell_comb \Add85~33 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~45_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~45_sumout ),
	.datag(gnd),
	.cin(\Add85~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~33_sumout ),
	.cout(\Add85~34 ),
	.shareout());
defparam \Add85~33 .extended_lut = "off";
defparam \Add85~33 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~33 .shared_arith = "off";

arriav_lcell_comb \Add87~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~29_sumout ),
	.cout(\Add87~30 ),
	.shareout());
defparam \Add87~29 .extended_lut = "off";
defparam \Add87~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~29 .shared_arith = "off";

arriav_lcell_comb \Add89~29 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~29_sumout ),
	.cout(\Add89~30 ),
	.shareout());
defparam \Add89~29 .extended_lut = "off";
defparam \Add89~29 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~29 .shared_arith = "off";

arriav_lcell_comb \Add90~37 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~49_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~49_sumout ),
	.datag(gnd),
	.cin(\Add90~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~37_sumout ),
	.cout(\Add90~38 ),
	.shareout());
defparam \Add90~37 .extended_lut = "off";
defparam \Add90~37 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~37 .shared_arith = "off";

arriav_lcell_comb \Add92~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~33_sumout ),
	.cout(\Add92~34 ),
	.shareout());
defparam \Add92~33 .extended_lut = "off";
defparam \Add92~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~33 .shared_arith = "off";

arriav_lcell_comb \Add94~33 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~33_sumout ),
	.cout(\Add94~34 ),
	.shareout());
defparam \Add94~33 .extended_lut = "off";
defparam \Add94~33 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~33 .shared_arith = "off";

arriav_lcell_comb \Add85~37 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~49_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~49_sumout ),
	.datag(gnd),
	.cin(\Add85~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~37_sumout ),
	.cout(\Add85~38 ),
	.shareout());
defparam \Add85~37 .extended_lut = "off";
defparam \Add85~37 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~37 .shared_arith = "off";

arriav_lcell_comb \Add87~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~33_sumout ),
	.cout(\Add87~34 ),
	.shareout());
defparam \Add87~33 .extended_lut = "off";
defparam \Add87~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~33 .shared_arith = "off";

arriav_lcell_comb \Add89~33 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~33_sumout ),
	.cout(\Add89~34 ),
	.shareout());
defparam \Add89~33 .extended_lut = "off";
defparam \Add89~33 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~33 .shared_arith = "off";

arriav_lcell_comb \Add90~41 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~53_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~53_sumout ),
	.datag(gnd),
	.cin(\Add90~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~41_sumout ),
	.cout(\Add90~42 ),
	.shareout());
defparam \Add90~41 .extended_lut = "off";
defparam \Add90~41 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~41 .shared_arith = "off";

arriav_lcell_comb \Add92~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~37_sumout ),
	.cout(\Add92~38 ),
	.shareout());
defparam \Add92~37 .extended_lut = "off";
defparam \Add92~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~37 .shared_arith = "off";

arriav_lcell_comb \Add94~37 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~37_sumout ),
	.cout(\Add94~38 ),
	.shareout());
defparam \Add94~37 .extended_lut = "off";
defparam \Add94~37 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~37 .shared_arith = "off";

arriav_lcell_comb \Add85~41 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~53_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~53_sumout ),
	.datag(gnd),
	.cin(\Add85~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~41_sumout ),
	.cout(\Add85~42 ),
	.shareout());
defparam \Add85~41 .extended_lut = "off";
defparam \Add85~41 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~41 .shared_arith = "off";

arriav_lcell_comb \Add87~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~37_sumout ),
	.cout(\Add87~38 ),
	.shareout());
defparam \Add87~37 .extended_lut = "off";
defparam \Add87~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~37 .shared_arith = "off";

arriav_lcell_comb \Add89~37 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~37_sumout ),
	.cout(\Add89~38 ),
	.shareout());
defparam \Add89~37 .extended_lut = "off";
defparam \Add89~37 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~37 .shared_arith = "off";

arriav_lcell_comb \Add90~45 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~57_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~57_sumout ),
	.datag(gnd),
	.cin(\Add90~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~45_sumout ),
	.cout(\Add90~46 ),
	.shareout());
defparam \Add90~45 .extended_lut = "off";
defparam \Add90~45 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~45 .shared_arith = "off";

arriav_lcell_comb \Add92~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~41_sumout ),
	.cout(\Add92~42 ),
	.shareout());
defparam \Add92~41 .extended_lut = "off";
defparam \Add92~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~41 .shared_arith = "off";

arriav_lcell_comb \Add94~41 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~41_sumout ),
	.cout(\Add94~42 ),
	.shareout());
defparam \Add94~41 .extended_lut = "off";
defparam \Add94~41 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~41 .shared_arith = "off";

arriav_lcell_comb \Add85~45 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~57_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~57_sumout ),
	.datag(gnd),
	.cin(\Add85~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~45_sumout ),
	.cout(\Add85~46 ),
	.shareout());
defparam \Add85~45 .extended_lut = "off";
defparam \Add85~45 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~45 .shared_arith = "off";

arriav_lcell_comb \Add87~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~41_sumout ),
	.cout(\Add87~42 ),
	.shareout());
defparam \Add87~41 .extended_lut = "off";
defparam \Add87~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~41 .shared_arith = "off";

arriav_lcell_comb \Add89~41 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~41_sumout ),
	.cout(\Add89~42 ),
	.shareout());
defparam \Add89~41 .extended_lut = "off";
defparam \Add89~41 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~41 .shared_arith = "off";

arriav_lcell_comb \Add90~49 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~61_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~61_sumout ),
	.datag(gnd),
	.cin(\Add90~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~49_sumout ),
	.cout(\Add90~50 ),
	.shareout());
defparam \Add90~49 .extended_lut = "off";
defparam \Add90~49 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~49 .shared_arith = "off";

arriav_lcell_comb \Add92~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~45_sumout ),
	.cout(\Add92~46 ),
	.shareout());
defparam \Add92~45 .extended_lut = "off";
defparam \Add92~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~45 .shared_arith = "off";

arriav_lcell_comb \Add94~45 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~45_sumout ),
	.cout(\Add94~46 ),
	.shareout());
defparam \Add94~45 .extended_lut = "off";
defparam \Add94~45 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~45 .shared_arith = "off";

arriav_lcell_comb \Add85~49 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~61_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~61_sumout ),
	.datag(gnd),
	.cin(\Add85~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~49_sumout ),
	.cout(\Add85~50 ),
	.shareout());
defparam \Add85~49 .extended_lut = "off";
defparam \Add85~49 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~49 .shared_arith = "off";

arriav_lcell_comb \Add87~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~45_sumout ),
	.cout(\Add87~46 ),
	.shareout());
defparam \Add87~45 .extended_lut = "off";
defparam \Add87~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~45 .shared_arith = "off";

arriav_lcell_comb \Add89~45 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~45_sumout ),
	.cout(\Add89~46 ),
	.shareout());
defparam \Add89~45 .extended_lut = "off";
defparam \Add89~45 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~45 .shared_arith = "off";

arriav_lcell_comb \Add90~53 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~65_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~65_sumout ),
	.datag(gnd),
	.cin(\Add90~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~53_sumout ),
	.cout(\Add90~54 ),
	.shareout());
defparam \Add90~53 .extended_lut = "off";
defparam \Add90~53 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~53 .shared_arith = "off";

arriav_lcell_comb \Add92~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~49_sumout ),
	.cout(\Add92~50 ),
	.shareout());
defparam \Add92~49 .extended_lut = "off";
defparam \Add92~49 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~49 .shared_arith = "off";

arriav_lcell_comb \Add94~49 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~49_sumout ),
	.cout(\Add94~50 ),
	.shareout());
defparam \Add94~49 .extended_lut = "off";
defparam \Add94~49 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~49 .shared_arith = "off";

arriav_lcell_comb \Add85~53 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~65_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~65_sumout ),
	.datag(gnd),
	.cin(\Add85~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~53_sumout ),
	.cout(\Add85~54 ),
	.shareout());
defparam \Add85~53 .extended_lut = "off";
defparam \Add85~53 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~53 .shared_arith = "off";

arriav_lcell_comb \Add87~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~49_sumout ),
	.cout(\Add87~50 ),
	.shareout());
defparam \Add87~49 .extended_lut = "off";
defparam \Add87~49 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~49 .shared_arith = "off";

arriav_lcell_comb \Add89~49 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~49_sumout ),
	.cout(\Add89~50 ),
	.shareout());
defparam \Add89~49 .extended_lut = "off";
defparam \Add89~49 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~49 .shared_arith = "off";

arriav_lcell_comb \Add90~57 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add81~9_sumout ),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~9_sumout ),
	.datag(gnd),
	.cin(\Add90~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~57_sumout ),
	.cout(\Add90~58 ),
	.shareout());
defparam \Add90~57 .extended_lut = "off";
defparam \Add90~57 .lut_mask = 64'h0000FA50000000FF;
defparam \Add90~57 .shared_arith = "off";

arriav_lcell_comb \Add92~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~53_sumout ),
	.cout(\Add92~54 ),
	.shareout());
defparam \Add92~53 .extended_lut = "off";
defparam \Add92~53 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~53 .shared_arith = "off";

arriav_lcell_comb \Add94~53 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~53_sumout ),
	.cout(\Add94~54 ),
	.shareout());
defparam \Add94~53 .extended_lut = "off";
defparam \Add94~53 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~53 .shared_arith = "off";

arriav_lcell_comb \Add85~57 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add84~1_sumout ),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~1_sumout ),
	.datag(gnd),
	.cin(\Add85~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~57_sumout ),
	.cout(\Add85~58 ),
	.shareout());
defparam \Add85~57 .extended_lut = "off";
defparam \Add85~57 .lut_mask = 64'h0000FA50000000FF;
defparam \Add85~57 .shared_arith = "off";

arriav_lcell_comb \Add87~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~53_sumout ),
	.cout(\Add87~54 ),
	.shareout());
defparam \Add87~53 .extended_lut = "off";
defparam \Add87~53 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~53 .shared_arith = "off";

arriav_lcell_comb \Add89~53 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~53_sumout ),
	.cout(\Add89~54 ),
	.shareout());
defparam \Add89~53 .extended_lut = "off";
defparam \Add89~53 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~53 .shared_arith = "off";

arriav_lcell_comb \Add90~61 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add81~13_sumout ),
	.datac(gnd),
	.datad(!\Add90~68_combout ),
	.datae(gnd),
	.dataf(!\Add82~13_sumout ),
	.datag(gnd),
	.cin(\Add90~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add90~61_sumout ),
	.cout(),
	.shareout());
defparam \Add90~61 .extended_lut = "off";
defparam \Add90~61 .lut_mask = 64'h0000EE44000000FF;
defparam \Add90~61 .shared_arith = "off";

arriav_lcell_comb \Add92~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add90~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add92~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add92~57_sumout ),
	.cout(),
	.shareout());
defparam \Add92~57 .extended_lut = "off";
defparam \Add92~57 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add92~57 .shared_arith = "off";

arriav_lcell_comb \Add94~57 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add92~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add94~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add94~57_sumout ),
	.cout(),
	.shareout());
defparam \Add94~57 .extended_lut = "off";
defparam \Add94~57 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add94~57 .shared_arith = "off";

arriav_lcell_comb \Add85~61 (
	.dataa(!\redist1_xMSB_uid258_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add84~5_sumout ),
	.datac(gnd),
	.datad(!\Add85~68_combout ),
	.datae(gnd),
	.dataf(!\Add83~5_sumout ),
	.datag(gnd),
	.cin(\Add85~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add85~61_sumout ),
	.cout(),
	.shareout());
defparam \Add85~61 .extended_lut = "off";
defparam \Add85~61 .lut_mask = 64'h0000EE44000000FF;
defparam \Add85~61 .shared_arith = "off";

arriav_lcell_comb \Add87~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add85~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add87~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add87~57_sumout ),
	.cout(),
	.shareout());
defparam \Add87~57 .extended_lut = "off";
defparam \Add87~57 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add87~57 .shared_arith = "off";

arriav_lcell_comb \Add89~57 (
	.dataa(!\redist11_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist10_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datac(!\redist9_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\Add87~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add89~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add89~57_sumout ),
	.cout(),
	.shareout());
defparam \Add89~57 .extended_lut = "off";
defparam \Add89~57 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add89~57 .shared_arith = "off";

endmodule

module sincos_dspba_delay (
	xin,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_1 (
	delay_signals_0_0,
	clk,
	aclr,
	ena,
	a_15)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;
input 	a_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~0_combout ;
wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

arriav_lcell_comb \delay_signals[1][0]~0 (
	.dataa(!a_15),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[1][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[1][0]~0 .extended_lut = "off";
defparam \delay_signals[1][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[1][0]~0 .shared_arith = "off";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~0_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule

module sincos_dspba_delay_2 (
	delay_signals_0_0,
	clk,
	aclr,
	ena,
	xin)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;
input 	[32:0] xin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule

module sincos_dspba_delay_3 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[32:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_4 (
	xin,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_5 (
	xin,
	delay_signals_32_0,
	delay_signals_30_0,
	delay_signals_29_0,
	delay_signals_28_0,
	delay_signals_31_0,
	delay_signals_16_0,
	delay_signals_17_0,
	delay_signals_18_0,
	delay_signals_19_0,
	delay_signals_20_0,
	delay_signals_21_0,
	delay_signals_22_0,
	delay_signals_23_0,
	delay_signals_24_0,
	delay_signals_25_0,
	delay_signals_26_0,
	delay_signals_27_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_32_0;
output 	delay_signals_30_0;
output 	delay_signals_29_0;
output 	delay_signals_28_0;
output 	delay_signals_31_0;
output 	delay_signals_16_0;
output 	delay_signals_17_0;
output 	delay_signals_18_0;
output 	delay_signals_19_0;
output 	delay_signals_20_0;
output 	delay_signals_21_0;
output 	delay_signals_22_0;
output 	delay_signals_23_0;
output 	delay_signals_24_0;
output 	delay_signals_25_0;
output 	delay_signals_26_0;
output 	delay_signals_27_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][32] (
	.clk(clk),
	.d(xin[32]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_32_0),
	.prn(vcc));
defparam \delay_signals[0][32] .is_wysiwyg = "true";
defparam \delay_signals[0][32] .power_up = "low";

dffeas \delay_signals[0][30] (
	.clk(clk),
	.d(xin[30]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_30_0),
	.prn(vcc));
defparam \delay_signals[0][30] .is_wysiwyg = "true";
defparam \delay_signals[0][30] .power_up = "low";

dffeas \delay_signals[0][29] (
	.clk(clk),
	.d(xin[29]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_29_0),
	.prn(vcc));
defparam \delay_signals[0][29] .is_wysiwyg = "true";
defparam \delay_signals[0][29] .power_up = "low";

dffeas \delay_signals[0][28] (
	.clk(clk),
	.d(xin[28]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_28_0),
	.prn(vcc));
defparam \delay_signals[0][28] .is_wysiwyg = "true";
defparam \delay_signals[0][28] .power_up = "low";

dffeas \delay_signals[0][31] (
	.clk(clk),
	.d(xin[31]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_31_0),
	.prn(vcc));
defparam \delay_signals[0][31] .is_wysiwyg = "true";
defparam \delay_signals[0][31] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(xin[16]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(xin[17]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(xin[18]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(xin[19]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][20] (
	.clk(clk),
	.d(xin[20]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_20_0),
	.prn(vcc));
defparam \delay_signals[0][20] .is_wysiwyg = "true";
defparam \delay_signals[0][20] .power_up = "low";

dffeas \delay_signals[0][21] (
	.clk(clk),
	.d(xin[21]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_21_0),
	.prn(vcc));
defparam \delay_signals[0][21] .is_wysiwyg = "true";
defparam \delay_signals[0][21] .power_up = "low";

dffeas \delay_signals[0][22] (
	.clk(clk),
	.d(xin[22]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_22_0),
	.prn(vcc));
defparam \delay_signals[0][22] .is_wysiwyg = "true";
defparam \delay_signals[0][22] .power_up = "low";

dffeas \delay_signals[0][23] (
	.clk(clk),
	.d(xin[23]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_23_0),
	.prn(vcc));
defparam \delay_signals[0][23] .is_wysiwyg = "true";
defparam \delay_signals[0][23] .power_up = "low";

dffeas \delay_signals[0][24] (
	.clk(clk),
	.d(xin[24]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_24_0),
	.prn(vcc));
defparam \delay_signals[0][24] .is_wysiwyg = "true";
defparam \delay_signals[0][24] .power_up = "low";

dffeas \delay_signals[0][25] (
	.clk(clk),
	.d(xin[25]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_25_0),
	.prn(vcc));
defparam \delay_signals[0][25] .is_wysiwyg = "true";
defparam \delay_signals[0][25] .power_up = "low";

dffeas \delay_signals[0][26] (
	.clk(clk),
	.d(xin[26]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_26_0),
	.prn(vcc));
defparam \delay_signals[0][26] .is_wysiwyg = "true";
defparam \delay_signals[0][26] .power_up = "low";

dffeas \delay_signals[0][27] (
	.clk(clk),
	.d(xin[27]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_27_0),
	.prn(vcc));
defparam \delay_signals[0][27] .is_wysiwyg = "true";
defparam \delay_signals[0][27] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(xin[14]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(xin[13]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_6 (
	xin,
	delay_signals_32_0,
	delay_signals_16_0,
	delay_signals_17_0,
	delay_signals_30_0,
	delay_signals_29_0,
	delay_signals_28_0,
	delay_signals_31_0,
	delay_signals_18_0,
	delay_signals_19_0,
	delay_signals_20_0,
	delay_signals_21_0,
	delay_signals_22_0,
	delay_signals_23_0,
	delay_signals_24_0,
	delay_signals_25_0,
	delay_signals_26_0,
	delay_signals_27_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_32_0;
output 	delay_signals_16_0;
output 	delay_signals_17_0;
output 	delay_signals_30_0;
output 	delay_signals_29_0;
output 	delay_signals_28_0;
output 	delay_signals_31_0;
output 	delay_signals_18_0;
output 	delay_signals_19_0;
output 	delay_signals_20_0;
output 	delay_signals_21_0;
output 	delay_signals_22_0;
output 	delay_signals_23_0;
output 	delay_signals_24_0;
output 	delay_signals_25_0;
output 	delay_signals_26_0;
output 	delay_signals_27_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][32] (
	.clk(clk),
	.d(xin[32]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_32_0),
	.prn(vcc));
defparam \delay_signals[0][32] .is_wysiwyg = "true";
defparam \delay_signals[0][32] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(xin[16]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(xin[17]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][30] (
	.clk(clk),
	.d(xin[30]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_30_0),
	.prn(vcc));
defparam \delay_signals[0][30] .is_wysiwyg = "true";
defparam \delay_signals[0][30] .power_up = "low";

dffeas \delay_signals[0][29] (
	.clk(clk),
	.d(xin[29]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_29_0),
	.prn(vcc));
defparam \delay_signals[0][29] .is_wysiwyg = "true";
defparam \delay_signals[0][29] .power_up = "low";

dffeas \delay_signals[0][28] (
	.clk(clk),
	.d(xin[28]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_28_0),
	.prn(vcc));
defparam \delay_signals[0][28] .is_wysiwyg = "true";
defparam \delay_signals[0][28] .power_up = "low";

dffeas \delay_signals[0][31] (
	.clk(clk),
	.d(xin[31]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_31_0),
	.prn(vcc));
defparam \delay_signals[0][31] .is_wysiwyg = "true";
defparam \delay_signals[0][31] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(xin[18]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(xin[19]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][20] (
	.clk(clk),
	.d(xin[20]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_20_0),
	.prn(vcc));
defparam \delay_signals[0][20] .is_wysiwyg = "true";
defparam \delay_signals[0][20] .power_up = "low";

dffeas \delay_signals[0][21] (
	.clk(clk),
	.d(xin[21]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_21_0),
	.prn(vcc));
defparam \delay_signals[0][21] .is_wysiwyg = "true";
defparam \delay_signals[0][21] .power_up = "low";

dffeas \delay_signals[0][22] (
	.clk(clk),
	.d(xin[22]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_22_0),
	.prn(vcc));
defparam \delay_signals[0][22] .is_wysiwyg = "true";
defparam \delay_signals[0][22] .power_up = "low";

dffeas \delay_signals[0][23] (
	.clk(clk),
	.d(xin[23]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_23_0),
	.prn(vcc));
defparam \delay_signals[0][23] .is_wysiwyg = "true";
defparam \delay_signals[0][23] .power_up = "low";

dffeas \delay_signals[0][24] (
	.clk(clk),
	.d(xin[24]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_24_0),
	.prn(vcc));
defparam \delay_signals[0][24] .is_wysiwyg = "true";
defparam \delay_signals[0][24] .power_up = "low";

dffeas \delay_signals[0][25] (
	.clk(clk),
	.d(xin[25]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_25_0),
	.prn(vcc));
defparam \delay_signals[0][25] .is_wysiwyg = "true";
defparam \delay_signals[0][25] .power_up = "low";

dffeas \delay_signals[0][26] (
	.clk(clk),
	.d(xin[26]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_26_0),
	.prn(vcc));
defparam \delay_signals[0][26] .is_wysiwyg = "true";
defparam \delay_signals[0][26] .power_up = "low";

dffeas \delay_signals[0][27] (
	.clk(clk),
	.d(xin[27]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_27_0),
	.prn(vcc));
defparam \delay_signals[0][27] .is_wysiwyg = "true";
defparam \delay_signals[0][27] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(xin[14]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(xin[13]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_7 (
	xin,
	delay_signals_19_0,
	delay_signals_18_0,
	delay_signals_17_0,
	delay_signals_15_0,
	delay_signals_16_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_19_0;
output 	delay_signals_18_0;
output 	delay_signals_17_0;
output 	delay_signals_15_0;
output 	delay_signals_16_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(xin[19]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(xin[18]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(xin[17]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(xin[16]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(xin[14]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(xin[13]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

endmodule

module sincos_dspba_delay_8 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[32:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_9 (
	xin,
	delay_signals_32_0,
	delay_signals_30_0,
	delay_signals_29_0,
	delay_signals_28_0,
	delay_signals_26_0,
	delay_signals_25_0,
	delay_signals_24_0,
	delay_signals_23_0,
	delay_signals_22_0,
	delay_signals_21_0,
	delay_signals_27_0,
	delay_signals_31_0,
	delay_signals_16_0,
	delay_signals_17_0,
	delay_signals_18_0,
	delay_signals_19_0,
	delay_signals_20_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_32_0;
output 	delay_signals_30_0;
output 	delay_signals_29_0;
output 	delay_signals_28_0;
output 	delay_signals_26_0;
output 	delay_signals_25_0;
output 	delay_signals_24_0;
output 	delay_signals_23_0;
output 	delay_signals_22_0;
output 	delay_signals_21_0;
output 	delay_signals_27_0;
output 	delay_signals_31_0;
output 	delay_signals_16_0;
output 	delay_signals_17_0;
output 	delay_signals_18_0;
output 	delay_signals_19_0;
output 	delay_signals_20_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][32] (
	.clk(clk),
	.d(xin[32]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_32_0),
	.prn(vcc));
defparam \delay_signals[0][32] .is_wysiwyg = "true";
defparam \delay_signals[0][32] .power_up = "low";

dffeas \delay_signals[0][30] (
	.clk(clk),
	.d(xin[30]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_30_0),
	.prn(vcc));
defparam \delay_signals[0][30] .is_wysiwyg = "true";
defparam \delay_signals[0][30] .power_up = "low";

dffeas \delay_signals[0][29] (
	.clk(clk),
	.d(xin[29]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_29_0),
	.prn(vcc));
defparam \delay_signals[0][29] .is_wysiwyg = "true";
defparam \delay_signals[0][29] .power_up = "low";

dffeas \delay_signals[0][28] (
	.clk(clk),
	.d(xin[28]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_28_0),
	.prn(vcc));
defparam \delay_signals[0][28] .is_wysiwyg = "true";
defparam \delay_signals[0][28] .power_up = "low";

dffeas \delay_signals[0][26] (
	.clk(clk),
	.d(xin[26]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_26_0),
	.prn(vcc));
defparam \delay_signals[0][26] .is_wysiwyg = "true";
defparam \delay_signals[0][26] .power_up = "low";

dffeas \delay_signals[0][25] (
	.clk(clk),
	.d(xin[25]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_25_0),
	.prn(vcc));
defparam \delay_signals[0][25] .is_wysiwyg = "true";
defparam \delay_signals[0][25] .power_up = "low";

dffeas \delay_signals[0][24] (
	.clk(clk),
	.d(xin[24]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_24_0),
	.prn(vcc));
defparam \delay_signals[0][24] .is_wysiwyg = "true";
defparam \delay_signals[0][24] .power_up = "low";

dffeas \delay_signals[0][23] (
	.clk(clk),
	.d(xin[23]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_23_0),
	.prn(vcc));
defparam \delay_signals[0][23] .is_wysiwyg = "true";
defparam \delay_signals[0][23] .power_up = "low";

dffeas \delay_signals[0][22] (
	.clk(clk),
	.d(xin[22]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_22_0),
	.prn(vcc));
defparam \delay_signals[0][22] .is_wysiwyg = "true";
defparam \delay_signals[0][22] .power_up = "low";

dffeas \delay_signals[0][21] (
	.clk(clk),
	.d(xin[21]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_21_0),
	.prn(vcc));
defparam \delay_signals[0][21] .is_wysiwyg = "true";
defparam \delay_signals[0][21] .power_up = "low";

dffeas \delay_signals[0][27] (
	.clk(clk),
	.d(xin[27]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_27_0),
	.prn(vcc));
defparam \delay_signals[0][27] .is_wysiwyg = "true";
defparam \delay_signals[0][27] .power_up = "low";

dffeas \delay_signals[0][31] (
	.clk(clk),
	.d(xin[31]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_31_0),
	.prn(vcc));
defparam \delay_signals[0][31] .is_wysiwyg = "true";
defparam \delay_signals[0][31] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(xin[16]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(xin[17]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(xin[18]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(xin[19]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][20] (
	.clk(clk),
	.d(xin[20]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_20_0),
	.prn(vcc));
defparam \delay_signals[0][20] .is_wysiwyg = "true";
defparam \delay_signals[0][20] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(xin[14]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(xin[13]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_10 (
	xin,
	delay_signals_32_0,
	delay_signals_31_0,
	delay_signals_30_0,
	delay_signals_29_0,
	delay_signals_28_0,
	delay_signals_27_0,
	delay_signals_16_0,
	delay_signals_17_0,
	delay_signals_26_0,
	delay_signals_25_0,
	delay_signals_24_0,
	delay_signals_23_0,
	delay_signals_22_0,
	delay_signals_21_0,
	delay_signals_18_0,
	delay_signals_19_0,
	delay_signals_20_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_32_0;
output 	delay_signals_31_0;
output 	delay_signals_30_0;
output 	delay_signals_29_0;
output 	delay_signals_28_0;
output 	delay_signals_27_0;
output 	delay_signals_16_0;
output 	delay_signals_17_0;
output 	delay_signals_26_0;
output 	delay_signals_25_0;
output 	delay_signals_24_0;
output 	delay_signals_23_0;
output 	delay_signals_22_0;
output 	delay_signals_21_0;
output 	delay_signals_18_0;
output 	delay_signals_19_0;
output 	delay_signals_20_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][32] (
	.clk(clk),
	.d(xin[32]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_32_0),
	.prn(vcc));
defparam \delay_signals[0][32] .is_wysiwyg = "true";
defparam \delay_signals[0][32] .power_up = "low";

dffeas \delay_signals[0][31] (
	.clk(clk),
	.d(xin[31]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_31_0),
	.prn(vcc));
defparam \delay_signals[0][31] .is_wysiwyg = "true";
defparam \delay_signals[0][31] .power_up = "low";

dffeas \delay_signals[0][30] (
	.clk(clk),
	.d(xin[30]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_30_0),
	.prn(vcc));
defparam \delay_signals[0][30] .is_wysiwyg = "true";
defparam \delay_signals[0][30] .power_up = "low";

dffeas \delay_signals[0][29] (
	.clk(clk),
	.d(xin[29]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_29_0),
	.prn(vcc));
defparam \delay_signals[0][29] .is_wysiwyg = "true";
defparam \delay_signals[0][29] .power_up = "low";

dffeas \delay_signals[0][28] (
	.clk(clk),
	.d(xin[28]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_28_0),
	.prn(vcc));
defparam \delay_signals[0][28] .is_wysiwyg = "true";
defparam \delay_signals[0][28] .power_up = "low";

dffeas \delay_signals[0][27] (
	.clk(clk),
	.d(xin[27]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_27_0),
	.prn(vcc));
defparam \delay_signals[0][27] .is_wysiwyg = "true";
defparam \delay_signals[0][27] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(xin[16]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(xin[17]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][26] (
	.clk(clk),
	.d(xin[26]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_26_0),
	.prn(vcc));
defparam \delay_signals[0][26] .is_wysiwyg = "true";
defparam \delay_signals[0][26] .power_up = "low";

dffeas \delay_signals[0][25] (
	.clk(clk),
	.d(xin[25]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_25_0),
	.prn(vcc));
defparam \delay_signals[0][25] .is_wysiwyg = "true";
defparam \delay_signals[0][25] .power_up = "low";

dffeas \delay_signals[0][24] (
	.clk(clk),
	.d(xin[24]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_24_0),
	.prn(vcc));
defparam \delay_signals[0][24] .is_wysiwyg = "true";
defparam \delay_signals[0][24] .power_up = "low";

dffeas \delay_signals[0][23] (
	.clk(clk),
	.d(xin[23]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_23_0),
	.prn(vcc));
defparam \delay_signals[0][23] .is_wysiwyg = "true";
defparam \delay_signals[0][23] .power_up = "low";

dffeas \delay_signals[0][22] (
	.clk(clk),
	.d(xin[22]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_22_0),
	.prn(vcc));
defparam \delay_signals[0][22] .is_wysiwyg = "true";
defparam \delay_signals[0][22] .power_up = "low";

dffeas \delay_signals[0][21] (
	.clk(clk),
	.d(xin[21]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_21_0),
	.prn(vcc));
defparam \delay_signals[0][21] .is_wysiwyg = "true";
defparam \delay_signals[0][21] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(xin[18]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(xin[19]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][20] (
	.clk(clk),
	.d(xin[20]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_20_0),
	.prn(vcc));
defparam \delay_signals[0][20] .is_wysiwyg = "true";
defparam \delay_signals[0][20] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(xin[14]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(xin[13]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_11 (
	xin,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[32:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule
