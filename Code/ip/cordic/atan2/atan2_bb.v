
module atan2 (
	areset,
	clk,
	q,
	x,
	y,
	en);	

	input		areset;
	input		clk;
	output	[15:0]	q;
	input	[15:0]	x;
	input	[15:0]	y;
	input	[0:0]	en;
endmodule
