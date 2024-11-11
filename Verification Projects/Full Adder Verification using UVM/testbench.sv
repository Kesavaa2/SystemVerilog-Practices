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

module tb;
  
  test tst;
  intf vif();
  
  full_adder fad (.a(vif.a),
                 .b(vif.b),
                 .c(vif.c),
                 .sum(vif.sum),
                 .Cout(vif.Cout));
  
  initial begin
    uvm_config_db #(virtual intf)::set(null,"*","vif",vif);
    run_test("test");
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
