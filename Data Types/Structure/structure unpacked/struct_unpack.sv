struct{
    string name;
    bit[15:0] salary;
    byte id;
 }employee_s;

module struct_unpack;
  
initial begin 

 
employee_s = '{ "sam",16897,123};
  
 $display("employee_s = %p" ,employee_s); 
 $display("size of employee_s: %0d", $bits(employee_s));

end  
endmodule
