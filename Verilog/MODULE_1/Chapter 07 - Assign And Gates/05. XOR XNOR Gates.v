/*  XOR XNOR Gates
XOR outputs 1 when inputs are different XNOr outputs 1 when inputs are the same.

Gate	  | Output 1 when	        | Primitive	        | Operator
---------------------------------------------------------------
XOR	    |  Inputs are different	|  xor(out, a, b)	  |  ^
XNOR	  |  Inputs are the same	|  xnor(out, a, b)	|  ~^


For multiple inputs: XOR outputs 1 if an odd number of inputs are 1;
XNOR outputs 1 if an even number of inputs are 1.

xor(out, a, b, c);      // 3-input XOR
xnor(out, p, q, r, s);  // 4-input XNOR

*/

module xor_xnor_challenge(
  input x,
  input y,
  output xor_result,
  output xnor_result
);

  assign xor_result = x ^ y;

  assign xnor_result = ~(x ^ y);

endmodule
