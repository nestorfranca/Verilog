%%file exercicio.sv

module exercicio( a, b, c, z );
  // Declaração de portas
  input a, b, c;
  output z;

  // Fluxo de dados
  assign z = (b & ~a) | (a | ~c) | (~b & c);

endmodule
