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


/*
Implement a four-word 8-bit memory with synchronous write and registered read q.
we writes on rising edges.
rst synchronously clears only q; otherwise re loads q from the pre-edge mem[raddr];
re=0 holds q. Memory is not reset, and writes are independent of rst.
If read and write share an address on one edge, q receives the old word.
Tests initialize words before enabled reads. Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/
