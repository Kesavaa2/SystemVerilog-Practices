module arr_locator;
  string str[6]={"bob","leo","vic","aju","jim","jack"};
  string strs[$];
  int inta[int];
  int s;
  int ans[$];

  initial begin
    inta[0]=3;
    inta[1]=8;
    inta[2]=2;
    inta[3]=9;
    inta[4]=5;
    inta[5]=1;
    inta[6]=4;

    ans=inta.find(s) with (s<5);
    $display("find the values less than 5 in inta =%0p",ans);
     $display("");
    
    
    ans=inta.find(s) with (s>5);
    $display("find the values greater than 5 in inta =%0p",ans);
     $display("");
    
    
    ans=inta.find_index(s) with (s<5);
    $display("find the index values less than  5 in inta =%0p",ans);
     $display("");
    
    
     
    ans=inta.find_index(s) with (s>5);
    $display("find the index values greater than 5 in inta =%0p",ans);
     $display("");
    
    
    ans=inta.find_first(s) with (s>4) ;
    $display("find the first value greater than 4 in inta =%0p",ans);
     $display("");
    
    ans=inta.find_last(s) with (s>4) ;
    $display("find the last value greater than 4 in inta =%0p",ans);
     $display("");
    
    ans=inta.find_first_index(s) with (s>4) ;
    $display("find the first index value greater than 4 in inta =%0p",ans);
     $display("");
    
    ans=inta.find_last_index(s) with (s>4) ;
    $display("find the last index value greater than 4 in inta =%0p",ans);
     $display("");
    
    strs=str.find_first(str) with (str); 
    $display("find the find first value str =%p",strs);
     $display("");
    
    strs=str.find_last(str) with (str); 
    $display("find the find last value str =%p",strs);
     $display("");
   
end
endmodule
    
    
