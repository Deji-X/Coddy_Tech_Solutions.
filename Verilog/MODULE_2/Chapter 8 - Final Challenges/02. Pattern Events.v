/*
Detect the bit pattern 101 in accepted input samples.
en=1 accepts bit_in on the rising edge;
en=0 preserves partial-match state and produces hit=0.
Set registered hit=1 only on an accepted bit completing 101.
Overlapping matches are allowed: 10101 produces two pulses.
Synchronous rst clears state and hit, taking priority over en. Output columns: hit.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (input clk, input rst, input en, input bit_in, output reg hit);
    // Replace this placeholder with your design.
    initial hit = 0;
endmodule
