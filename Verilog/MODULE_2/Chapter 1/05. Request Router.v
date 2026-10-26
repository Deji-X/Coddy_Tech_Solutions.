/*
Accept a 4-bit request only if exactly one bit is set.
When valid, output the selected bit index in code and set valid.
For idle or multiple requests, both code and valid are zero. Output columns: code, valid.
All stimulus values are known binary values.
*/

module dut (
    input  [3:0] req,
    output reg [1:0] code,
    output reg       valid
);

    always @(*) begin
        code = 2'b00;
        valid = 1'b0;

        if ((req != 4'b0000) && ((req & (req - 1'b1)) == 4'b0000)) begin
            valid = 1'b1;

            case (req)
                4'b0001: code = 2'd0;
                4'b0010: code = 2'd1;
                4'b0100: code = 2'd2;
                4'b1000: code = 2'd3;
            endcase
        end
    end

endmodule
