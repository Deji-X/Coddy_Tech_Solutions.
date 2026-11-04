`timescale 1ns/1ps
module testbench;
    integer errors;
    integer scenario;
    dut uut();
    initial begin
        if(!$value$plusargs("CASE=%d",scenario))scenario=1;
        case(scenario)
            1: begin
                uut.check_pair(1,1,2,2,errors);$display("%0d",errors);
                uut.check_pair(1,2,3,4,errors);$display("%0d",errors);
            end
            2: begin
                uut.check_pair(8'hxx,0,7,7,errors);$display("%0d",errors);
                uut.check_pair(8'hxx,8'hxx,0,1,errors);$display("%0d",errors);
            end
            3: begin
                uut.check_pair(1,2,0,0,errors);$display("%0d",errors);
                uut.check_pair(0,0,0,0,errors);$display("%0d",errors);
            end
        endcase
    end
endmodule
