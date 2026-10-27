/*
The same bit pattern can represent different signed and unsigned numbers.
Declare both operands signed when comparing two's-complement values.
Mixing signed and unsigned operands can change the comparison interpretation.
CONCATENATIONS ARE UNSIGNED EXPRESSIONS, EVEN WHEN THEY CONTAIN SIGNED SIGNALS.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

wire signed [7:0] a,b;
assign less = a < b;
The signed declarations make negative values compare below nonnegative values.

Keep comparison operands consistently signed and extend signed values with their sign bit.
*/

/*
Compare signed 8-bit a and b.
Output less when a is less than b, and equal when they are equal.
Both inputs are two's-complement signed values.
Output columns: less, equal. All stimulus values are known binary values.
*/

module dut (
  input signed [7:0] a,
  input signed [7:0] b,
  output less,
  output equal
);

  assign less = (a < b);
  assign equal = (a == b);

endmodule
