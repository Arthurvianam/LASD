// Testbench para o Mux de 4 bits - Entradas manuais 
module MUX_2x1_4bits_TB; 
  // Implemente um módulo MUX 2x1 de 4bits.
  // Sinais 
  logic [3:0] Ia, Ib ;
  logic select;
  logic [3:0] Out_Mux; 
   
  // Instância do Mux de 4 bits 
  MUX_2x1_4bits mux(.i0(Ia), .i1(Ib), .sel(select), .out(Out_Mux)); 
  
  
  initial 
    begin 
      //Salva os sinais do TB em um arquivo .vcd 
      $dumpfile("test_Mux.vcd"); $dumpvars(1, MUX_2x1_4bits_TB); 
    
      $monitor("time=%3d, Ia=%d, Ib=%d, select=%d, Out_Mux=%d", $time,Ia,Ib,select,Out_Mux);
      Ia=4'b0000; Ib=4'b0001; select=1'b0;
      #10;
      Ia=4'b0000; Ib=4'b0001; select=1'b1;
      #10;
      Ia=4'b0010; Ib=4'b0011; select=1'b0;
      #10;
      Ia=4'b0010; Ib=4'b0011; select=1'b1;
      #10;
      Ia=4'b0100; Ib=4'b0101; select=1'b0;
      #10;
      Ia=4'b0100; Ib=4'b0101; select=1'b1;
      #10;
      Ia=4'b0110; Ib=4'b0111; select=1'b0;
      #10;
      Ia=4'b0110; Ib=4'b0111; select=1'b1;
      #10;
      $finish();
    end   
endmodule 


