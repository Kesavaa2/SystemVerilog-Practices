module associative_array2;
  bit[7:0] arr [int];
  int index;
  
  initial begin
    arr[2]=4;
    arr[10]=14;
    arr[5]=23;
    arr[12]=5;
    arr[9]=23;
    arr[20]=24;
    arr[16]=40;
    
    foreach(arr[i])
      $display("arr [%0d]=%0d",i,arr[i]);
    
    $display("number of entries:",arr.num());
    
    $display("size of array:", arr.size());
    
    
    
    if(arr.exists(6))
      $display("index 6 exists in array");
    
    
    if(arr.exists(9))
      $display("index 9 exists in array");
    else
      $display("index 9 not exists in array");
    
   
    if(arr.exists(15))
      $display("index 15 exists in array");
    else
      $display("index 15 not exists in array");
   
    
    
    arr.first(index);
    $display("first index =%0d",index);
    
  
     index=5;
    arr.next(index);
    $display("next index of 5 =%0d",index);
    
    index=16;
    arr.prev(index);
    $display("previous index of 16 =%0d",index);
    
    arr.last(index);
    $display("last index =%0d",index);
    
    arr.delete(12);
    $display("number of elements after deleting index 12=",arr.num()); 
    
    foreach(arr[i])
    $display("arr [%0d]=%0d",i,arr[i]);
  
  end
endmodule  
    
    
    
    
    
    
    
      
