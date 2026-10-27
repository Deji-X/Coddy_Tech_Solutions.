/*
Subtract unsigned 8-bit b from a.
Return the low eight bits in difference and set borrow if a is smaller than b.
Use a 9-bit zero-extended subtraction to preserve the borrow bit.
Output columns: difference, borrow.
All stimulus values are known binary values.
*/

module dut (
  input [7:0] a,
  input [7:0] b,
  output [7:0] difference,
  output borrow
);

  wire [8:0] result;

  assign result = {1'b0, a} - {1'b0, b};

  assign difference = result[7:0];
  assign borrow = result[8];
  

endmodule
