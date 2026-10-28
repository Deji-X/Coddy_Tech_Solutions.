/*
Combinational Functions

A Verilog function packages a zero-time calculation for reuse within a module.
Declare its return width, input arguments and local variables,
then assign the result to the function name.
Combinational functions contain no delays or event controls;
a loop with fixed bounds can describe repeated logic.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

function [7:0] gray;
    input [7:0] value;
    begin gray = value ^ (value >> 1); end
endfunction


Calling the function computes an expression without adding simulation time.

Assign the function result on every path and keep combinational functions free of
timing controls.
*/


module dut (
  input [7:0] a,
  output [7:0] y
);
  
  function [7:0] gray;
    input [7:0] value;
    begin
    gray = value ^ (value >> 1);
    end
  endfunction

  assign y = gray(a);

endmodule
