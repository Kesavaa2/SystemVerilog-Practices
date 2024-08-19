class ex_key;
 static int hi;
  string str;
  
  extern function void ext();
    
endclass
    
    function void mine::ext();
    hi=hi++;
   str="bye";
      
      endfunction
    
 module work;
   ex_key mi[5];
   initial begin
     foreach(mi[i])begin
       mi[i]=new();
       mi[i].ext();
       $display("hi[%0d]=%0d,str=%0s",i,mine::hi,mi[i].str);
     end
   end
 endmodule
    
     
