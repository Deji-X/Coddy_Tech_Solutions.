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
