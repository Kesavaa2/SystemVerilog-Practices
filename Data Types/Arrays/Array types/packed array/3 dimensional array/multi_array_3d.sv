module multi_array_3d;
  bit[3:0][2:0][7:0] ant;
  initial begin
    ant[0]=24'hfaface;
    ant[1]=24'hdaceda;
    ant[2]=24'hbabafa;
    ant[3]=24'h89abcd;
    
    $display("ant=%0h",ant);
    
    foreach(ant[i])begin
      $display("ant[%0d]=%0h",i,ant[i]); 
    foreach(ant[i][j])begin
      $display("ant[%0d][%0d]=%0h",i,j,ant[i][j]); 
    end
    end
    
    
  end
endmodule
