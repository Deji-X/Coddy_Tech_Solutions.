/*
Build one Sample Monitor over five steps.
Drive combinational alarm high whenever total is at least unsigned limit,
including equality.
The alarm reflects the updated total after each edge and follows limit changes.
limit=0 makes alarm high even when total=0.
Preserve all accumulation, enable, clear and counting behavior.
Keep everything from the previous steps,
including its testbench and earlier output behavior.
All input values are known.
Scenarios contain at most 40 edges, so the total fits in 16 bits.
The fixed testbench prints total for scenarios 1-9, total and count for scenarios 10-12,
and total, count and alarm for scenarios 13-15.
Only scenarios enabled for this step are graded.
*/

module dut(input clk,rst,en,clear,
    input [7:0] data,
    input [15:0] limit,
    output reg [15:0] total,
    output reg [3:0] count,
    output alarm
    );

    initial begin
        total = 0;
        count = 0;
    end

  assign alarm = (total >= limit);
    
    always @(posedge clk) begin
        if (rst) begin
            total <= 16'b0;
            count <= 4'b0;
        end
        else if (clear) begin
            total <= 16'b0;
            count <= 4'b0;
        end
        else if (en) begin
            total <= total + data;
            if (count < 15)
                count <= count + 1'b1;
        end
    end
endmodule
