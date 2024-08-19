class acc_module;
  bit[31:0]data;
  int id;
  
  task update(bit[31:0] m_data,int m_id);
    data=m_data;
    id=m_id;
  endtask
  
  function display(transaction tr);
    $display("value of data=%h and id=%h",tr.data,tr.id);
  endfunction
  
endclass

module work;
  initial begin
    acc_module tr=new();
    tr.update(255,115);
    tr.display(tr);
  end
endmodule
