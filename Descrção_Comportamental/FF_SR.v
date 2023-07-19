%%file exercicio.sv

module exercicio ( s, r, clk, rst, q );
  input s, r, clk, rst;
  output reg q;

  initial begin
  assign q = 1'b1;
  end 

  always @(negedge rst or negedge clk) begin
  if (~rst) assign q = 1'b0;
  else if (~s && ~r) assign q = q;
  else if (s && ~r) assign q = 1'b1;
  else if (~s && r) assign q = 1'b0;
  else if (s && r) assign q = 1'bz; // saída não usada 
  end

endmodule
