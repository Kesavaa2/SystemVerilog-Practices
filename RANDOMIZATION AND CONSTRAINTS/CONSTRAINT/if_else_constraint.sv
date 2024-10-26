class myclass;
  rand bit [5]a;
  rand bit [4]b;
  rand bit c;
  
  constraint cons{ if (a inside {[5'd15:5'd30]})
                   b==5;
                  else 
                    b==4;
                    };

  
endclass

module work;
  myclass mine;
  initial begin
  mine=new();
  repeat(10)begin
  mine.randomize();
    $display("value of a=%0d and b=%0d",mine.a,mine.b); 
  end
  end
endmodule









