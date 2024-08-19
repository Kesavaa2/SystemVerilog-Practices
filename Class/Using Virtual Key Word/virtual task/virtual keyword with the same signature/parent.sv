class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display(bit [31:0] data, int id);
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child extends parent;
  function void display(bit [31:0] data, int id);
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent p_tr;
    child c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display(p_tr.data, p_tr.id);
  end
endmodule
