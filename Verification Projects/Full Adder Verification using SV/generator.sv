class generator;
  
  transaction tr;//transation handle
  
  mailbox m1;//mailbox handle
  
  function new(mailbox m1);
     this.m1=m1;
  endfunction
  
  task geni;
    repeat(8) begin
      tr=new();
      tr.randomize();
      m1.put(tr);
      $display("packet is generated");
    end
   endtask :geni
endclass
