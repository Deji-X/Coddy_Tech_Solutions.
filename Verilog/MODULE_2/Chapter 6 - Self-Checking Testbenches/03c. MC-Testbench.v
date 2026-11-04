`timescale 1ns/1ps
module testbench;
    integer checked,errors;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                checked=0;errors=0;
                uut.record_sum(1,2,3,checked,errors);
                uut.record_sum(15,1,0,checked,errors);
                $display("%0d %0d",checked,errors);
            end
            2: begin
                checked=0;errors=0;
                uut.record_sum(0,0,5'bxxxxx,checked,errors);
                uut.record_sum(2,2,3,checked,errors);
                uut.record_sum(15,15,30,checked,errors);
                $display("%0d %0d",checked,errors);
            end
            3: begin
                checked=0;errors=0;
                uut.record_sum(0,0,0,checked,errors);
                uut.record_sum(8,7,15,checked,errors);
                $display("%0d %0d",checked,errors);
            end
        endcase
    end
endmodule
