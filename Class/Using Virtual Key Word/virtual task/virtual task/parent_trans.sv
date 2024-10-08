class parent_trans;
  bit [31:0] data;
  int id;
  
  virtual task display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endtask
  
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  task  display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endtask  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    c_tr.data = 10;
    c_tr.id = 2;
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule
