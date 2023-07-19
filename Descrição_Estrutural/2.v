%%file exercicio.sv

module exercicio( a, izero, ione, q );
  input a, izero, ione;
  output q;

  wire f1, f2, f3;

  nand nand1(f1, izero, a);
  nand nand2(f2, a, a);
  nand nand3(f3, ione, f2);
  nand nand4(q, f1, f3);

endmodule
