/*
Detect the bit pattern 101 in accepted input samples.
en=1 accepts bit_in on the rising edge;
en=0 preserves partial-match state and produces hit=0.
Set registered hit=1 only on an accepted bit completing 101.
Overlapping matches are allowed: 10101 produces two pulses.
Synchronous rst clears state and hit, taking priority over en. Output columns: hit.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
    input clk,
    input rst,
    input en,
    input bit_in,
    output reg hit
);

    reg [1:0] state;

    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;

    initial begin
        state = S0;
        hit = 0;
    end

    always @(posedge clk) begin
        if (rst) begin
            state <= S0;
            hit <= 1'b0;
        end
        else begin
            hit <= 1'b0;

            if (en) begin
                case (state)

                    S0: begin
                        if (bit_in)
                            state <= S1;
                        else
                            state <= S0;
                    end

                    S1: begin
                        if (bit_in)
                            state <= S1;
                        else
                            state <= S2;
                    end

                    S2: begin
                        if (bit_in) begin
                            hit <= 1'b1;
                            state <= S1;
                        end
                        else
                            state <= S0;
                    end

                    default: begin
                        state <= S0;
                    end

                endcase
            end
        end
    end

endmodule
