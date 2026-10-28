/*
Fundamentals introduced configurable widths.
Reusable RTL must also handle the smallest legal width,
size intermediate expressions deliberately and avoid hard-coded bit positions.
Replication {WIDTH{1'b1}} builds a width-matched mask.
Parameters are elaboration constants, not runtime controls.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

wire [WIDTH:0] sum;
assign sum = {1'b0,a} + {1'b0,b};
assign y = sum[WIDTH] ? {WIDTH{1'b1}} : sum[WIDTH-1:0];
Both the carry position and saturation value adapt to the configured width.

Test the minimum legal width and derive every width-dependent slice and constant from parameters.
*/

/*
Build a WIDTH-bit incrementer that returns the low WIDTH bits of a+1. Input b is unused.
The same module must work for WIDTH=1 as well as wider widths. WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8,
using the low bits of a and b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/

module dut #(
  parameter WIDTH=4
) (
  input [WIDTH-1:0] a, b,
  output [WIDTH-1:0] y
);

  assign y = 0;

endmodule
