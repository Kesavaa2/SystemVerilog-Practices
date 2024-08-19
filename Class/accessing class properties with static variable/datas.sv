class datas;
 static bit[23:0] data;
  int id;
 
   function new();
    data++;
    id++;
  endfunction
 
endclass


module transaction;
  datas d1[5];
  
  initial begin
    foreach(d1[i])begin
      d1[i]=new();
      $display("calling the function data[%0d]=%0d and id[%0d]=%0d",i,d1[i].data,i,d1[i].id);
    end
   
end
endmodule
    
