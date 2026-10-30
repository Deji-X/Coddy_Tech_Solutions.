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


