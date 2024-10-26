class cls;
  randc byte a[];
  rand bit [5]b[6];
  
  constraint a_{a.size<10;};
  constraint a_range{foreach (a[i]) a[i]>5*i;};
  constraint b_range{foreach (b[i]) b[i]>= i*i;};

endclass

 cls mi;

module work;
 
  initial begin
    mi=new();
    repeat (10) begin
      mi.randomize();
      $display("randomizing a");
      $display("value a=%0p",mi.a);
    
      $display("randomizing b");
      $display("value b=%0p",mi.b);
    
    
    end
  end
endmodule
  
  
  
  
    
    
    
    
    
    
