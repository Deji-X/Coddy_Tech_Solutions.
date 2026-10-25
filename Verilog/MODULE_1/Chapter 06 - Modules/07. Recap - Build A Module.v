/* RECAP- Build A Model
This challenge combines everything you learnt in this chapter.
You will create a module from scratch and instantiate it.

*/

module flipflop(
  input clk,
  input d,
  input reset,
  output reg q
);

  always @(posedge clk or posedge reset)begin
    if (reset)
      q <= 1'b0;
    else
      q <= d;
  end
  
endmodule

module top(
  input clock,
  input data,
  input reset_signal,
  output out
);

  flipflop ff1(
    .clk(clock),
    .d(data),
    .reset(reset_signal),
    .q(out)
  );

endmodule
