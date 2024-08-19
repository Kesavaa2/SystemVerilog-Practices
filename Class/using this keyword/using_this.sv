class using_this;
  bit [32]data;
  bit [16]id;
  
  function new(bit [32]data,[16]id);
    this.data=data+'hab;
    this.id=id+'h2e;
    $display("value of this.data=%0h    data=%0h",this.data,data);
    $display("-------------------------------");
    $display("value of this.id=%0h       id=%0h",this.id,id);
  endfunction
endclass

module work;
  initial begin
  using_this mi=new(32'h1A1B11FF,16'h1111);
end
endmodule
