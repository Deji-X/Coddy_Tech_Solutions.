/*
Track the four known combinations of en and clear.
Set seen[{en,clear}] to one on each call, preserving prior hits.
The index order is 00,01,10,11. The caller initializes seen=0 before each scenario.
This module contains a simulation-only task called by the locked testbench.
Output columns: seen as decimal.
*/


module dut;
  task observe_controls;
    input en, clear;
    inout [3:0] seen;
    begin
      seen[{en,clear}] = 1'b1;
    end
  endtask
endmodule
