/*
Implement check_pair to return how many of its two actual/expected pairs mismatch
under four-state comparison.
errors must be 0,1 or 2 and reset for every task call.
This module contains a simulation-only task called by the locked testbench.
Output columns: errors.
*/
module dut;
  task check_pair;
    input [7:0] actual_a, expected_a, actual_b, expected_b;
    output integer errors;
    begin
      errors = 0;

      if (actual_a !== expected_a)
        errors = errors + 1;

      if (actual_b !== expected_b)
        errors = errors + 1;
    
    end
  endtask
endmodule
