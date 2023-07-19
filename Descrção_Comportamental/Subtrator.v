%%file exercicio.sv

module exercicio ( a, b, d, borrow );
  input [3:0] a, b;
  output reg borrow;
  output reg [3:0] d;
  
  reg bin;
  integer i;

  initial begin
    bin <= 1'b0;
  end

  always @(*) begin
    for (i = 0; i <= 3; i=i+1) begin
      d[i] = a[i] ^ b[i] ^ bin;
      bin = (~a[i] & b[i]) | (~a[i] & bin) | (b[i] & bin);
    end
    borrow = bin;
  end

endmodule
