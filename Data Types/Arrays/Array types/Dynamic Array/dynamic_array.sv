module  dynamic_array;
  int dar1[]=new[7];
  
  initial begin
    dar1='{23,56,78,34,63,11,99};
    $display("elements of dar1",dar1);
    
    foreach(dar1[i])begin
      $display("dar1[%0d]=%0d",i,dar1[i]);
    end
    
    $display("size of dar1",dar1.size()); //displaying size of array
  
    
    dar1.sort(); //sorting the array elements    
    $display("dar1 sorted",dar1);
    
    dar1=new[10](dar1); //overriding the array
    $display("dar1 overrided array",dar1);
    
     dar1.reverse();//reversing the elements order
    $display("dar1 reversed",dar1);
               
    dar1.sort(); //sorting the elements of resized array 
    $display("dar1 sorted",dar1);
              
     dar1.rsort();  //resorting the elements of resized array 
    $display("dar1 resorted",dar1);
               
    dar1.delete(); //deleting the array
    $display("deleted array dar1",dar1);
    
    dar1=new[5];//resizing the array
    foreach(dar1[i])begin
      dar1[i]=i;
      $display("values of dar1 for each index [%0d]=%0d",i,dar1[i]);
    end
    
  $display("size of array=%0d",dar1.size()); //displaying size of array
 
 end
endmodule
