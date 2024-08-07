module int_to_integer;
  
  int int_data=53;
  integer integer_data;
  
  initial begin
    $cast(integer_data,int_data);
    $display("integer_data=%d",integer_data);
  end
endmodule
    
