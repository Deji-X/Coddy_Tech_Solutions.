f/*
One-Hot Validation



One-hot data has exactly one asserted bit. A decoder generates such data, while validation checks incoming data before using it. For known binary values, a nonzero value is one-hot when bits & (bits - 1) is zero. This section does not use that shortcut to classify X or Z.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

assign one_hot = (bits != 0) && ((bits & (bits - 1)) == 0);
The nonzero check excludes idle; the bit trick rejects multiple set bits.

Distinguish zero, exactly one set bit and multiple set bits when validating requests.
*/
