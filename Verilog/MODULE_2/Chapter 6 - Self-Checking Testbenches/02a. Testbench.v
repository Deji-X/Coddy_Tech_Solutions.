`timescale 1ns/1ps
module testbench;
    reg ok;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                uut.check_value(7,7,ok);$display("%0d",ok);
                uut.check_value(7,8,ok);$display("%0d",ok);
            end
            2: begin
                uut.check_value(8'hx1,8'h01,ok);$display("%0d",ok);
                uut.check_value(0,0,ok);$display("%0d",ok);
            end
            3: begin
                uut.check_value(255,255,ok);$display("%0d",ok);
                uut.check_value(8'hz0,8'hz0,ok);$display("%0d",ok);
            end
        endcase
    end
endmodule
