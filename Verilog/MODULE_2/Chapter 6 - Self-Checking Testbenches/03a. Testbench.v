`timescale 1ns/1ps
module testbench;
    reg ok;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                uut.check_sum(15,1,16,ok);$display("%0d",ok);
                uut.check_sum(15,1,0,ok);$display("%0d",ok);
            end
            2: begin
                uut.check_sum(0,0,0,ok);$display("%0d",ok);
                uut.check_sum(15,15,30,ok);$display("%0d",ok);
            end
            3: begin
                uut.check_sum(3,4,5'bxxxxx,ok);$display("%0d",ok);
                uut.check_sum(3,4,7,ok);$display("%0d",ok);
            end
        endcase
    end
endmodule
