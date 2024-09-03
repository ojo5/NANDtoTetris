module NAND(X, A, B);
  input   A, B;
  output  X;

  assign  X = ~(A & B);
endmodule

