`include "agent.sv"

class environment;
  
  mailbox m1;
  agent agt;
  virtual inter inf;
  
  function new(mailbox m1,virtual inter inf);
    this.m1=m1;
    this.inf=inf;
  endfunction
  
  task memory;
    m1=new();
    agt=new(m1,inf);
  endtask
  
  task run();
  fork
    agt.memory();
    agt.run();
  join_any
  endtask
  
  
endclass
