/*  AND OR NOT Gates.

Basic logic gates inVerilog using gate primitives and continuous assignment:

Gate	| Primitive	        | Assign	              | Output is 1 when...
------------------------------------------------------------------
AND	  |  and(out, a, b);	|  assign out = a & b;	|  All inputs are 1
OR	  |  or(out, a, b);	  |  assign out = a | b;	|  At least one input is 1
NOT	  |  not(out, a);	    |  assign out = ~a;	    |  Input is 0

AND and OP support more than 2 inputs: NOT always has exactly 1 input:

and(out, a, , b, b);    // 3-input AND
or(out, a, b, c, d);    // 4-input OR

module example (
  input a, b,
  output and_out, or_out, not_out
  );

  and(and_out, a, b);
  or(or_out, a, b);
  not(and_out, a);

endmodule

*/

module gates_challenge(
  input p,
  input q,
  output and_result,
  output or_result,
  output not_result
);

  assign and_result = p & q;

  assign or_result = p | q;

  assign not_result = ~p;

endmodule
