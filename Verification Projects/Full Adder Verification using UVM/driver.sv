class driver extends uvm_driver#(seq_item);

  virtual intf vif;
  seq_item pkt;
  
  `uvm_component_utils(driver);
  
  function new(string name="driver",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual intf)::get(this,"","vif",vif))
      `uvm_fatal("DRIVER","top level not set");
  endfunction
  
  task run_phase(uvm_phase phase);

    repeat (10) begin
      pkt=new();
      seq_item_port.get_next_item(pkt);
      vif.a=pkt.a;
       vif.b=pkt.b;
       vif.c=pkt.c;
      pkt.sum=vif.sum;
      pkt.Cout=vif.Cout;
      `uvm_info("DRIVER",$sformatf("a=%0b,b=%0b,c=%0b,sum=%0d,cout=%0d",pkt.a,pkt.b,pkt.c,pkt.sum,pkt.Cout),UVM_LOW);
      seq_item_port.item_done();
    end
  endtask
  
  endclass
      
