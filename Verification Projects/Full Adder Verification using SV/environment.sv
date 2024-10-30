`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"


class environment;
  
  virtual operation vife;
  generator gen;
  driver dri;
  mailbox m2;
  monitor mr;
  
  
  function new(virtual operation vife,mailbox m2);
    this.vife=vife;
    this.m2=m2;
    endfunction
  
  task memory;
    m2=new();
    gen=new(m2);
    dri=new(vife,m2);
    mr=new(vife,m2);
  endtask
  
  task run;
    fork
      gen.geni;
      mr.moni;
      dri.drive;
    join
  endtask
endclass
