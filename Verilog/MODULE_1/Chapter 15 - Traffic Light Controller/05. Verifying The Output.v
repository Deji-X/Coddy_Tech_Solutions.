/*
Verifying The Output

challenge icon
Challenge

Easy
In this lesson, you will add waveform dump commands and verify that the traffic light controller works correctly.

Until now the testbench was hidden and appended to your module. In this step the testbench is part of your file: keep the traffic_light module from the previous step (counter timing, no next input) and add a testbench module below it. If your file has no module testbench yet, copy this one:

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
    // TODO: Add $dumpfile to create "traffic.vcd"
    // TODO: Add $dumpvars to dump all signals (0, testbench)
    $display("Traffic Light Test");
    $monitor("Time %0t: red=%b, yellow=%b, green=%b", $time, red, yellow, green);
    clk = 0;
    reset = 1;
    #2 reset = 0;
    #90;
    $finish;
  end
endmodule
What to do:

Update the testbench to:

Add $dumpfile to create a waveform file named traffic.vcd
Add $dumpvars to dump all signals in the testbench
Run the simulation and check the output
The test compares the whole simulator output, so the testbench must print exactly what the testbench above prints and nothing else: the $display("Traffic Light Test") header, one $monitor line per change of the lights, a clock that toggles every time unit, reset released at time 2 and $finish after #90. Do not add other $display lines (no "Test complete").

Expected output (the simulator adds a final $finish called at 92 line by itself):

VCD info: dumpfile traffic.vcd opened for output.
Traffic Light Test
Time 0: red=1, yellow=0, green=0
Time 3: red=0, yellow=0, green=1
Time 65: red=0, yellow=1, green=0
Time 87: red=1, yellow=0, green=0
*/

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
    $dumpfile("traffic.vcd");
    $dumpvars(0, testbench);
    $display("Traffic Light Test");
    $monitor("Time %0t: red=%b, yellow=%b, green=%b", $time, red, yellow, green);
    clk = 0;
    reset = 1;
    #2 reset = 0;
    #90;
    $finish;
  end
endmodule
