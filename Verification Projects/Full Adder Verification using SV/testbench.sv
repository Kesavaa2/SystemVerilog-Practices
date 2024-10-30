`include "addertest.sv"
`include "interface.sv"

module tb;
  addertest test;
  mailbox m2;
  operation vintf();
 
  F_A fa(
  .a(vintf.a),
    .b(vintf.b),
    .c(vintf.c),
    .sum(vintf.sum),
    .carry(vintf.carry)
  );
  
  initial begin
    m2=new();
    test=new(vintf,m2);
    fork
      test.memory;
      test.run;
    join
  end
  
  initial $monitor("a=%0b,b=%0b,c=%0b,sum=%0b,carry=%0b",vintf.a,vintf.b,vintf.c,vintf.sum,vintf.carry);
  
endmodule
