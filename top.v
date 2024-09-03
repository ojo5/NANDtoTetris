module top(
    input wire A,
    input wire B,
    output wire AND_Out,
    output wire OR_Out,
    output wire NAND_Out,
    output wire XOR_Out,
    output wire NOT_Out
);

    // Internal wires to connect the outputs of individual gates
    wire and_out;
    wire or_out;
    wire nand_out;
    wire xor_out;
    wire not_out;

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

    // Instantiate XOR gate
    NAND nand_gate (
        .X(nand_out),
        .A(A),
        .B(B)
    );

    // Instantiate NAND gate
    XOR xor_gate (
        .X(xor_out),
        .A(A),
        .B(B)
    );

    // Instantiate NAND gate
    NOT NOT_gate (
        .X(not_out),
        .A(A)
    );

    // Connect internal wires to module outputs
    assign AND_Out = and_out;
    assign OR_Out = or_out;
    assign NAND_Out = nand_out;
    assign XOR_Out = xor_out;
    assign NOT_Out = not_out;

endmodule
