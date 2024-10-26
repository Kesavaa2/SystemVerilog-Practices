class myclass1;
 rand bit[7:0]a;
 rand bit[7:0]b;


  
  constraint value1_a{ a dist {3:=5,[12:15]:=4};}
  constraint value2_b{ b dist {3:/5,[12:15]:/4};}
 
endclass :myclass1

module work;
  myclass1 my1,my2;
  initial begin 
        my1=new();
        my2=new();
    repeat(10)begin  
      my1.randomize();
        $display("a=%0d",my1.a);
      end
    
      repeat(10)begin  
      my2.randomize();
        $display("b=%0d",my1.b);
      end
    
end
endmodule :work
    
  
