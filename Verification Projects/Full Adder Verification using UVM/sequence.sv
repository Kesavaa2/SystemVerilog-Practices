class sequ extends uvm_sequence;
  `uvm_object_utils(sequ);
  
  function new(string name="sequ");
    super.new(name);
  endfunction
  
  task body();
   seq_item pkt;
   
    repeat(10)begin
     pkt=seq_item::type_id::create("pkt");
    `uvm_do(pkt);
    end
  endtask
  
endclass
