/*Detecting Sampled Edges

A level can remain high for many cycles, while an event pulse should last for one cycle.
Store the previous sampled level and compare it with the current one.
This edge detector assumes an input already synchronous to this clock;
it is not a clock-domain crossing synchronizer.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

previous <= sig;
rising <= sig & ~previous;
The old stored level makes a single pulse at the sampled transition.

Compare current and previous sampled levels;
use this detector only with a synchronous input.
*/

/*
For a signal sig already synchronous to clk,
produce a registered one-cycle pulse on each sampled 0-to-1 transition.
Synchronous rst clears the stored previous level and pulse.
A high sig on the first non-reset edge therefore produces a pulse.
Output columns: pulse.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input sig,
  output reg pulse
);
  reg prev_sig;

  always @(posedge clk) begin
    if (rst) begin
      prev_sig <= 1'b0;
      pulse    <= 1'b0;
    end

    else begin
      prev_sig <= sig;
      pulse    <= sig & ~prev_sig;
    end
  end

endmodule
