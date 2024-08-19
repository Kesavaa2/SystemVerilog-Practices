
class Parent;
  int a,b,c;
 
  function void p1;
    c=a+b;
    $display("Parent:value of c=%0d",c);
  endfunction

endclass :Parent

class Child1 extends Parent;
  int f,d,e;
  
 
  function void c1;
    f=d*e;
    $display("Child1:value of f=%0d",f);
  endfunction

endclass :Child1

module multi_inheritance;
  
  Child1 chinna;
  initial begin
    chinna=new();
    chinna.a=8;
    chinna.b=10;
    chinna.d=5;
    chinna.e=20;
    
    
    chinna.p1;
    chinna.c1;
 
  end
endmodule
    
