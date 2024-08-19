class passing_arg;
  bit[31:0] mdata;
  int id;
  
  function new(bit[31:0] data);
    $display("inside constructor");
    mdata=data;
  endfunction
 
endclass :passing_arg


module transaction;
  
  initial begin
    
  passing_arg myc=new(245);
  
    $display("value of mdata=%0d",myc.mdata);
  
  end
  
endmodule :transaction
