module uart_tx (
  input clk,
  output reg [3:0] cnt
); 
  initial begin
  cnt = 0;

  always @(posedge clk)
    cnt <= cnt + 1;  
  end
endmodule
