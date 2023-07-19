%%file exercicio.sv

module exercicio( clk, clr, togen, z1);
  input clk, clr, togen;
  output reg z1;

  reg estado_atual, estado_proximo;

  parameter st0 = 1'b0,
            st1 = 1'b1;

  always @(posedge clk, posedge clr) begin
    if ( clr ) estado_atual <= st0;
    else estado_atual <= estado_proximo;
  end 

  always @(estado_atual, togen) begin
    case ({estado_atual})
      st0 : begin
        z1 = 0;
        if ( togen == 1 ) estado_proximo = st1;
        else estado_proximo = st0;
      end
      st1 : begin
        z1 = 1;
        if ( togen == 1 ) estado_proximo = st0;
        else estado_proximo = st1;
      end
    endcase
  end
endmodule
