class null_mem;
  bit[31:0]data;
  int id;
 endclass

module work;
  initial begin
    null_mem tr1,tr2;
    tr1=new();//creating a memory for tr1
   
    if(tr1!=null) begin
    tr1.data=45;
    tr1.id=23;
    $display("created object tr1 data=%d and id=%d",tr1.data,tr1.id);
      end
    else  
      $display("object tr1 not created");
    
    if(tr2!=null) begin
    tr2.data=34;
    tr2.id=74;
      $display("created object tr2 data=%d and id=%d",tr2.data,tr2.id);
      end
    else  
      $display("object tr2 not created");
  end
endmodule
