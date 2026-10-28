/*
Compute signed 8-bit a minus b with saturation to -128 through 127.
Return saturated y and clipped=1 when the exact difference is outside that range.
Output columns: y, clipped. All stimulus values are known binary values.
*/

module dut (
  input signed [7:0] a,
  input signed [7:0] b,
  output reg signed [7:0] y,
  output reg clipped
);

  initial y = ;
  initial clipped = ;

endmodule
