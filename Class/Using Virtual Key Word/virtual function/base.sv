class base;
  
  int a;
    int b;
  
  virtual function void disp;
    $display("base:a=%0d,b=%0d",a,b);
  endfunction

endclass

class child1 extends base;
  
  function void disp;
    $display("child1:a=%0d,b=%0d",a,b);
  endfunction

endclass


class child2 extends base;
  
  function void disp;
    $display("child2:a=%0d,b=%0d",a,b);
  endfunction

endclass

base p1,p2;
  child1 c1;
  child2 c2;

module work;
   
  
 initial begin
    c1=new();
    c2=new();
   
    p1=c1;
    p2=c2;
   
   
  c1.a=2;
   c1.b=4;
  
   c2.a=8;
   c2.b=4;
   
    p1.a=2;
   p1.b=6;
   
    p1.a=10;
   p1.b=4;
   
     p1.disp;
     p2.disp;
    
  end
endmodule


