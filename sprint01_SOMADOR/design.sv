
module somador_4bits( 
  input logic [3:0] a,
  input logic [3:0] b,
  output [3:0] res);
  
  assign res = a +b ;
endmodule