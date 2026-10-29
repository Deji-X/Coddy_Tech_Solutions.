/*
Build a WIDTH-bit bit-clear circuit with a named generate loop: each output bit equals the
corresponding a bit AND the inverse of b at that position.
b is a clear mask.
WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8, using the low bits of a and
b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/


module dut #(parameter WIDTH=4) (
  input [WIDTH-1:0] a, b,
  output [WIDTH-1:0] y
);

  genvar i;
  generate
    for (i = 0; i < WIDTH; i = i + 1) begin: inverse
      assign y[i] = a[i] & ~b[i];
    end
  endgenerate

endmodule
