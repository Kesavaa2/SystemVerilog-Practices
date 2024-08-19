 class parent;
   bit [3:0] a,b;
   protected bit[5:0] c;
   protected int d = 5;

   function int sum(bit[4:0]val1,val2);
     c = val1 + val2;
     return c;
   endfunction:sum

   function void display();
     $display("sum = %0d",c);
     $display("1.d = %0d",d);
   endfunction:display

 endclass:parent

 class child extends parent;

  function void disp();
    $display("2.d = %0d",d);
  endfunction

 endclass:child


 module prot();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(1010,0101);
    p.display();
   // p.d = 10;     //Cannot access local/protected member "p.d"
    c1.disp();
  end

endmodule:prot
