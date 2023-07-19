%%file exercicio.sv

module exercicio (a, enable, q);
  input a, enable;
  output reg q;

  always @(a, enable) begin
    case (enable)
      1'b0: q <= 1'bz; //quando o enable for 0 a saída será z
      1'b1: q <= a;
    endcase
  end
endmodule
