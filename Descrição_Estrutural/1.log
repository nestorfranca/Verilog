%%file exercicio.sv

module exercicio( a, b, c, z );
  input a, b, c;
  output z;

  wire nt1, nt2, nt3, nd1, nd2, or1;

  not not1(nt1, a);
  not not2(nt2, b);
  not not3(nt3, c);
  and and1(nd1, nt1, b);
  and and2(nd2, nt2, c);
  or or1(or1, a, nt3);
  or or2(z, nd1, nd2, or1);

endmodule
