`timescale 1ns/1ps
module testbench;
    reg [3:0] req;
    wire [3:0] grant;
    integer scenario;
    dut uut (.req(req), .grant(grant));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                req = 4'd0;
                #1;
                $display("%0d", grant);
                req = 4'd1;
                #1;
                $display("%0d", grant);
                req = 4'd10;
                #1;
                $display("%0d", grant);
            end
            2: begin
                req = 4'd8;
                #1;
                $display("%0d", grant);
                req = 4'd15;
                #1;
                $display("%0d", grant);
                req = 4'd2;
                #1;
                $display("%0d", grant);
            end
            3: begin
                req = 4'd4;
                #1;
                $display("%0d", grant);
                req = 4'd3;
                #1;
                $display("%0d", grant);
                req = 4'd12;
                #1;
                $display("%0d", grant);
            end
        endcase
    end
endmodule
