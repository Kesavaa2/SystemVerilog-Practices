class base;
  bit[7:0]a;
  function new( bit[7:0]a);
    this.a=a;
    $display("base:value of a=%0d",a);
  endfunction
endclass

class sub extends base;
  bit[7:0]a;
  function old(bit[7:0]data_p,data_c);
    super.new(data_p);
    this.a=data_c;
    $display("sub:value of a=%0d",a);
  endfunction
endclass

module sup_ex;
  initial begin
    sub s=new();
    s.old(12,23);
  end
endmodule











