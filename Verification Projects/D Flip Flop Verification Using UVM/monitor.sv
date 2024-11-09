class dff_monitor extends uvm_monitor;
  `uvm_component_utils(dff_monitor)
  
 
  uvm_analysis_port #(dff_seq_item) item_collected_port;
  dff_seq_item tx;
   virtual dff_intf intf;
  
  function new(string name="dff_monitor",uvm_component parent);
    super.new(name,parent);
    `uvm_info("monitor class","constructor",UVM_MEDIUM)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    item_collected_port=new("item_collected_port",this);
    
    if(!uvm_config_db #(virtual dff_intf)::get(this,"","intf",intf))
      `uvm_fatal("no_intf in driver","virtual interface get failed from config db");
  endfunction
  
  task run_phase(uvm_phase phase);
    tx=dff_seq_item::type_id::create("tx"); 
    @(posedge intf.clk)
    tx.rst=intf.rst;
    tx.d=intf.d;
     tx.q=intf.q;
  endtask
endclass
