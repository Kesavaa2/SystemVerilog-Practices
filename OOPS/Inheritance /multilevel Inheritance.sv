class Parent;
  int a=3;
  int b=5;
  int c;
 
  function void p1;
    c=a+b;
    $display("Parent:value of c=%0d",c);
  endfunction

endclass :Parent

class Child1 extends Parent;
  int d=6;
  int e=5;
  int f;
 
  function void c1;
    f=d*e;
    $display("Child1:value of f=%0d",f);
  endfunction

endclass :Child1


class Child2 extends Child1;
  int g=20;
  int h=4;
  int i;
 
  function void c2;
    i=g/h;
    $display("Child2:value of i=%0d",i);
  endfunction

endclass :Child2

class Child3 extends Child2;
  int x=3;
  int y=4;
  int z;
 
  function void c3;
    z=x**y;
    $display("Child3:value of z=%0d",z);
  endfunction

endclass :Child3



module multi_inheritance;
  
  Child3 chinna;
  initial begin
    chinna=new();
    chinna.d=8;
    chinna.h=10;
    chinna.y=2;
    
    chinna.p1;
    chinna.c1;
    chinna.c2;
    chinna.c3;
  end
endmodule
    
    
    
