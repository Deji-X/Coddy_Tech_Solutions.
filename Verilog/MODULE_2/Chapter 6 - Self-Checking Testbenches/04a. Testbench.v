`timescale 1ns/1ps
module testbench;
    reg [2:0] seen;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                seen=0;uut.observe(0,seen);uut.observe(15,seen);uut.observe(7,seen);$display("%0d",seen);
            end
            2: begin
                seen=0;uut.observe(1,seen);uut.observe(8,seen);$display("%0d",seen);
            end
            3: begin
                seen=0;uut.observe(0,seen);uut.observe(0,seen);uut.observe(15,seen);$display("%0d",seen);
            end
        endcase
    end
endmodule
