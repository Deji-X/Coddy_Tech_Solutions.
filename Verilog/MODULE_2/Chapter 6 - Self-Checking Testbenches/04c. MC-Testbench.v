`timescale 1ns/1ps
module testbench;
    reg [3:0] seen;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                seen=0;uut.observe_controls(0,0,seen);uut.observe_controls(1,1,seen);$display("%0d",seen);
            end
            2: begin
                seen=0;uut.observe_controls(0,0,seen);uut.observe_controls(0,1,seen);uut.observe_controls(1,0,seen);uut.observe_controls(1,1,seen);$display("%0d",seen);
            end
            3: begin
                seen=0;uut.observe_controls(1,0,seen);uut.observe_controls(1,0,seen);uut.observe_controls(0,1,seen);$display("%0d",seen);
            end
        endcase
    end
endmodule
