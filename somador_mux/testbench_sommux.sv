
module Somador_Mux_4bits_TB;

  // Sinais de teste
  logic [3:0] Ia,Ib, Ic;
  logic       sel_mux;
  logic [3:0] resultado_final;

  // Instancia o módulo a ser testado
  Somador_Mux_4bits som(.ia(Ia),.ib(Ib),.ic(Ic),.select(sel_mux),.out_som(resultado_final));

  initial begin
    // Geração de arquivos para visualização
    $dumpfile("test.vcd");
    $dumpvars(1);

    // Mostra os sinais no terminal
    $monitor("time=%3t | sel_mux=%b | Ia=%b | Ib=%b | Ic=%b | resultado=%b",
             $time, sel_mux, Ia, Ib, Ic, resultado_final);

    // Teste 1
    Ia = 4'b0011; Ib = 4'b0101; Ic = 4'b0001; sel_mux = 0; // 3 + 5 = 8
    #10;

    // Teste 2
    Ia = 4'b0111; Ib = 4'b0000; Ic = 4'b0010; sel_mux = 1; // 7 + 2 = 9
    #10;

    // Teste 3  (1 + 2 = 3 )
    Ia = 4'b0001; Ib = 4'b0010; Ic = 4'b0100; sel_mux = 0;
    #10;

    $display("Terminou");
    $finish;
  end

endmodule
