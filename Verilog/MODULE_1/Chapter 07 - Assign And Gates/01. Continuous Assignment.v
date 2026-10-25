/*
CONTINUOUS ASSIGNMENT



Continuous assignment creates a permanent connection between a wire
and an expression using the assign keyword:

assign wire_name = expression;
The wire continuously reflects the expression's value,
whenever inputs change, the output updates immediately:

wire out;
assign out = a & b; // out is always equal to a AND b
Multiple assignments run in parallel:

assign x = a & b;
assign y = x | c; // y depends on x, all update continuously
Key rules: only wire (not reg) can be driven by assign.

*/

module continuous_challenge(
  input x,
  input y,
  output z
);

  assign z = x & y;

endmodule
