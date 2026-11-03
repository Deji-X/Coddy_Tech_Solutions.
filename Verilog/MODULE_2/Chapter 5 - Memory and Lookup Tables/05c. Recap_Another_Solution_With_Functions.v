module dut (
    input clk,
    input rst,
    input we,
    input re,
    input [1:0] waddr,
    input [1:0] raddr_a,
    input [1:0] raddr_b,
    input [7:0] data,
    output reg [7:0] qa,
    output reg [7:0] qb
);

    reg [7:0] mem [0:3];

    // Read function
    function [7:0] read_mem;
        input [1:0] addr;
        begin
            read_mem = mem[addr];
        end
    endfunction

    // Memory write
    always @(posedge clk) begin
        if (we)
            mem[waddr] <= data;
    end

    // Registered reads
    always @(posedge clk) begin
        if (rst) begin
            qa <= 8'b0;
            qb <= 8'b0;
        end
        else if (re) begin
            qa <= read_mem(raddr_a);
            qb <= read_mem(raddr_b);
        end
    end

endmodule
