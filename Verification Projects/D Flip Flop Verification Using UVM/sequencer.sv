class dff_sequencer extends uvm_sequencer#(dff_seq_item);
  `uvm_component_utils(dff_sequencer)
  
  function new(string name="dff_sequencer",uvm_component parent);
    super.new(name,parent);
    `uvm_info("sequencer class","constructor",UVM_MEDIUM)
  endfunction
  
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction  
  
endclass
