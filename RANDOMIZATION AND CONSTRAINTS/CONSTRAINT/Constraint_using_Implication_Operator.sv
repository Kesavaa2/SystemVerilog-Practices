class myclass;
  rand bit [3:0]a;
  rand enum{hi,bye}call;
  rand bit c;
  
  constraint cons{if (c==0)
                  (call==hi) -> a>5;};

  
endclass

module work;
  myclass mine;
  initial begin
  mine=new();
  repeat(10)begin
  mine.randomize();
    $display("value of c=%0b ---- call=%p ---- a=%0d",mine.c,mine.call,mine.a); 
  end
  end
endmodule









