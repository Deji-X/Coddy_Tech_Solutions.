/*
Build a simulation-only checker with two status outputs.
mismatch reports four-state inequality between actual and expected.
unknown is one if actual contains any X or Z bit, even when actual and 
expected match exactly. Output columns: mismatch, unknown.
All stimulus values are known binary values.
*/

module dut (
  input [3:0] actual,
  input [3:0] expected,
  output mismatch,
  output unknown
);
  // Without a function.
  assign mismatch = (actual !== expected);
  assign unknown = ((^actual) === 1'bx);

  // WITH A FUNCTION
  /*
  // Function 1: Check mismatch
    function compare_mismatch;
        input [3:0] a;
        input [3:0] e;
        begin
            compare_mismatch = (a !== e);
        end
    endfunction

    // Function 2: Check unknown bits
    function check_unknown;
        input [3:0] a;
        begin
            check_unknown = ((^a) === 1'bx);
        end
    endfunction

    assign mismatch = compare_mismatch(actual, expected);

    assign unknown = check_unknown(actual);
  */

endmodule
