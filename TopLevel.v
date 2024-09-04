module Vtop(
    input wire A,
    input wire B,
    output wire AND_Out,
    output wire OR_Out,
    output wire NAND_Out
);

    // Internal wires to connect the outputs of individual gates
    wire and_out;
    wire or_out;
    wire nand_out;

    // Instantiate AND gate
    AND and_gate (
        .X(and_out),
        .A(A),
        .B(B)
    );

    // Instantiate OR gate
    OR or_gate (
        .X(or_out),
        .A(A),
        .B(B)
    );

    // Instantiate NAND gate
    NAND nand_gate (
        .X(nand_out),
        .A(A),
        .B(B)
    );

    // Connect internal wires to module outputs
    assign AND_Out = and_out;
    assign OR_Out = or_out;
    assign NAND_Out = nand_out;

endmodule
