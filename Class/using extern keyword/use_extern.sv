class use_extern;
  bit[3:0]a;
  bit[3:0]b;
  bit[7:0]c;
  
  extern function void work();
    
 endclass
    
    function void my::work();
    c=('d10)*('d15);
      $display("value of c=%0d",c);
    endfunction
    
   
    module extern_example;
      use_extern ext;
      initial begin
        ext=new();
        ext.work;
      end
    endmodule
    
    
    
    
