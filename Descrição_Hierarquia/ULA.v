%%file exercicio.sv

module modulosimples( a, b, o, z );
 
  input[3:0] a, b;
  input[2:0] o;
  output reg [3:0] z;

  always @* begin
  case (o)
      (3'b000) : z = (a + b);
      (3'b001) : z = (a - b);
      (3'b010) : z = (a & b);
      (3'b011) : z = (a | b);
      (3'b100) : z = (a ^ b);
  endcase
  end

endmodule

module exercicio( a, dado, operacao, s );
  
  input[3:0] a, dado;
  input[2:0] operacao;
  output[3:0] s;

  modulosimples ula ( a, dado, operacao, s );

endmodule
