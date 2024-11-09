class dff_seq_item extends uvm_sequence_item;
  `uvm_object_utils(dff_seq_item)
  
  rand bit rst;
  rand bit d;
  bit q;
  
  function new(string name="dff_seq_item");
    super.new(name);
    `uvm_info("SEQUENCE ITEM","constructor",UVM_MEDIUM)
  endfunction
  
  constraint rst_en {rst dist {1:=10 , 0:=5};}
  constraint d_en {d dist {1:=20 , 0:=5};}
endclass
