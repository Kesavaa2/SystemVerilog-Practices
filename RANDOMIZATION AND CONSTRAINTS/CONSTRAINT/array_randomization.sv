class myclass;
  rand bit [4]a;//unpacked array
  rand bit[5]b[3][4];//multidimensional array
  rand bit[4]Q[$];//randomizing queue
  
  constraint a_cons{a<=10;};
  constraint b_cons{foreach (b[i,j]) b[i][j]>10;}
  constraint Q_cons{Q.size()==7;}
  
endclass :myclass

myclass my;

module work;
  initial begin
    my=new();
   // for(int i=0;i<=7;i++)begin
    repeat(7)begin
    my.randomize();
      $display("value of a=%p",my.a);
      $display("value of b=%p",my.b);
      $display("value of Q=%p",my.Q);
    end
  end
endmodule












