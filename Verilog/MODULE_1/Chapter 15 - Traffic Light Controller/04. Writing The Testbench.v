module traffic_light (
  input clk,
  input reset,
  output reg red,
  output reg yellow,
  output reg green
);
  // TODO: Task 1 - Declare state register (2 bits)
  reg [1:0] state;
  // TODO: Task 2 - Declare counter register (6 bits)
  reg [5:0] counter;

  // TODO: Task 3 - Output assignments using case (state)
  // state 0: green=1, yellow=0, red=0
  // state 1: green=0, yellow=1, red=0
  // state 2: green=0, yellow=0, red=1
  always @(*) begin
        case (state)
        0: begin 
            green = 1;
            yellow = 0;
            red = 0;
        end
        1: begin
            green = 0;
            yellow = 1;
            red = 0;
        end
        2: begin
            green = 0;
            yellow = 0;
            red = 1;
        end
        default: begin
            green = 0;
            yellow = 0;
            red = 0;
        end
        endcase
    end
    
    always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= 2;
      counter <= 0;
    end
    else begin 
      if (counter == 0) begin
      case (state)
        0: begin
        state <= 1;
        counter <= 10;
        end

        1: begin
          state <= 2;
          counter <= 40;
        end
        2: begin
          state <= 0;
          counter <= 30;
        end
        default: begin
           state <= 2;
           counter <= 40;
        end
      endcase
    end
    else begin
      counter <= counter - 1'b1;
      end
    end
    end

endmodule


module testbench;
  reg clk, reset;
  wire red, yellow, green;

  traffic_light uut (
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
  );

  initial begin
    $display("Traffic Light Test");

    clk = 0;
    reset = 0;

    // Apply reset for 2 time units
        reset = 1;
        #2;
        reset = 0;

        // Run simulation for 100 time units
        #100;

        $display("Test complete");
        $finish;
    end

    // Generate clock: toggle every 1 time unit
    always #1 clk = ~clk;

endmodule


    /*
    module testbench;
  reg clk, reset;
  wire red, yellow, green;
  
  traffic_light uut (
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
  );
  
  always #1 clk = ~clk;
  
  initial begin
    $display("Traffic Light Test");
    
    clk = 0;
    reset = 1;
    #2 reset = 0;
    
    #100;
    
    $display("Test complete");
    $finish;
  end
endmodule
    */
