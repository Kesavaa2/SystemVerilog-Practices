class test extends uvm_test;
  `uvm_component_utils(test);
  
  envir enve;
  sequ seq;
 
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    enve=envir::type_id::create("enve",this);

  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
   
    phase.raise_objection(this);
        seq=sequ::type_id::create("seq");

    repeat(10)begin
      seq.start(enve.agt.seqr);
    end
    phase.drop_objection(this);
    `uvm_info("TEST","END OF TESTCASE",UVM_LOW);
    endtask
  
endclass
