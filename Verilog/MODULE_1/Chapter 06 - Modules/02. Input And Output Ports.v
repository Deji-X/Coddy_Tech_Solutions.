/* INPUT AND OUTPUT PORTS
Ports are the interface between a module and the outside world.

INPUT PORTS
Inputs are always wire, rerad-only inside the module:

input clk;             // Single-bit
input [7:0] data;      // 8-bit vector
input a, b;            // Multiple inputs


OUTPUT PORTS
Outputs can be wire (driven by assign) ---> Combinational.
Or they can be reg  (driven by always) ---> Sequential:

output wire ready;      // Use with assign
output reg busy;        // Use with always


PORT DECLARATION IN MODULE HEADER
Each port declaration specifies direction, size and name:

module example(
  input [7:0] data_in,  // 8-bit input.
  input clk,            // Single-bit input.
  output reg [3:0] sum  // 4-bit output reg.
  output diff           // Single-bit output wire.
);
  always @(*) sum = data_in[3:0] +1;
  assign diff = data_in[0];

endmodule

*/

module port_challenge(
  input [8:0] data_in,
  input clk,
  output reg [3:0] result,
  output valid
);

  reg [3:0] counter;

  always @(posedge clk) begin
    counter <= counter + 1;
    result <= counter;

  end

  assign valid = (counter > 8);
  
endmodule
