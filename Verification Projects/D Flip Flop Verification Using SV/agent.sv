`include "generator.sv"
`include "driver.sv"

class agent;
  
  virtual inter inf;
  generator gen;
  driver drv;
  
  mailbox m1;

  function new(mailbox m1,virtual inter inf);
    this.m1 = m1;
    this.inf=inf;
    endfunction

  task memory;
    m1=new();
    drv = new(m1, inf);
    gen = new(m1);
  endtask
  
  
  task run();
    fork
      drv.run();
      gen.run();
    join_any
  endtask
  
endclass
