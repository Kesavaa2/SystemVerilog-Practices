class driver;
  
  virtual inter inf;
  mailbox m1;
  transaction tr;
    
  function new(mailbox m1,virtual inter inf);
      this.m1=m1;
      this.inf=inf;
      endfunction
      
      task reset();
        @(posedge inf.clk);
      
       forever begin
        inf.reset<=1;
        inf.data<=0;
//         inf.q<=0;
        $display("reset is enable: tr.reset=%b",tr.reset);
//         repeat(4) begin
//           @(posedge inf.clk);
//         inf.reset<=0;
//         $display("reset is disable: tr.reset=%b",tr.reset);
        end
          endtask
          
        
       
      task work();
        @(posedge inf.clk);
        inf.reset<=0;
        inf.data<=tr.data;
        $display("flip flop is working tr.data=%b",tr.data);
        
      endtask
  
  
   task run();
        @(posedge inf.clk);
     tr=new();
     m1.get(tr);
     
    forever begin
       if(inf.reset)begin
     reset();
       end
     else begin
       work();
     end
        $display("flip flop is working tr.data=%b",tr.data);
   
     end
       endtask
  
endclass
