module two_state_datatype;
  
  bit [2:0]bit_datatype;
  byte byte_datatype;
  shortint shortint_datatype;
  int int_datatype;
  longint longint_datatype;
  initial begin
             $display("before initialization ");
             $display("bit_datatype= %b",bit_datatype);
             $display("byte_datatype =%b",byte_datatype);
             $display("shortint_datatype =%b",shortint_datatype);
             $display("int_datatype =%b",int_datatype);
             $display("longint_datatype= %b",longint_datatype);
  
  bit_datatype=3'b011;
  byte_datatype=23;
  shortint_datatype=56;
  int_datatype=45;
  longint_datatype=57;

                      $display("after initialization");
                      $display("bit_datatype= %b",bit_datatype);
                      $display("byte_datatype= %b",byte_datatype);
                      $display("shortint_datatype=%b",shortint_datatype);
                      $display("int_datatype =%b",int_datatype);
                      $display("longint_datatype= %b",longint_datatype);
  
end
endmodule
