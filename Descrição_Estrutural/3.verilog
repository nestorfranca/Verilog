%%file exercicio.sv


module exercicio( a, b, c, d, e);
  input a, b;
  output d;
  inout c, e;
 
  wire nt1, nt2;

  not not1(nt1, a);
  not not2(nt2, b);
  and and1(c, nt1, b);
  and and2(e, nt2, a);
  nor nor1(d, c, e);


endmodule
