class soft_con;
  rand bit[7:0]a;
 
  
  constraint cons_a{ soft a inside {[15:20]};}; //using soft keyword
  
endclass


class sof_con;
  rand bit[7:0]b;
  
  constraint cons_b{ soft b inside {[1:15],[20:30]};};//using soft keyword before variable
  
endclass

module inline_ex;
  
  soft_con ins;
  sof_con ins1;
  initial begin
    ins=new();
    ins1=new();
    
    repeat (10) begin
    ins.randomize();
      ins1.randomize();
      $display("before soft constraint a=%0d",ins.a);
      $display("before soft constraint b=%0d",ins1.b);
      
      
      $display("--------------------------------------");
    
      ins.randomize with  {a inside {[25:40]};};
      ins1.randomize with  {b inside {[32:45]};};
      $display("after soft constraint a=%0d",ins.a);
      $display("after soft constraint b=%0d",ins1.b);
    
        $display("--------------------------------------");
    end
  end
endmodule
