module dut;
  task check_pair;
    input [7:0] actual_a, expected_a, actual_b, expected_b;
    output integer errors;
    begin
      errors = 0;

      if (actual_a !== expected_a)
        errors = errors + 1;

      if (actual_b !== expected_b)
        errors = errors + 1;
    
    end
  endtask
endmodule
