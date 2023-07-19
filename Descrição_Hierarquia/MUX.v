%%file exercicio.sv

module modulosimples( a, b, s, z );
 
  input a, b, s;
  output z;

  assign z = s ? a : b;

endmodule

module exercicio( e0, e1, e2, e3, s0, s1, y );
  
  input e0, e1, e2, e3, s0, s1;
  output y;

  wire m1, m2;

  modulosimples mux1 ( e0, e1, s0, m1 );
  modulosimples mux2 ( .a(e2),.b(e3),.s(s0),.z(m2) );
  modulosimples mux3 ( m1, m2, s1, y );

endmodule
