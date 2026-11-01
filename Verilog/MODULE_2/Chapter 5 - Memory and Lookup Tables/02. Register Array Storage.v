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
