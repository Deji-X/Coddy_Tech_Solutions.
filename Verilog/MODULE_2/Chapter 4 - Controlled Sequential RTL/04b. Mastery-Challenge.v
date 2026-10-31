/*
For synchronous sig, produce separate registered one-cycle rising and falling pulses.
Rising marks a sampled 0-to-1 transition, falling marks 1-to-0.
Synchronous rst clears both outputs and the stored previous level.
Output columns: rising, falling.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/


module dut (
  input clk,
  input rst,
  input sig,
  output reg rising,
  output reg falling
);

  reg prev_sig;

  always @(posedge clk) begin
    if (rst) begin
      prev_sig     <= 1'b0;
      rising       <= 1'b0;
      falling      <= 1'b0;
    end

    else begin
      prev_sig <= sig;
      rising <= sig & ~prev_sig;
      falling <= ~sig & prev_sig);
    end

  end

  

endmodule
