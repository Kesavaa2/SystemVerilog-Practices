class inline;
  rand bit[6:0]a;
  rand bit[7:0]b;
  
  constraint cons_a{a>15;a<20;};
  constraint cons_b{ b inside {[1:15],20,30};};
  
endclass

module inline_ex;
  
  inline ins;
  initial begin
    ins=new();
    
    repeat (10) begin
    ins.randomize();
      $display("before inline constraint a=%0d",ins.a);
      $display("before inline constraint b=%0d",ins.b);
      
      
      $display("--------------------------------------");
    
    ins.randomize with {a>25;a<40;};
    ins.randomize with  {b inside {[32:40],45,46};};
      $display("after inline constraint a=%0d",ins.a);
      $display("after inline constraint b=%0d",ins.b);
    
    end
  end
endmodule
