// NAND Gate Module
module NAND(
    input wire A,
    input wire B,
    output wire X
);
    assign X = ~(A & B);
endmodule

// AND Gate Module
module AND(
    input wire A,
    input wire B,
    output wire X
);
    assign X = A & B;
endmodule

// OR Gate Module
module OR(
    input wire A,
    input wire B,
    output wire X
);
    assign X = A | B;
endmodule

// XOR Gate Module
module XOR(
    input wire A,
    input wire B,
    output wire X
);
    assign X = A ^ B;
endmodule

