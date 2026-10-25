/* MODULE STRUCTURE
A module is the basic building block in Verilog: a hardware component with inputs,
outputs, and internal logic.

module module_name(
  input a,
  input b,
  output c
);

  assign c = a & b;

endmodule

module / endmodule: start and end the definition
input: signal coming in (read-only inside module)
output: signal going out (can be reg or wire)
assign: defines combinational logic


*/

module my_and(
  input x,
  input y,
  output z
);

  assign z = x & y;
endmodule
