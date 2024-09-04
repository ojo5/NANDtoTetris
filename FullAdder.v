module FullAdder(
    input wire A,
    input wire B,
    input wire Cin,    // Carry in
    output wire Sum,
    output wire Cout   // Carry out
);
    wire sum_AB, carry_AB, carry_ACin;

    assign sum_AB = A ^ B;
    assign Sum = sum_AB ^ Cin;
    assign carry_AB = A & B;
    assign carry_ACin = sum_AB & Cin;
    assign Cout = carry_AB | carry_ACin;
endmodule
