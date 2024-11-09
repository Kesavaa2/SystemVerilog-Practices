// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

`include "uvm_macros.svh"
import uvm_pkg::*;

`include "interface.sv"
`include "seq_item.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"

module top;
  
  
  dff_test tst;
  dff_intf intf();
  
  dff dut(.clk(intf.clk),
          .rst(intf.rst),
          .d(intf.d),
          .q(intf.q)
         );

  
  initial begin
     uvm_config_db#(virtual dff_intf)::set(null,"*","intf",intf);
   run_test("dff_test");
  end

initial begin
  intf.clk=1'b0;
  
  #220 $finish();
end
  
  always #5 intf.clk= ~intf.clk;
  
  initial begin
    $monitor($time,"intf.clk=%0d,intf.rst=%0d,intf.d=%0b,intf.q=%0b",intf.clk,intf.rst,intf.d,intf.q);
    
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  endmodule
