/*
Return a 4-bit one-hot grant for the highest asserted request bit.
Return zero when no request exists.
At most one grant bit may be high even if several requests are high.
Output columns: grant.
All stimulus values are known binary values.
*/

module dut (input [3:0] req, output reg [3:0] grant);
    // Replace this placeholder with your design.
    always @(*) begin
        grant = 4'b0000;

        if (req[3])
            grant = 4'b1000;
        else if (req[2])
            grant = 4'b0100;
        else if (req[1])
            grant = 4'b0010;
        else if (req[0])
            grant = 4'b0001;
    end
endmodule
