`timescale 1ns/1ps
module testbench;
    reg [2:0] addr_a;
    reg [2:0] addr_b;
    wire [8:0] total;
    integer scenario;
    dut uut (
      .addr_a(addr_a),
      .addr_b(addr_b),
      .total(total)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                addr_a = 3'd0; addr_b = 3'd7;
                #1;
                $display("%0d", total);
                addr_a = 3'd7; addr_b = 3'd7;
                #1;
                $display("%0d", total);
                addr_a = 3'd3; addr_b = 3'd4;
                #1;
                $display("%0d", total);
            end
            2: begin
                addr_a = 3'd1; addr_b = 3'd2;
                #1;
                $display("%0d", total);
                addr_a = 3'd6; addr_b = 3'd5;
                #1;
                $display("%0d", total);
                addr_a = 3'd0; addr_b = 3'd0;
                #1;
                $display("%0d", total);
            end
            3: begin
                addr_a = 3'd4; addr_b = 3'd4;
                #1;
                $display("%0d", total);
                addr_a = 3'd2; addr_b = 3'd7;
                #1;
                $display("%0d", total);
                addr_a = 3'd5; addr_b = 3'd1;
                #1;
                $display("%0d", total);
            end
        endcase
    end
endmodule
