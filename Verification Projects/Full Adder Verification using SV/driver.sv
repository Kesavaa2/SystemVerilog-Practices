class driver;
  
  transaction tr;
  
  mailbox m1;
  
  virtual operation vife;
  
  function new(virtual operation vife, mailbox m1);
    this.vife=vife;
    this.m1=m1;
  endfunction
  
  task drive;
    
    repeat(8)begin
      tr=new();
      m1.get(tr);
      vife.a=tr.a;
      vife.b=tr.b;
      vife.c=tr.c;
    #5
      tr.sum=vife.sum;
      tr.carry=vife.carry;
      #5;
    end
  endtask
endclass
  
