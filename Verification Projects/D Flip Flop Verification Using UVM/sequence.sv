class dff_sequence extends uvm_sequence#(dff_seq_item);
  `uvm_object_utils(dff_sequence)
  
  
  dff_seq_item tx;
  
  function new(string name="dff_sequence");
    super.new(name);
    `uvm_info("SEQUENCE","constructor",UVM_MEDIUM)
  endfunction
  
  task body();
    repeat(5)begin
      tx=dff_seq_item::type_id::create("tx");
      `uvm_do(tx);
    end
  endtask
endclass
