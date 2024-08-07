
module fourstate_datatype;

//Declaring fourstate_datatype
  reg [2:0]reg_datatype;
  wire [2:0]wire_datatype;
  logic [2:0]logic_datatype;
  integer integer_datatype;
  time time_datatype;
  real  real_datatype;
  
initial begin

// Displaying the value of fourstate_datatype(default)
  $display("default vaule ");
  $display(" reg data type =%b",reg_datatype);
  $display(" wire data type =%b",wire_datatype);
  $display("logic data type =%b",logic_datatype);
  $display(" integer data type =%b",integer_datatype);
 $display(" time data type =%t",time_datatype);
  $display(" real data type =%f",real_datatype);

// Initialising the value for fourstate_datatype
  reg_datatype=3'b110;
  logic_datatype=3'b011;
  integer_datatype=3'b110;
  time_datatype=3'b101;
  real_datatype=4.45;
  

// Displaying the value of fourstate_datatype after initialising the value
  $display("after initialization")
   
  $display("reg_data type=%b",reg_datatype);
  $display("wire data type=%0b",wire_datatype);
  $display("logic data type=%0b",logic_datatype);
  $display("integer data type=%0b",integer_datatype);
  $display(" time data type=%0t",time_datatype);
  $display("real data type =%0f",real_datatype);

  
end
endmodule 
