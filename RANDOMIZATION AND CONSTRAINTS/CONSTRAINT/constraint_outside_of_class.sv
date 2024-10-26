class random;
  rand bit[4]a;
  randc bit[4]b;
  
  function void pre_randomize(); 
    $display("inside of pre randomize");
  endfunction
  
  function void post_randomize(); 
    $display("inside of post randomize");
    $display("value of a=%0h ---- b=%0h",a,b);
  endfunction
  
  constraint range;

endclass

constraint random::range{a<=10;b>=5;} //constrain giving outside of class

module work;
  random r1;
  initial begin
   
    r1=new();
    repeat(6) r1.randomize();
  
  end
endmodule
