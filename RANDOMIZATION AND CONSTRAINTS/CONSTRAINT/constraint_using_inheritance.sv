class myclass1;
  randc bit [7:0]a;
  rand bit  [15:0]b;
  constraint range_a_b{a>=5;b<=32;}//giving 1st constraint
 
endclass

class myclass2 extends myclass1; //inheritance of myclass1
  randc bit [3:0]c;
   constraint range_a_b_c;
  
endclass

constraint myclass2::range_a_b_c{a<=10;b>=32;c<5;} //giving constraint outside of class using scope resolution operator 


module work;
  initial begin
    
  myclass1 my1;
  myclass2 my2;

    
  my1=new();
  my2=new();
  
    repeat(10)begin
      my1.randomize();
      $display("calling the funtion myclass1");
      $display("value a=%0d ---- b=%0d",my1.a,my1.b);
    end
      $display(" ---------------------------------------------------------------------- ");
    $display("");
      
    
    repeat(10)begin
      my2.randomize();
      $display("calling the funtion myclass2");
      $display("value a=%0d ---- b=%0d ---- c=%0d",my2.a,my2.b,my2.c);
    end
    $display(" ---------------------------------------------------------------------- ");

    
    
  end
 endmodule:work
