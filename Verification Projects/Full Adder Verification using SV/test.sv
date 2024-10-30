`include "environment.sv"

class addertest;
  environment envi;
  virtual operation vintf;
  mailbox m2;
  
  function new(virtual operation vintf,mailbox m2);
    this.vintf=vintf;
    this.m2=m2;
  endfunction
  
  task memory;
    m2=new();
    envi=new(vintf,m2);
  endtask
  
  task run;
    fork
      envi.memory;
      envi.run;
    join
   endtask
      
endclass
