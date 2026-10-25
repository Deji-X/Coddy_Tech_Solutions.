/* BUILT IN GATE PRIMITIVES

Gate Primitives in veriolog allow structural modeling by instantiating logic gates
directly.

Syntax: First argument is always the output, followed by inputs:

gate_type(
  output,
  input1,
  input2
  ......
  );

Available primitives:

Gate	| Keyword  | Inputs
----------------------
AND	  |  and      |  2+
OR    |  or	      |  2+
NOT	  |  not	    |  1
NAND	|  nand	    |  2+
NOR	  |  nor	    |  2+
XOR	  |  xor	    |  2+
XNOR	|  xnor	    |  2+

Gate primitives and 'assign' produce equivalent hardware:

and(out, a, b);      // Structural (gate primitive)
assign out = a & b;  // Behavioral (continuous assignment)

*/


module gate_challenge(
  input a,
  input b,
  output
);

  and(c, a, b);


endmodule
