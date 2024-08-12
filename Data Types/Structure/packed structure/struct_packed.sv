module struct_packed;
  
struct packed
{
  logic[7:0] id;
  bit[3:0]experience;
  bit[15:0]salary;
} emp_info;
  
  
  
  initial begin
  
    emp_info=28'hFFA000F;
    
  $display("employee details");
    $display("employee id=%P",emp_info.id);
    $display("employee experience=%P",emp_info.experience); 
    $display("employee salary=%P",emp_info.salary);
  
  
  end
endmodule
  
  
  
