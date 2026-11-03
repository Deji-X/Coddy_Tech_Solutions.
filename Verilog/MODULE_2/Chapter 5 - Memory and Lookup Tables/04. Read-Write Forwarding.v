/*
A memory interface must define same-address read/write behavior.
Forwarding explicitly selects incoming write data for a collision,
producing new-data behavior.
Without that bypass, the previous nonblocking read template captures old data.
Device memory modes differ,
so simulation semantics alone do not guarantee a specific primitive mapping.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

if(re) begin
    if(we && waddr==raddr) q <= data;
    else q <= mem[raddr];
end

The bypass selects the incoming word only for a real address collision.

Define collision behavior explicitly and verify it against the chosen hardware memory mode.
*/

/*
Implement a registered-read four-word memory with new-data forwarding.
The write and reset/read-enable rules match the prior lesson.
On an enabled read colliding with an enabled write to the same address,
q captures incoming data instead of the old word.
For other reads it captures mem[raddr].
Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input we,
  input re,
  input [1:0] waddr,
  input [1:0] raddr,
  input [7:0] data,
  output reg [7:0] q
);
    reg [7:0] mem [0:3];

    always @(posedge clk) begin
        if (we)
            mem[waddr] <= data;
    end

    always @(posedge clk) begin
        if (rst)
            q <= 8'b0; 
        else if(re) begin
            if(we && waddr==raddr)
                q <= data;
            else
            q <= mem[raddr];
        end
    end
    

endmodule
