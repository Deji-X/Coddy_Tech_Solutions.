module uart_tx (
  input clk,
  input start,
  output reg tx,
  output reg [3:0] cnt
);
initial begin
  cnt = 0;
  tx = 1; //Idle high.
end

  always @(posedge clk) begin
  if (cnt == 0 & start == 1)
    cnt <= 1;
  else if (cnt >= 1 && cnt <=9)
    cnt <= cnt + 1;
  else if (cnt == 10)
    cnt <= 0;
  end
    
endmodule
