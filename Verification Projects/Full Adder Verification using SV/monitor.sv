class monitor;
  
  virtual operation vife;
  mailbox m2;
  
  function new(virtual operation vife,mailbox m2);
    this.vife=vife;
    this.m2=m2;
   endfunction
    
    task moni;
      forever begin
        transaction mon_tr;
        mon_tr=new();
        mon_tr.a=vife.a;
        mon_tr.b=vife.b;
        mon_tr.c=vife.c;
        
        #5
        mon_tr.sum=vife.sum;
        mon_tr.carry=vife.carry;
        m2.put(mon_tr);
      end
    endtask
 endclass
    
