class monitor extends uvm_monitor;
  `uvm_component_utils(monitor);
  
  uvm_analysis_port #(seq_item) item_collect_port;
  
  virtual intf vif;
  
  seq_item mon_pkt;
  
  function new(string name="monitor",uvm_component parent=null);
    super.new(name,parent);
    item_collect_port=new("item_collect_port",this);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual intf)::get(this,"","vif",vif))
      `uvm_fatal("MONITOR","not set at top level");
      endfunction
  
      
      task run_phase(uvm_phase phase);
        
        repeat(10)begin  
      
        mon_pkt=seq_item::type_id::create("mon_pkt");
        mon_pkt.a=vif.a;
        mon_pkt.b=vif.b;
        mon_pkt.c=vif.c;
        mon_pkt.sum=vif.sum;
        mon_pkt.Cout=vif.Cout;
        
        end
        item_collect_port.write(mon_pkt); 
        `uvm_info("MONITOR",$sformatf("A=%0d,B=%0d,C=%0d,sum=%0b,Cout=%0d",mon_pkt.a,mon_pkt.b,mon_pkt.c,mon_pkt.sum,mon_pkt.Cout),UVM_HIGH);
      
    endtask
    
    endclass
