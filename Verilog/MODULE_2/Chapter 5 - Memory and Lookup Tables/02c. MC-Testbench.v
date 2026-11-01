`timescale 1ns/1ps
module testbench;
    reg clk;
    reg we;
    reg [1:0] waddr;
    reg [7:0] data;
    reg [1:0] raddr_a;
    reg [1:0] raddr_b;
    wire [7:0] qa;
    wire [7:0] qb;
    integer scenario;
    dut uut (
      .clk(clk),
      .we(we),
      .waddr(waddr),
      .data(data),
      .raddr_a(raddr_a),
      .raddr_b(raddr_b),
      .qa(qa),
      .qb(qb)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                we = 1'd1; waddr = 2'd0; data = 8'd7; raddr_a = 2'd0; raddr_b = 2'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd1; waddr = 2'd1; data = 8'd9; raddr_a = 2'd0; raddr_b = 2'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd0; waddr = 2'd0; data = 8'd0; raddr_a = 2'd1; raddr_b = 2'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
            2: begin
                we = 1'd1; waddr = 2'd3; data = 8'd255; raddr_a = 2'd3; raddr_b = 2'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd1; waddr = 2'd2; data = 8'd0; raddr_a = 2'd2; raddr_b = 2'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd1; waddr = 2'd3; data = 8'd4; raddr_a = 2'd3; raddr_b = 2'd2;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
            3: begin
                we = 1'd1; waddr = 2'd1; data = 8'd4; raddr_a = 2'd1; raddr_b = 2'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd0; waddr = 2'd1; data = 8'd9; raddr_a = 2'd1; raddr_b = 2'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                we = 1'd1; waddr = 2'd1; data = 8'd12; raddr_a = 2'd1; raddr_b = 2'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
        endcase
    end
endmodule
