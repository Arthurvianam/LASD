// MUX 2x1 de 4 bits 
module MUX_2x1_4bits (
  input logic [3:0]i0, i1, 			//Entradas de 4 bits
  input logic sel,					//Sinal de seleção
  output [3:0]out					//Saída em 4 bits
); 
   assign out = sel ? i1 : i0; 		//Seleção das entradas 
endmodule 