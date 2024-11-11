module full_adder(
   input a,
   input b,
   input c,
   output sum,
   output Cout);

assign sum=a^b^c;
  assign Cout=(a&b|b&c|c&a);

endmodule
