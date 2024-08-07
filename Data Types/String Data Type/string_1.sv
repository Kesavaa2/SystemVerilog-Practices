module string_1;
  string str1="victor";
  string str2="joice";
   string s3;
   string s4;
   string s5; 
  string s6;
  
  initial begin
    
    if(str1!=str2)
      $display("str1 and str2 are not equal:",str1,str2);
    else
      $display("str1 and str2 are equal",str1,str2);
    
    str1.len();
    $display("length of str1 =%0d",str1.len());
    
     str2.len();
    $display("length of str2 =%0d",str2.len());
    
    str1.putc(2,"j");
    $display("after put a j character str1= %s",str1);
    
    str2.getc(4);
    $display("after get character from str2 = %s",str2);
    
    s4=str1.toupper();
    $display("s4=%s",s4);
    
    s5=str2.toupper();
    $display("s5=%s",s5);
    
    s6={str1,str2};
    $display("the concatenation of two strings=%s",s6);
    
    str2.substr(1,4);
    $display("%s",str2.substr(1,4));
    
  end 
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
