/*
A Verilog task groups procedural work and
can return results through output or inout arguments.
Testbench tasks reduce duplicated checks.
Unlike a combinational function, a task can include timing controls when appropriate,
but these checker tasks perform only zero-time comparisons.
Use automatic tasks if separate concurrent calls need independent local storage;
the supplied calls here are sequential.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

task check_value;
    input [7:0] actual,expected;
    output ok;
    begin ok = (actual === expected); end
endtask

The caller receives the check result through an explicit output argument.

Define task argument directions and
reset per-call result variables before collecting failures.
*/

module dut;
    task chec_value;
        input [7:0] actual, expected;
        output ok;
        begin
            // Complete the checker task.
            ok = (actual === expected);
        end
    endtask
endmodule

endmodule
