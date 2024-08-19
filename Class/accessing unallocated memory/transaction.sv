class transaction;
  bit[31:0]data;
  int id;
 endclass

module work;
  initial begin
    transaction tr1,tr2;
    tr1=new();//creating a memory for tr1
    tr1.data=45;
    tr1.id=23;
    $display("value of tr1 data=%d and id=%d",tr1.data,tr1.id);
    
    tr2.data=35;
    tr2.id=63;
  end
endmodule
