module HalfAdder(
    input wire A,
    input wire B,
    output wire Sum,
    output wire Carry
);
    assign Sum = A ^ B;   // XOR
    assign Carry = A & B; // AND
endmodule
