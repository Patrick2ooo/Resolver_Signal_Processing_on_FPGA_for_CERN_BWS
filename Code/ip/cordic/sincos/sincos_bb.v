
module sincos (
	a,
	areset,
	c,
	clk,
	s,
	en);	

	input	[15:0]	a;
	input		areset;
	output	[14:0]	c;
	input		clk;
	output	[14:0]	s;
	input	[0:0]	en;
endmodule
