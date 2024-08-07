module byte_to_bit;
  
  byte byte_data=47;
  bit [7:0]bit_data;
  
  initial begin
    $cast(bit_data,byte_data);
    $display("bit_data=%d",bit_data);
  end
endmodule
