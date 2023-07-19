%%file exercicio.sv

module exercicio ( j, k, clk, q, rst );
  
  input j, k, clk, rst;
  output reg q; 

  initial begin
  assign q = 1'b1;
  end

  always @(negedge rst or negedge clk) begin
  if (~rst) assign q = 1'b0;
  else if (~j && ~k) assign q = q;
  else if (j && ~k) assign q = 1'b1;
  else if (~j && k) assign q = 1'b0;
  else assign q = ~q;
  end  

endmodule
