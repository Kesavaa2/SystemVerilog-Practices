class parent;
  int a;
  int b;
  
  virtual function void disp;
    $display("parent:value of a=%0d,b=%0d",a,b);
  endfunction
  
endclass

class child1 extends parent;
  
 function void disp;
   $display("child1:value of a=%0d,b=%0d",a,b);
  endfunction
  
endclass

class child2 extends parent;
  
 function void disp;
   $display("child2:value of a=%0d,b=%0d",a,b);
  endfunction
  
endclass


module poly;
  
  parent p1,p2;
  child1 c1;
  child2 c2;
  
  initial begin
    
    c1=new();
    c2=new();
    
    c1.a=56;
    c1.b=33;

    
    c1.a=12;
    c1.b=21;

    p1=c1;
    p2=c2;
    
    p1.a=25;
    p1.b=30;
    
    p1.disp;
    p2.disp;
    
  end
endmodule













