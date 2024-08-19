virtual class A; //abstract class
  
  int a,b,c;
  
 virtual function void dis();
    c=a+b;
    $display("A:value of c=%0d",c);
  endfunction
  
endclass

class B extends A;

  function void dis();
   
    $display("B:value of c=%0d",c);
  endfunction
  
endclass

A a1;
B b1;

module test;
  initial begin
   // a1=new(); //cannot create object for virtual class
    b1=new();
    a1=b1;
    a1.a=4;
    a1.b=5;
    b1.dis();
  end
endmodule
    
    
    
    
    
