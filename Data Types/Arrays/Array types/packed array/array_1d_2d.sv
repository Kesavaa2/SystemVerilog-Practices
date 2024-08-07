module array_1d_2d;
  byte vrs;
  logic [4:0][3:0]abd;
  bit [2:0] msd;
  logic [7:0][5:0]krs;
  
  initial begin
    vrs='d43;
    abd='{12,10,9,15,4};
    msd='{3{1}};
    krs='{56,35,64,23,60,19,28,36};
    
    foreach (vrs[i])begin
      $display("vrs[%0d]=%0d",i,vrs[i]);
    end
    
    foreach (abd[i])begin
    foreach (abd[i][j])begin
      $display("abd[%0d][%0d]=%0b",i,j,abd[i][j]);
    end
    end
    
    foreach (msd[i])begin
      $display("msd[%0d]=%0d",i,msd[i]);
    end
  
    foreach (krs[i])begin
      foreach (krs[i][j])begin
        $display("krs[%0d][%0d]=%0b",i,j,krs[i][j]);
    end
    end
  
  
  
  end
  
endmodule
