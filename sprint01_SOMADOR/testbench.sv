
// Testbench somador  - Entradas manuais 
module somador_4bitys_tb; 
 
  // Sinais 
  logic [3:0]Ia;
  logic [3:0]Ib;
  
  logic [3:0]Out; 
   
  // Instância somador 
  somador_4bits tes(.a(Ia), .b(Ib), .res(Out)); 
   
  initial 
    begin 
      //Salva os sinais do TB em um arquivo .vcd 
      $dumpfile("test.vcd"); $dumpvars(1); 
       
      //Monitora os sinais de entrada e saída 
      $monitor("time=%3d, Ia=%h, Ib=%h, Out=%h",$time,Ia,Ib,Out); 
       
      //Geração dos sinais de entra (estímulos) 
      
      Ia=4'd1; Ib=4'd2; 
       #10; 
      Ia=4'd5;Ib=3; 
      #10; 
      Ia=4'd3;Ib=4'd5; 
      #10; 
      Ia=4'd3; Ib=4'd1; 
      #10; 
      $display("Terminou"); 
    end     
endmodule 