module MUX(
    input wire A,       // Input 0
    input wire B,       // Input 1
    input wire SEL,     // Select line
    output wire Y       // Output
);

    wire not_sel;       // Wire for NOT of SEL
    wire and_a;         // Wire for AND of not_sel and A
    wire and_b;         // Wire for AND of SEL and B

    // Logic gate implementations
    not (not_sel, SEL);        // NOT gate: not_sel = ~SEL
    and (and_a, not_sel, A);   // AND gate: and_a = not_sel & A
    and (and_b, SEL, B);       // AND gate: and_b = SEL & B
    or  (Y, and_a, and_b);     // OR gate: Y = and_a | and_b

endmodule
