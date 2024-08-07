
module bounded_queue;
  int q[$:7] ='{3,26,77,85,90,18,39,54,11};
  int a,b,c;
  
  initial begin
    
     $display("q:",q);
       $display("");
  
   a=q.size();
    $display("size of queue a=",q.size());
      $display("");
  
  q.shuffle();
    $display("shuffled queue:",q);
      $display("");
  
  q.reverse();
    $display("reversed queue:",q);
      $display("");
    
  q.sort();
    $display("sorted queue:",q);
       $display("");
  
  q.rsort();
    $display("resorted queue:",q);
    $display("");
    
  q.insert(3,1);
    $display("inserted the value in q:",q);
      $display("");
    
   
  q.delete(7);
    $display("deleted q:",q);
    $display("");
    
    
  q.push_front(13);
    $display("push front in q:",q);
    $display("");
    
  b=q.pop_back();
    $display("b=",b);
    $display("");
    
    
  q.push_back(2);
   $display("q",q);
    $display("");
    
    
 c=q.pop_front();
    $display("c=",c);
      $display("");
end
endmodule
