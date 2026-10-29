/*
Use a named generate-for loop to reverse the WIDTH bits of a into y. Input b is unused.
The module must support WIDTH=1,4,8. WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8,
using the low bits of a and b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/
module dut #(parameter WIDTH=4) (
  input [WIDTH-1:0] a, b,
  output [WIDTH-1:0] y
);
  genvar i;
  generate
    for (i = 0; i < WIDTH; i = i + 1) begin: reverse_bits
      assign y[i] = a[WIDTH-1-i];
    end
  endgenerate
  

endmodule
