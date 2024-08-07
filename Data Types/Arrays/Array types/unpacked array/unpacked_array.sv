module unpacked_array;
  int joy[7:0];
  byte hye[5];
  bit [3:0] bye[3:0];
  int lee[6][4];
  
  initial begin
    joy='{23,45,23,44,67,76,12,34};
    hye='{14,9,25,15,12};
    bye='{6,8,10,4};
    lee='{'{6,8,10,4},'{1,2,3,4},'{45,78,89,45},'{57,3,37,34},'{4,66,2,32},'{4,2,56,31}};
    
    foreach(joy[i])begin
      $display("values of joy[%0d]=%0d",i,joy[i]);
    end
    
    foreach(hye[i])begin
    foreach(hye[i][j])begin
      $display("values of hye[%0d][%0d]=%0d",i,j,hye[i][j]);
    end
    end
    
    
    
    foreach(bye[i])begin
      foreach(bye[i][j])begin
        $display("values of bye[%0d][%0d]=%0b",i,j,bye[i][j]);
    end
    end
  
    
    foreach(lee[i])begin
      foreach(lee[i][j])begin
        $display("values of lee[%0d][%0d]=%0d",i,j,lee[i][j]);
    end
    end
    
    
    
  
  end
  endmodule   
  
