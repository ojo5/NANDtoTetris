module ONEDMUXTWO(
    input wire In,      // Input signal
    input wire SEL,     // Select line
    output wire Y0,     // Output 0
    output wire Y1      // Output 1
);

    // Logic for the DMUX
    assign Y0 = ~SEL & In;  // Y0 is high when SEL is 0 and In is high
    assign Y1 = SEL & In;   // Y1 is high when SEL is 1 and In is high

endmodule
