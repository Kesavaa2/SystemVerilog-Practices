class dff_test extends uvm_test;
  
  `uvm_component_utils(dff_test);
  
  dff_env env;
  dff_sequence seq;
  
  function new(string name="dff_test",uvm_component parent);
    super.new(name,parent);
    `uvm_info("TEST","constructor",UVM_MEDIUM);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env=dff_env::type_id::create("env",this);
    seq=dff_sequence::type_id::create("seq",this);
  endfunction
  

  
  task run_phase(uvm_phase phase);
    `uvm_info("test class","elob phase",UVM_MEDIUM)
    phase.raise_objection(this);
    repeat (10) begin
    seq.start(env.agent.seqr);
    end
    phase.drop_objection(this);
  endtask
  
endclass
  
  
