%%file exercicio.sv

module exercicio( a, izero, ione, q );
  input a, izero, ione;
  output q; 

  assign q = (izero ~& a) ~& ((a ~& a) ~& ione);

endmodule
