class myclass;
 static byte data[64];
  bit  id[32]
  
  static function void i_data();
    data++;
  endfunction
  
  function void both();
    data++;
    id++;
  endfunction
  
endclass

module work;
  myclass my1[6];
  
  initial begin
    
    myclass::i_data();
    $display("calling the i_data data=%0d",myclass::i_data);
    
  end
endmodule
  
