
module assoc_array;
int  imem[*];
integer St [string] = '{"Peter":20, "Paul":22, "Mary":23};
  
initial
  begin
    if(St.exists( "Peter") ) $display(" Index Peter exists ");
    
    //Assign data to wildcard index
    imem[ 2'd2 ] = 2;
    imem[ 3'd6 ] = 16;
    imem[ 4'b1100 ] = 5;
    imem[ 16'habcd ] = 20;
    $display( " imem has %0d entries", imem.num );
    
    if(imem.exists(3'd6) ) $display(" Index 3'd6 exist) ");

    imem.delete(3'd6);
    
    if(imem.exists( 3'd6) ) $display(" Index 3'd6 exists) ");
    else $display(" Index 3'd6 does not exist");
    
    imem[ 3'd6] = 15;

    
    imem.delete(); //delete all entries
    $display(" imem has %0d entries", imem.num );
    $display(" imem = %p", imem); 
  end
endmodule
