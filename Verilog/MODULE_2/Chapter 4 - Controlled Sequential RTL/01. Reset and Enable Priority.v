/*
Reset and Enable Priority

A clocked block can hold a register by omitting an assignment on disabled edges.
This intentional storage differs from an accidental combinational latch.
Write an explicit priority among reset, load and enable.
Here resets are synchronous: they take effect only at the rising clock edge.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @(posedge clk) begin
    if(rst) q <= 0;
    else if(en) q <= data;
end

Reset wins when both controls are asserted, and disabled non-reset edges retain q.

Use one clocked priority chain and define reset, load, enable and hold behavior precisely.
*/

/*
Implement an 8-bit register q with active-high synchronous reset rst and enable en.
On a rising edge, reset wins and clears q; otherwise enabled edges load a;
disabled edges hold q. Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
    input clk,
    input rst,
    input en,
    input [7:0] a,
    output reg [7:0] q
);

    always @(posedge clk) begin
        if (rst)
            q <= 8'b0;
        else if(en)
            q <= a;
    end

endmodule
