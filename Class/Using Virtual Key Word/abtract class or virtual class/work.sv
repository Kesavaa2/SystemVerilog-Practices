virtual class A; //abstract class
  
  int a,b,c;
  
 function void dis();
    c=a+b;
    $display("A:value of c=%0d",c);
  endfunction
  
endclass

class B extends A;
  int a=8;
  int b=28;
  int c;
  function void dis();
    c=a*b;
    $display("B:value of c=%0d",c);
  endfunction
  
endclass

A a1;
B b1;

module work;
  initial begin
   // a1=new(); //cannot create object for virtual class
    b1=new();
    a1=b1;
    a1.a=4;
    a1.b=5;
    b1.dis();
    a1.dis();
  end
endmodule
    
    
    
