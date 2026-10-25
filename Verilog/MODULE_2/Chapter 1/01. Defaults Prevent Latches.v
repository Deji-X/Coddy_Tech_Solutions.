/*Defaults Prevent Latches



A combinational output must be assigned for every input path. If an always block skips assigning an output, that output retains its old value, which can infer a latch. A default assignment followed by overrides makes coverage visible.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @* begin
    y = 0;
    if (en) y = data;
end
The default covers the disabled path, so the output depends only on current inputs.

Assign every combinational output on every path; use defaults before conditional overrides.


Defaults Prevent Latches

A combinational output must be assigned for every input path. If an always block skips assigning an output, that output retains its old value, which can infer a latch. A default assignment followed by overrides makes coverage visible.

Verilog example:

always @(*) begin
    y = 0;
    if (en)
        y = data;
end

How it works:
1. always @(*) executes whenever a signal read inside the block changes.
2. y = 0 assigns a default value to y before checking the condition.
3. if (en) y = data; if en is 1, y is overwritten with data. Otherwise, y remains 0.

Truth table:
en | data | y
0  | 0    | 0
0  | 1    | 0
1  | 0    | 0
1  | 1    | 1

The key idea is that y is assigned a value for every possible value of en. Therefore, it does not need to remember its previous value, and no latch is inferred.

Without the default assignment:

always @(*) begin
    if (en)
        y = data;
end

When en = 0, y is not assigned a new value. It must retain its previous value, which can infer a latch.

Remember: for combinational logic, assign every output on every possible path. Defaults followed by conditional overrides are a simple way to achieve this.
*/

module dut (
    input en,
    input [7:0] a,
    output reg [7:0] y
);

    initial y = 0;

    always @(*) begin
        y = 8'b00000000;
        if (en)
            y = a;
    end

endmodule
