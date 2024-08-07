module arr_reduction;
  
  int inta[4] ='{2,3,5,7};
  logic[7:0] intb[2][2]='{'{2,3},'{5,7}};
  int z;
  
  
  initial begin
    
    z=inta.sum();
    $display("sum values of inta =%0d",z);
    
    z=inta.sum with (item + 1);
    $display("sum value of item + 1 = %0d",z);
    
    z=intb.sum with (item.sum with (item));
    $display("sum values of intb =%0d",z);
    
    z=inta.product();
    $display("product values of inta =%0d",z);
    
    z=inta.product with ( item + 1);
    $display("product values of inta + 1 =%0d ",z);
    
    z=intb.xor(item) with (item.xor);
    $display("xor value of intb =%0d ",z);
    
    z=intb.and(item) with (item.and);
    $display("and of intb =%0d ",z);
    
    z=intb.or(item) with (item.or);
    $display("or value of intb =%0d ",z);  
    
  end
  endmodule
    
    
    
    
    
    
    
    
    
