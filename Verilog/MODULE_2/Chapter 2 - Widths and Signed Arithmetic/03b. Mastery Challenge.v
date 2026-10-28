/*
Produce both arithmetic and logical right shifts of the same signed 8-bit value by amount
(0 to 7). arithmetic is signed; logical is unsigned.
Arithmetic fills the sign bit, logical fills zeros. Output columns: arithmetic, logical.
All stimulus values are known binary values.
*/


module dut (
  input signed [7:0] value,
  input [2:0] amount,
  output signed [7:0] arithmetic,
  output [7:0] logical
);

  assign arithmetic = value >>> amount;
  assign logical = value >> amount;

endmodule
