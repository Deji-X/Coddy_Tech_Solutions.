/*
Build a WIDTH-bit saturating unsigned adder. Add a and b using WIDTH+1 bits.
If carry is set, y must be all ones; otherwise y is the low WIDTH bits of the full sum.
WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8,
using the low bits of a and b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/

module dut #(parameter WIDTH=4) (
  input [WIDTH-1:0] a, b,
  output [WIDTH-1:0] y
);

  wire [WIDTH:0] sum;

  assign sum = {1'b0, a} + {1'b0, b};

  assign y = sum[WIDTH] ? {WIDTH{1'b1}} : sum[WIDTH-1:0];

endmodule
