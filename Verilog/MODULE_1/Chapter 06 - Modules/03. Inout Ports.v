/*  INOUT PORTS 
inout is a bidirectional port that can both drive and receive signals.
Only one device drives the bus at a time; others must output high-impedance (Z)

module bidir(
  inout [7:0] bus,
  input [7:0] data_out,
  input enable,
  output [7:0] data_in
);

  assign bus = (enable) ? data_out : 8'bZ;   // Drive when enabled, else release.
  assign data_in = bus;                      // Always read the bus.

endmodule

KEY RULES:
1. Must be wire, not reg.
2. Use assign with a ternary condition: never assign inside an always block.
3. Release with Z when not driving to avoid bus contention.
*/
module bidir_buffer(
  inout [7:0] io_bus,
  input [7:0] send_value;
  input send_enable;
  output [7:0] receive_value
);

  assign io_bus = send_enable ? send_value : 8'bZ;

  assign receive_value = io_bus;

endmodule
