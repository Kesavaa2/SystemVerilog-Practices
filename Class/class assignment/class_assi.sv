class class_assi;
  bit[31:0]data;
 endclass

module class_assignment;
  initial begin
    class_assi tr1,tr2;
    tr1=new();//creating a memory for tr1
    tr1.data=45;
    tr2=tr1;//assigning the tr1 for tr2
    $display("value of tr1 data=%d and tr2 data=%d",tr1.data,tr2.data);
    
    
    tr2.data=24;
    $display("value of tr1 data=%d and tr2 data=%d",tr1.data,tr2.data);
  
end
endmodule
