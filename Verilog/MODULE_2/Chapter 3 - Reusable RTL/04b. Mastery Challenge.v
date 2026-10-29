/*
Use conditional generate: MODE=0 computes a AND b; MODE=1 computes a OR b.
Keep one driver for y in each elaborated instance. MODE is either 0 or 1.
The testbench instantiates both configurations and prints y0 then y1.
*/

module dut #(parameter MODE=0) (
  input [7:0] a, b,
  output [7:0] y
);

  generate
    if (MODE==0) begin: AND
      assign y = (a & b);
    end
    else begin: OR
      assign y = (a | b);
    end
  endgenerate

endmodule
