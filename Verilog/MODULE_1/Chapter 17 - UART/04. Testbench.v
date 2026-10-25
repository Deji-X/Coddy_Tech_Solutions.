module uart_tx (
  input clk,
  input start,
  input [7:0] data_in,
  output reg tx,
  output reg [3:0] cnt
);

  reg [9:0] shift_reg; // Internal signal/register.

initial begin
  cnt = 0;
  tx = 1; //Idle high.
end

  always @(posedge clk) begin
    if (cnt == 0 && start == 1) begin
      cnt <= 1;
      shift_reg <= {1'b1, data_in, 1'b0};
    end
    
    else if (cnt >= 1 && cnt <=8) begin
      tx <= shift_reg[0];
      cnt <= cnt + 1;
      shift_reg <= shift_reg >> 1;
    end
    
    else if (cnt == 9) begin
      cnt <= 0;
      tx <= shift_reg[0];
      shift_reg <= shift_reg >> 1;
    end
  end
    
endmodule

module testbench;
  reg clk, start;
  reg [7:0] data_in;
  wire tx;
  wire [3:0] cnt;

  uart_tx uut (
    .clk(clk),
    .start(start),
    .data_in(data_in),
    .tx(tx),
    .cnt(cnt)
  );

  always #5 clk = ~clk;

  initial begin
  $dumpfile("uart.vcd");
  $dumpvars(0, testbench);

  clk = 0; start = 1; data_in = 8'b01000001;
  start = 0; #10;
  #200;

  $finish;
  end

endmodule
