%%file exercicio.sv

module exercicio( a, b, c, d, e );
  input a, b;
  output d;
  inout c, e;

  assign c = (~a) & (b);
  assign d = (~a & b) ~| (a & ~b);
  assign e = (a) & (~b);

endmodule
