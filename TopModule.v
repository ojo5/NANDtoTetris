module TopModule(
    input wire A,
    input wire B,
    input wire Cin,  // Carry input for FullAdder
    output wire Sum_HA,  // Sum from Half Adder
    output wire Carry_HA, // Carry from Half Adder
    output wire Sum_FA,  // Sum from Full Adder
    output wire Carry_FA  // Carry from Full Adder
);

    // Instantiate the HalfAdder
    HalfAdder ha (
        .A(A),
        .B(B),
        .Sum(Sum_HA),
        .Carry(Carry_HA)
    );

    // Instantiate the FullAdder, using Carry_HA as Cin
    FullAdder fa (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum_FA),
        .Cout(Carry_FA)
    );

endmodule
