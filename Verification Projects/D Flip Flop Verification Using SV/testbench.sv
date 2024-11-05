`include "interface.sv"
`include "test.sv"


module testbench;
  
  test tst;
  inter inf();
  
  dff dut (
          .clk(inf.clk),
          .data(inf.data),
          .reset(inf.reset),
          .q(inf.q)
  );
 
  
  initial begin
    tst=new(m1,inf);
    
    fork
      tst.memory;
      tst.run();
    join
   
  
  repeat(5) begin
    inf.clk=1'b0;
    inf.reset=1;
    #10 inf.reset=0;
  end
    
    
    #100 $finish;
  end
  
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0);
  end
  
endmodule
  
  
