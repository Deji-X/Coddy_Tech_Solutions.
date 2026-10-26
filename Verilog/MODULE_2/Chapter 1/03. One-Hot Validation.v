/*
One-Hot Validation



One-hot data has exactly one asserted bit. A decoder generates such data, while validation checks incoming data before using it. For known binary values, a nonzero value is one-hot when bits & (bits - 1) is zero. This section does not use that shortcut to classify X or Z.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

assign one_hot = (bits != 0) && ((bits & (bits - 1)) == 0);
The nonzero check excludes idle; the bit trick rejects multiple set bits.

Distinguish zero, exactly one set bit and multiple set bits when validating requests.
*/
/*
One-Hot Validation in Verilog
Beginner-friendly explanation with examples

1. What does one-hot mean?

A one-hot bit vector has exactly one bit set to 1, and every other bit is 0.
Examples:
- 4'b0100 is one-hot because it contains exactly one 1.
- 4'b0000 is not one-hot because it contains no 1s.
- 4'b1010 is not one-hot because it contains two 1s.

2. The given expression

assign one_hot = (bits != 0) && ((bits & (bits - 1)) == 0);

This expression returns 1 when bits is nonzero and has exactly one asserted bit. It returns 0 for zero or for a value with multiple asserted bits, assuming bits contains known binary values.

3. Why check bits != 0?

The first condition excludes zero. Without it, zero would incorrectly pass the bit trick because 0 & (0 - 1) evaluates to 0 in fixed-width binary arithmetic. One-hot means exactly one bit is set, not zero bits.

4. Why does bits & (bits - 1) work?

Subtracting 1 from a nonzero binary number clears its lowest set bit and turns the trailing zeros below it into ones. ANDing the original value with that result clears the lowest set bit. If the original value had only one set bit, the AND result is zero. If it had two or more set bits, another set bit remains, so the result is nonzero.

5. Worked examples

Example A: bits = 4'b0100 (decimal 4)
bits       = 0100
bits - 1   = 0011
AND        = 0000
The value is nonzero and the AND result is zero, so one_hot = 1.

Example B: bits = 4'b0000
The nonzero check fails, so one_hot = 0.

Example C: bits = 4'b1010 (decimal 10)
bits       = 1010
bits - 1   = 1001
AND        = 1000
The AND result is nonzero, so one_hot = 0.

6. Truth summary

bits   Meaning                 one_hot
0000   No bits asserted        0
0001   Exactly one asserted    1
0100   Exactly one asserted    1
1000   Exactly one asserted    1
0011   Multiple asserted       0
1010   Multiple asserted       0
1111   Multiple asserted       0

7. Distinguishing the three cases

- Zero requests: bits == 0.
- Exactly one request: bits != 0 and (bits & (bits - 1)) == 0.
- Multiple requests: bits != 0 and (bits & (bits - 1)) != 0.

These checks are intended for known binary values. The challenge statement says this shortcut is not being used to classify X or Z values.

8. Verilog example

wire no_request = (bits == 0);
wire one_hot = (bits != 0) && ((bits & (bits - 1)) == 0);
wire multiple_requests = (bits != 0) && ((bits & (bits - 1)) != 0);

Here, bits is assumed to be a declared vector of a suitable width. Keep expression widths consistent with bits in synthesizable designs.

Key takeaway

The nonzero check separates idle (zero) from an active one-hot request. The expression bits & (bits - 1) checks whether more than one bit is set: a zero result means exactly one bit was set, while a nonzero result means multiple bits were set.

*/

