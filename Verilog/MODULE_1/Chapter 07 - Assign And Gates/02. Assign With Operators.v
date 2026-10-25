/*  ASSIGN WITH OPERATORS

The  'assign' statement supports various operators for combinational logic:
assign wire_name = expression;

Operator types:
Bitwise: '&', '|', '^', '~'
Arithmetic: '+'. '-'. '*', '/'
Logical: '&&', '||', '!'
Comparison: '>', '<', '==', '!='
Shift: '<<', '>>'
Conditional: '?:'
Concatenation: '{}'

assign and_out = a & b;
assign sum_out = a + b;
assign is_equal = (a == b);
assign mux_out = sel ? a : b;
assign bus = {high, low};
assign parity = ^data;        // Reduction XOR

Use parentheses to clarify precedence:
assign out = (a & b) | c;
*/

module assign_challenge(
  input input_a,
  input input_b,
  output and_result,
  output or_result,
  output xor_result,
  output not_result
);

  assign and_result = input_a & input_b;
  assign or_result =  input_a | input_b;
  assign xor_result = input_a ^ input_b;
  assign not_result = ~input_a;

endmodule
