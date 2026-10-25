module logic_circuit (
  input a,
  input b,
  input c,
  output out1,
  output out2,
  output out3
);

  assign out1 = a & b;
  assign out2 = b | c;
  assign out3 = a ^ c;

endmodule
