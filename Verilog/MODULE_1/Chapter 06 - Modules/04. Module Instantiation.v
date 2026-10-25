/* MODULE INSTANTATION
Module instantiation creates a copy of a module inside another module:

module_name instance_name (connections);

Example:

module and_gate (input a, input b, output c);
  assign c = a & b;
endmodule

module top (input x, input y, output z);
  and_gate gate1 (x, y, z); // x→a, y→b, z→c
endmodule

RULES:
1. Instance name must be unique
2. Number of connections must match number of ports
3. Connection order must match port definition order
4. Multiple instances run in parallel, each with its own signals

*/
module or_gate(
  input in1,
  input in2,
  output result
);
  assign result = in1 | in2;
endmodule

module top(
  input input_A,
  input input_B,
  output output_Y
);

  or_gate or1(
    input_A,
    input_B,
    output_Y
  );
endmodule
  
