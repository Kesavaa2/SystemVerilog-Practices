class random;
  rand bit[4]a;
  randc bit[4]b;
  
  function display(); 
    $display("value of a=%0h   b=%0h",a,b);
  endfunction
  
endclass

module work;
  random r1;
  initial begin
    r1=new();
    repeat (16)begin
    r1.randomize();
      r1.display();
  end
  end
endmodule
