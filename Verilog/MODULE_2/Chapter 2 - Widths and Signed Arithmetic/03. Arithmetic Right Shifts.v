/*
An arithmetic right shift uses >>> and replicates the sign bit when its left operand is signed.
A logical right shift uses >> and fills with zeros.
For a negative odd value,
arithmetic shifting right is not the same as integer division that truncates toward zero.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

reg signed [7:0] value;
value = -3;
$display("%0d", value >>> 1);

The result is minus two because sign extension retains
the negative two's-complement interpretation.

Use a signed left operand with >>> when sign extension is required.
*/

/*
Arithmetic-right-shift signed 8-bit value by amount (0 to 7).
Return the signed 8-bit result y. Negative values fill with their sign bit.
Output columns: y. All stimulus values are known binary values.
*/

module dut (
  input signed [7:0] value,
  input [2:0] amount,
  output signed [7:0] y
);

  assign y = value >>> amount;
endmodule
