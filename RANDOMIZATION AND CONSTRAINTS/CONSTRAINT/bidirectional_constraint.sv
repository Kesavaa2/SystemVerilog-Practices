class bidir;
  rand bit [7]a;
  rand bit [3:0]b;
  rand bit [8] c;
  rand bit [5]d;
  

  constraint cons{a < 37;
                   b==a*2;
                   c == d+2;
                   d < 26;};
endclass
 
bidir bid;

module work;
   initial begin
  bid=new();
     repeat (10) begin
       bid.randomize;
       $display("value of a=%p, b=%p, c=%p,d=%p,",bid.a,bid.b,bid.c,bid.d);
     end
   end
endmodule
    
  
  




