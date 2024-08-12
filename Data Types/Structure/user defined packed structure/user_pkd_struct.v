typedef struct packed
{
  byte id;
  bit[4:0]experience;
  bit[15:0]salary;
} employee_details;


module user_pkd_struct;
  
  initial begin
  employee_details emp_info;
  
  emp_info.id=125;
  emp_info.experience=4;
  emp_info.salary=20000;
  
  $display("employee details");
  $display("employee id=%d",emp_info.id);
  $display("employee experience=%d",emp_info.experience); 
  $display("employee salary=%d",emp_info.salary);
  
    $display("employee informations:",$bits(emp_info));
  
  end
endmodule
  
  
  
