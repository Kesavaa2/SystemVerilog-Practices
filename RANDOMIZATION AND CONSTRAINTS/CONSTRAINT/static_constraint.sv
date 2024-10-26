class stat_con;
  rand bit [4:0]a;
  rand bit [3:0]b;
 
  

  constraint cons_a{a < 10;};
  static constraint cons_b {b inside {[1:5],7,10};};
  
endclass

stat_con s1,s2;

module work;
   initial begin
  
     s1=new();
     s2=new();
     
     repeat (10) begin
            
       s1.randomize();
       s2.randomize();
       $display("before disabling the randomization");
       $display("randomize s1: a=%p, b=%p",s1.a,s1.b);
       $display("randomize s2: a=%p, b=%p",s2.a,s2.b);
     
   
      
   
        s2.cons_b.constraint_mode(0);
       s1.randomize();
       s2.randomize();
       $display("after disabling the randomization");
       $display("randomize s1: a=%p, b=%p",s1.a,s1.b);
       $display("randomize s2: a=%p, b=%p",s2.a,s2.b);
     end
     
     
end
endmodule
    
  
  




