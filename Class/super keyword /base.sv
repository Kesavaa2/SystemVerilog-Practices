class base;
  int a;
  function void disp;
    $display("base:value of a=%0d",a);
  endfunction
endclass

class sub extends base;
  int a;
  function void disp;
    super.a=10;
    super.disp;
    $display("sub:value of a=%0d",a);
  endfunction
    endclass

module ex_super;
  initial begin
    sub s=new();
    s.a=5;
    s.disp;
   
  end
endmodule
    
    
    
    
    


