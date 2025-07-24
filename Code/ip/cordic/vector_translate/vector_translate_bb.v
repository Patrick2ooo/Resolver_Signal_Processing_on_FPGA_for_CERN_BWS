
module vector_translate (
	areset,
	clk,
	en,
	q,
	r,
	x,
	y);	

	input		areset;
	input		clk;
	input	[0:0]	en;
	output	[15:0]	q;
	output	[15:0]	r;
	input	[14:0]	x;
	input	[14:0]	y;
endmodule
