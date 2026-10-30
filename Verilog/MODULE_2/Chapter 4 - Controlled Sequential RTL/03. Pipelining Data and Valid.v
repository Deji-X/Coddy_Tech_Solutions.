/*    PIPELINING DATA AND VALID



Pipelines separate work across registers.
A valid flag travels beside each data item so a downstream stage can distinguish
a sample from a bubble. With nonblocking assignments,
a later stage reads the previous value of an earlier stage at the same edge.
Reset should invalidate in-flight work.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @(posedge clk) begin
    stage <= data;
    stage_valid <= in_valid;
    result <= stage;
    out_valid <= stage_valid;
end

Data and its validity move through the same number of registers.

Align data and valid through every pipeline stage and flush validity on reset.
*/

/*
Implement a two-register-stage pipeline.
On each non-reset edge, stage one captures a and in_valid.
Stage two uses the previous stage-one values:
out_valid becomes its old valid,
and y becomes its old data plus one modulo 256 when valid, otherwise zero.
Synchronous rst clears both stages and outputs. Output columns: y, out_valid.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/


module dut (
    input clk,
    input rst,
    input in_valid,
    input [7:0] a,
    output reg [7:0] y,
    output reg out_valid
);

    reg [7:0] acuon;
    reg acuon_valid;

    always @(posedge clk) begin
        if (rst) begin
            acuon       <= 8'b0;
            acuon_reset <= 1'b0;
            y           <= 8'b0;
            out_valid   <= 1'b0;
        end
        
        else begin
            // Stage 1
            acuon       <= a;
            acuon_valid <= out_valid;

            // Stage 2
            out_valid <= acuon_valid;

            if (acuon_valid)
                y <= acuon + 1'b1;
            else
                y <= 8'b0;
        end

    end
            
endmodule

