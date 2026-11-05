`timescale 1ns/1ps
module testbench;
    integer checked,errors;reg [2:0] seen;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                checked=0;errors=0;seen=0;uut.audit(0,0,0,checked,errors,seen);uut.audit(15,15,30,checked,errors,seen);uut.audit(15,1,0,checked,errors,seen);$display("%0d %0d %0d",checked,errors,seen);
            end
            2: begin
                checked=0;errors=0;seen=0;uut.audit(2,3,5,checked,errors,seen);uut.audit(1,1,2,checked,errors,seen);$display("%0d %0d %0d",checked,errors,seen);
            end
            3: begin
                checked=0;errors=0;seen=0;uut.audit(0,0,5'bxxxxx,checked,errors,seen);uut.audit(15,15,0,checked,errors,seen);$display("%0d %0d %0d",checked,errors,seen);
            end
        endcase
    end
endmodule
