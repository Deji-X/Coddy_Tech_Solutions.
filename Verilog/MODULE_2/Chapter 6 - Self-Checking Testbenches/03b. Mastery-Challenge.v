/*
Maintain scoreboard counters across calls. On every record_sum call increment checked,
calculate full five-bit a+b from the inputs,
and increment errors only when actual differs in four-state comparison.
The caller initializes both counters to zero before each scenario.
This module contains a simulation-only task called by the locked testbench.
Output columns: checked then errors.
*/
