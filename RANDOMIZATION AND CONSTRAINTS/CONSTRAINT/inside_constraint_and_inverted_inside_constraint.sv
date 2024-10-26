class myclass1;
 rand bit[7:0]a;
 rand bit[7:0]b;
 rand bit[7:0]c;
 rand bit[7:0]d;
 rand bit[7:0]e;

  
  constraint value1_a{ a inside{[80:100]};}//inside constraint
  constraint value2_b{ b inside{[5:10],[35:55]};}
  constraint value3_c{ c inside{[120:150]};}
  constraint value4_d{!(d inside{[200:255]});}//inverted inside constraint
  constraint value5_e{ e inside{[a:d]};}

endclass :myclass1

module work;
  myclass1 my1;
  initial begin 
  my1=new();
    repeat(5)
      begin
        my1.randomize();
        $display("a=%0d,b=%0d,c=%0d,d=%0d,e=%0d",my1.a,my1.b,my1.c,my1.d,my1.e);
        $display("");
      end
  end
endmodule :work
    
  
