/*    REGISTERED READ PORTS.

A registered read captures memory data at a clock edge and holds that value afterward.
A read enable can preserve the previous output on disabled cycles.
Resetting the read register does not require clearing every memory word.
With nonblocking read and write assignments, the read expression sees the pre-edge word.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @(posedge clk) begin
    if(we) mem[waddr] <= data;
    if(rst) q <= 0;
    else if(re) q <= mem[raddr];
end
The output register updates only on the specified edge and enabled path.

Document read latency, disabled-read behavior and which state reset actually clears.
*/
