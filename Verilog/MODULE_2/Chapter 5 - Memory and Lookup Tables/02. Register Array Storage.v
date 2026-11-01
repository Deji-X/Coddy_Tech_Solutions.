/*REGISTER ARRAY STORAGE

An unpacked array can model words of hardware storage.
A clocked write updates one selected word;
a continuous read selects a word without a read clock.
Synthesis may implement small arrays with registers or
infer memory resources for supported patterns.
Never assume an unwritten word starts at zero.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

reg [7:0] mem [0:3];
always @(posedge clk)
    if(we) mem[waddr] <= data;
assign q = mem[raddr];


The write is edge-triggered, while the read follows the selected stored word.

Define write enable and read timing explicitly;
do not depend on unspecified initial memory contents.
*/

/*
Implement four 8-bit words. At a rising edge, we writes data into mem[waddr].
q is an asynchronous combinational read of mem[raddr].
Memory has no reset or initial contents;
the testbench writes each observed address before reading it.
Observations occur after the edge, so a same-address write is visible in q. 
Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
    input clk,
    input we,
    input [1:0] waddr,
    input [7:0] data,
    input [1:0] raddr,
    output [7:0] q
);

    reg [7:0] mem [0:3];

    always @(posedge clk) begin
        if (we)
            mem[waddr] <= data;
    end

    assign q = mem[raddr];

endmodule

