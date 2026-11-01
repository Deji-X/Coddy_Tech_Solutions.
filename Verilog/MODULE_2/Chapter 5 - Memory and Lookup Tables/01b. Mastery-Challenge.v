/*
Use the same table (addresses 0..7 map to 3,5,8,13,21,34,55,89).
Look up addr_a and addr_b independently and return their full 9-bit unsigned sum in total.
Output columns: total.
All stimulus values are known binary values.
*/

module dut (
  input [2:0] addr_a,
  input [2:0] addr_b,
  output [8:0] total
);

  function [7:0] lookup;
        input [2:0] addr;
        begin
            case (addr)
                0: lookup=3;
                1: lookup=5;
                2: lookup=8;
                3: lookup=13;
                4: lookup=21;
                5: lookup=34;
                6: lookup=55;
                7: lookup=89;
                default: lookup=0;
            endcase
        end
    endfunction

  assign total = lookup(addr_a) + lookup(addr_b); 

endmodule

endmodule
