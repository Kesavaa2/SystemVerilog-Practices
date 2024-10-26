class cls;
  rand bit [5]a;
  rand bit [4]b;
  rand bit [4] c;
  rand bit [4]d;
  

  constraint cons{a < 30 -> b==a*2;
                  solve a before b;
                   c == d+2 -> d < 26;
                 solve c before d;};
endclass
 
cls c1;

module work;
   initial begin
  c1=new();
     repeat (10) begin
       c1.randomize;
       $display("value of a=%p, b=%p, c=%p,d=%p,",c1.a,c1.b,c1.c,c1.d);
     end
   end
endmodule
    
  
  




