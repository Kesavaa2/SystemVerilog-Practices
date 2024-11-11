class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  uvm_analysis_imp#(seq_item , scoreboard) item_collect_export;
 
  bit expected_sum;
  bit expected_Cout;
  seq_item pkt_q[$];
  
  function new(string name = "scoreboard",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
        item_collect_export=new("item_collect_export",this);
    
      endfunction
  
  function void write(seq_item pkt);
    pkt_q.push_back(pkt);    
    endfunction

task run_phase (uvm_phase phase);
    
    seq_item sb_item;
    
    repeat(10) begin
      wait(pkt_q.size > 0);
      
      if(pkt_q.size > 0) begin
        sb_item = pkt_q.pop_front();
        
        $display("----------------------------------------------------------------------------------------------------------");
        
        if((sb_item.a ^ sb_item.b ^ sb_item.c == sb_item.sum) && ((sb_item.a & sb_item.b)|(sb_item.c & sb_item.b)|(sb_item.c & sb_item.a) == sb_item.Cout)) begin
          `uvm_info("SCOREBOARD", $sformatf("Matched: A = %0d, B = %0d,C = %0d, SUM = %0d, COUT=%0d", sb_item.a, sb_item.b,sb_item.c, sb_item.sum, sb_item.Cout),UVM_LOW);
        end
        
        else begin
          `uvm_info("SCOREBOARD", $sformatf("NOT-Matched: A = %0d, B = %0d,C = %0d, SUM = %0d, COUT=%0d", sb_item.a, sb_item.b,sb_item.c, sb_item.sum, sb_item.Cout),UVM_LOW);
        
        end
        
        $display("----------------------------------------------------------------------------------------------------------");
      
      end
    end
  endtask
  
  
  
  
endclass
