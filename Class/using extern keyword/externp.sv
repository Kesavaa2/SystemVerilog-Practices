class externp;
  int d;
  int f;
  int h;
  
  function void disp;
    h=d**f;
    $display("calling the mylcass disp function");
    $display("value h=%0d",h);
    endfunction
endclass


class externc extends externp;
  bit[3:0]a;
  bit[3:0]b;
  bit[7:0]c;
  
  extern function void work();
    
 endclass
    
    function void externc::work();
    c=('d10)*('d15);
      $display("calling the my class work function using extern keyword");
      $display("value of c=%0d",c);
    endfunction
    
   
    module extern_example;
      externc ext;
      initial begin
        ext=new();
        ext.work;
        
        ext.d=2;
        ext.f=10;
        ext.disp;
        
        
      end
    endmodule
    
    
    
    
