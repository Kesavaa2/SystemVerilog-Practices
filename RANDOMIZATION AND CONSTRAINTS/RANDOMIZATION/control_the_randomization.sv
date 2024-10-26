class randomization_control;
  randc bit[7:0] addr;
  randc bit b;
  bit c;
  
  function void pre_randomize();  //function for pre randomization
    
    if(c==1) addr.rand_mode(0); //disabling the randomization
    
    else   addr.rand_mode(1); //enabling the randomization
  endfunction
  
  function void post_randomize();
    c=b;
    $display("value of addr=%0h,b=%0b,c=%0b",addr,b,c);
  endfunction
  
endclass:randomization_control

module work;
   initial begin
  
     randomization_control rdc;
     
     rdc=new();
    repeat(6) rdc.randomize();
  end
endmodule
