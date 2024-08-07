module string_2;
  string s1="japan";
  string s2="JAPAN";
  string s3;
  string s4,s6,s7;
  string s5="china";
  initial begin
    
   s1.compare(s2);
    $display("comparison of b\w s1 and s2 %0d",s1.compare(s2));
    
      s1.icompare(s2);
    $display("icomparison of b\w s1 and s2 %0d",s1.icompare(s2));
    
    
    s1.compare(s5);
    $display("comparison of b\w s1 and s5 %0d",s1.compare(s5));
    
    s2.compare(s5);
    $display("comparison of b\w s1 and s5 %0d",s2.compare(s5));
    
    s2.icompare(s5);
    $display("icomparison of b\w s2 and s5 %0d",s2.icompare(s5));
    
    s1.icompare(s5);
    $display("icomparison of b\w s1 and s5 %0d",s1.icompare(s5));
    
    s3=s2.tolower();
    $display("lower case of s2::s3=%s",s3);
    
    s6=s5.toupper();
    $display("lower case of s5:: s6=%s",s6);
    
    s4={2{s2}};//replication
    $display("replication of strings s4=%s ",s4);
    
    s7={s2,s1,s5};//concatenation
    $display("concatenation of strings s2,s1,s5:: s7=%s ",s7);
    
  end
endmodule
    
    
    
    
    
