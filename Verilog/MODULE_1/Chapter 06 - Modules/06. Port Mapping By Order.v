/*  PORT MAPPING BY ORDER

Port mappin by order connects signals based on their position matching the module's port
definition order:

module_name instance_name (
  signal1,
  signal2,
  signal3);

Example with an or_gate module(ports: in1, in2, result):

or_gate or1 (
  input_a,
  input_b,
  input_y
);

Order is critical: swapping singals causes wrong connections that are hard to debug.


Feature	          | By Name	        | By Order
--------------------------------------------------------
Syntax	          | .port(signal)	  | signal1, signal2
Order matters?	  | No	            | Yes
Risk of mistakes  |	Low	            | High
Recommended for	  | Most designs	  | Simple/few ports only

*/
module register (
  input en,
  input [7:0] d,
  output [7:0] q
);

  assign q = en ? d : q;
endmodule

module top(
  input enable_signal,
  input [7:0] data_input,
  output [7:0] data_output
);

  register reg1 (
    enable_signal,
    data_input,
    data_output
  );

endmodule
