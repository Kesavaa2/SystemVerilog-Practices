`include "transaction.sv"

class generator;
  
  transaction tr;
  mailbox m1;
  event e;
  
  function new(mailbox m1);
    this.m1=m1;
  endfunction
  
  task run();
    repeat(5)begin
    tr=new();
    tr.randomize();
    m1.put(tr);
    $display("randomization of transaction");
    @(e);
    end
   
  endtask
  
  
endclass
  
  
