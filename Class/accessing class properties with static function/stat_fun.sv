class stat_fun;
 static bit[23:0] data;
  int id;
 
  static function void incr_data();
    data++;
  endfunction
  
  function void incr_id();
    id++;
    endfunction
 
endclass


module transaction;
  stat_fun d1[5],d2[10];
  
  initial begin
    foreach(d1[i])begin
      d1[i]=new();
      d1[i].incr_data;
      $display("calling the function incr_data: data=%0d and id=%0d",d1[i].data,d1[i].id);
    end
   
    foreach(d2[i])begin
      d2[i]=new();
       d2[i].incr_id;
      $display("calling the function incr_id data=%0d and id=%0d",d2[i].data,d2[i].id);
    end
    
end
endmodule
    
