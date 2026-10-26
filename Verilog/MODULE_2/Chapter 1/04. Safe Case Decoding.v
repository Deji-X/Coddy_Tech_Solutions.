/*
Use an ordinary case statement for exact control codes.
Supply default behavior for unsupported codes and assign all outputs.
Wildcard decoding with casex can hide unknown control bits in simulation,
so it is unsuitable when unknowns should remain visible during debugging.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @* begin
    y = 0;
    invalid = 0;
    case (op)
        0: y = a & b;
        1: y = a | b;
        default: invalid = 1;
    endcase
end
Unsupported codes produce an explicit status rather than retaining a previous output.

Define unsupported control codes explicitly and avoid masking unknown controls with casex.
*/
/*
Implement an 8-bit logic unit:
op 0 computes a AND b,
op 1 computes a OR b,
op 2 computes a XOR b,
and op 3 returns zero with invalid set to one.
Invalid is zero for supported operations.
Output columns: y, invalid.
All stimulus values are known binary values.
*/

module dut (
    input [1:0] op,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] y,
    output reg invalid
);

    always @(*) begin
        y = 0;
        invalid = 0;
        
        case (op)
            2'b00: y = a & b;
            2'b01: y = a | b;
            2'b10: y = a ^ b;
            2'b11: begin
                y = 0;
                invalid = 1;
            end
        endcase
    end

endmodule
