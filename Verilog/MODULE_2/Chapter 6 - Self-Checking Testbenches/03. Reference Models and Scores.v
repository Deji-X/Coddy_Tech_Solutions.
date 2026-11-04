/*
REFERENCE MODELS AND SCORES

A self-checking testbench computes expected behavior independently from the design output.
A reference model can use straightforward arithmetic even when the implementation uses
a different structure. A scoreboard counts observations and mismatches.
Initialize its counters once per scenario and compare only after the design output has
settled.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

expected = {1'b0,a} + {1'b0,b};
checked = checked + 1;
if(actual !== expected) errors = errors + 1;

The expected value comes from the specified input behavior, not from copying actual.

Compute expected values independently,
sample at a defined time and track every checked result.
*/


/*
Implement a reference check for an unsigned four-bit adder.
Compute the full five-bit mathematical a+b,
then return ok=1 only if actual matches that result exactly in four-state comparison.
This module contains a simulation-only task called by the locked testbench.
Output columns: ok.
*/

module dut;
  task check_sum;
    input [3:0] a, b;
    input [4:0] actual;
    output ok;
    reg [4:0] expected;
    begin
      expected = {1'b0, a} + {1'b0, b};
      if (actual === expected)
        ok = 1'b1;
      else
        ok = 1'b0;
      /*
      expected = {1'b0,a}+{1'b0,b};
            ok = (actual===expected);
      */
      // This can replace the expected to ok line.
    end
  endtask

endmodule
