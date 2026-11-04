/*
Maintain scoreboard counters across calls. On every record_sum call increment checked,
calculate full five-bit a+b from the inputs,
and increment errors only when actual differs in four-state comparison.
The caller initializes both counters to zero before each scenario.
This module contains a simulation-only task called by the locked testbench.
Output columns: checked then errors.
*/

module dut;
  task record_sum;
    input [3:0] a, b;
    input [4:0] actual;
    inout integer checked, errors;
    reg [4:0] expected;
    begin
      expected = {1'b0,a} + {1'b0,b};

      checked = checked + 1;

      if (actual !== expected)
        errors = errors + 1;
      
    end
  endtask
endmodule
