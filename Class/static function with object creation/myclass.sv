 
  class myclass;
    static int hi;
    int bi;
    
  static function void add_hi_2();
    hi++;
    endfunction
    
    function void add_both();
      hi++;
      bi++;
    endfunction
    
  endclass
      
        
module work;
  
  myclass mic[64],sic[16];
  
  initial begin
    
  
    foreach(mic[i])begin
     mic[i]=new();
      mic[i].add_hi_2();
   
      $display("calling the add_hi_2 hi[%0d]=%0d ",i,mic.hi);
    end
    
    
    foreach(sic[i])begin
      sic[i]=new();
      sic[i].add_both();
   
      $display("calling the add_both hi=%0d,bi=%0d",sic[i].hi,sic[i].bi);
    end
    
 
end
endmodule
  
  
  
  
  
 
