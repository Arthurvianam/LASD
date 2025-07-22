module somador_4bits( 
  input logic [3:0] a,
  input logic [3:0] b,
  output [3:0] res
);
  
  assign res = a +b ;
endmodule



module MUX_2x1_4bits (
  input logic [3:0] i0, i1, 			//Entradas de 4 bits
  input logic sel,					//Sinal de seleção
  output logic [3:0] out					//Saída em 4 bits
); 
   assign out = sel ? i1 : i0; 		//Seleção das entradas 
endmodule 
  

module Somador_Mux_4bits(
  input  logic[3:0] ia, ib, ic,
  input  logic select,
  output logic [3:0] out_som
);
  
  logic [3:0] saida_mux;
  
  MUX_2x1_4bits m0(.i0(ib), .i1(ic), .sel(select), .out(saida_mux));
  
  somador_4bits sm(.a(ia), .b(saida_mux), .res(out_som));
endmodule
 

  





