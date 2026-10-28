/*
Implement signed saturating addition:
y equals a+b when representable in eight signed bits,
127 when too positive, and -128 when too negative.
Set clipped when saturation occurs.
Output columns: y, clipped. All stimulus values are known binary values.
*/


module dut (
  input signed [7:0] a,
  input signed [7:0] b,
  output reg signed [7:0] y,
  output reg clipped
);

  initial y = (a + b);
  initial clipped = ();

endmodule
