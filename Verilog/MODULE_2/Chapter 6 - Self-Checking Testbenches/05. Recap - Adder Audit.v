/*
Implement audit for a four-bit unsigned adder.
Accumulate checked and errors as in the scoreboard lesson,
and preserve coverage bits:
bit 0 marks a=b=0, bit 1 marks a=b=15, and bit 2 marks every other input pair.
Compare actual against the full five-bit sum using four-state inequality.
The caller initializes all counters and flags.
This module contains a simulation-only task called by the locked testbench.
Output columns: checked, errors, seen.
*/

module dut;
  task audit;
    input [3:0] a,b;
    input [4:0] actual;
    inout integer checked, errors;
    inout [2:0] seen;
    reg [4:0] expected;
    begin
      expected = {1'b0,a} + {1'b0,b};

      checked = checked + 1;

      if (actual !== expected)
        errors = errors + 1;

      if ((a == 0) && (b == 0))
        seen[0] = 1'b1;
      else if ((a == 15) && (b == 15))
        seen[1] = 1'b1;
      else 
        seen[2] = 1'b1;

    end
  endtask
endmodule
