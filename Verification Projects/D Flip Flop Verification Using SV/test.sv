`include "environment.sv"

class test;
  
  virtual inter inf;
  mailbox m1;
  environment env;
  
  function new(mailbox m1,virtual inter inf);
     this.m1=m1;
    this.inf=inf;
  endfunction
  
  task memory;
    m1=new();
    env=new(m1,inf);
  endtask
  
  
  task run();
    fork
    env.memory;
    env.run();
    join
  endtask
    
endclass
