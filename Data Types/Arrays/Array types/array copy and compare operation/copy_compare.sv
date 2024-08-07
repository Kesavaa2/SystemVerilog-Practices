module copy_compare;
  initial begin
  bit [15:0] ar1[6]='{1,2,3,4,5,6},
  ar2[6]='{6,5,4,3,2,1};
  
  if(ar1==ar2)
    $display("ar1 & ar2 are equal",ar1,ar2);
  else
    $display("ar1 & ar2 are not equal",ar1,ar2);
 
  
  ar1=ar2;
    ar1[5]=0;
    if(ar1[0:4]==ar2[0:4])
      $display("ar1[0:4]=ar2[0:4]",ar1[0:4],ar2[0:4]);
    else
      $display("ar1[0:4]!=ar2[0:4]",ar1[0:4],ar2[0:4]);
  end
endmodule
