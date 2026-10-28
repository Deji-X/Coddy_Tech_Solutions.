/*
Signed overflow means the mathematical result cannot fit in the chosen signed width.
It differs from unsigned carry.
For signed addition, equal-sign inputs overflow when the result sign changes.
Saturation clamps to a representable endpoint instead of wrapping.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

assign overflow = (a[7] == b[7]) && (sum[7] != a[7]);

Different-sign inputs cannot overflow signed addition;
equal-sign inputs require a result-sign check.

Check signed overflow independently of carry; widen before implementing saturation.
*/

module (
  input signed [7:0] a,
  input signed [7:0] b,
  output signed [7:0] y,
  output overflow
);

  assign y = (a + b);
  assign overflow = (a[7] == b[7]) && (y[7] != a[7]);
  
endmodule
