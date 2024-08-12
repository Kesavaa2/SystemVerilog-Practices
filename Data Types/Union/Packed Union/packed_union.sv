module packed_union;
  logic[31:0]x;
  
typedef union packed{
  bit [7:0]a;
  bit[7:0] b;
  bit[7:0]c;
}data;
  
  data dada;
  
  initial begin
    
  dada.a='hAA;
  x=dada.a;
    $display("x=%h",x);
  
  
  dada.b='hBB;
  x=dada.b;
    $display("x=%h",x);
  
    
    dada.c='hCC;
    x=dada.c;
    $display("x=%h",x);
  
  end
endmodule
  
