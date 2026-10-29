/*
A generate-if selects a hardware structure using a constant parameter.
Only one branch is elaborated for a given instance.
A procedural if or conditional expression with a signal selects behavior at runtime;
it does not replace generate configuration.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

generate
    if(INVERT) begin: inverted
        assign y = ~a;
    end else begin: direct
        assign y = a;
    end
endgenerate

The parameter chooses which driver is constructed for this instance.

Use generate-if for constant configuration and ordinary RTL selection for runtime controls.
*/

/*
Use conditional generate: MODE=0 passes a unchanged; MODE=1 inverts all eight bits of a.
Input b is unused. MODE is either 0 or 1.
The testbench instantiates both configurations and prints y0 then y1.
*/

module dut #(parameter MODE=0) (
  input [7:0] a, b,
  output [7:0] y
);

  generate
    if (MODE==0) begin: unchanged
      assign y = a;
    end
    else begin: inverted
      assign y = ~a;
    end
  endgenerate

endmodule
