/*
Accumulate signed 8-bit sample into signed q on enabled rising edges,
saturating at -128 and 127.
Set sticky clipped whenever saturation occurs; once set, it remains set until rst or clear.
Both synchronous controls clear q and clipped and have priority over en.
Disabled edges hold both values. Output columns: q, clipped.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
    input clk,
    input rst,
    input clear,
    input en,
    input signed [7:0] sample,
    output reg signed [7:0] q,
    output reg clipped
);

    reg signed [8:0] sum;

    initial begin
        q = 0;
        clipped = 0;
    end

    always @(posedge clk) begin
        if (rst) begin
            q <= 0;
            clipped <= 0;
        end
        else if (clear) begin
            q <= 0;
            clipped <= 0;
        end
        else if (en) begin
            sum = q + sample;

            if (sum > 127) begin
                q <= 127;
                clipped <= 1'b1;
            end
            else if (sum < -128) begin
                q <= -128;
                clipped <= 1'b1;
            end
            else begin
                q <= sum[7:0];
            end
        end
    end

endmodule
