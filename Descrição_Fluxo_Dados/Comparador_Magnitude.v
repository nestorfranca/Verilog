%%file exercicio.sv

module exercicio( a, b, c, d, e );
 input[3:0] a, b;
 output c, d, e;

 assign c = (a > b);
 assign d = (a == b);
 assign e = (a < b);

endmodule
