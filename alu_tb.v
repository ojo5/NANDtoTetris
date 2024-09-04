`timescale 1ns / 1ps

module alu_tb;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [3:0] ALU_Sel;

    // Outputs
    wire [7:0] ALU_Out;
    wire CarryOut;

    // Instantiate the ALU module
    alu uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .CarryOut(CarryOut)
    );

    // Testbench procedure
    initial begin
        // Initialize Inputs
        A = 8'b00000000;
        B = 8'b00000000;
        ALU_Sel = 4'b0000;

        // Wait for global reset
        #10;
        
        // Test Addition
        A = 8'b00001111; // 15 in decimal
        B = 8'b00000001; // 1 in decimal
        ALU_Sel = 4'b0000; // Addition
        #10;
        $display("Addition: A=%d, B=%d, ALU_Out=%d, CarryOut=%b", A, B, ALU_Out, CarryOut);

        // Test Subtraction
        ALU_Sel = 4'b0001; // Subtraction
        #10;
        $display("Subtraction: A=%d, B=%d, ALU_Out=%d, CarryOut=%b", A, B, ALU_Out, CarryOut);

        // Test Multiplication
        ALU_Sel = 4'b0010; // Multiplication
        #10;
        $display("Multiplication: A=%d, B=%d, ALU_Out=%d, CarryOut=%b", A, B, ALU_Out, CarryOut);

        // Test Division
        ALU_Sel = 4'b0011; // Division
        #10;
        $display("Division: A=%d, B=%d, ALU_Out=%d, CarryOut=%b", A, B, ALU_Out, CarryOut);

        // Test Logical Shift Left
        ALU_Sel = 4'b0100; // Shift Left
        #10;
        $display("Logical Shift Left: A=%d, ALU_Out=%d", A, ALU_Out);

        // Test Logical Shift Right
        ALU_Sel = 4'b0101; // Shift Right
        #10;
        $display("Logical Shift Right: A=%d, ALU_Out=%d", A, ALU_Out);

        // Test Rotate Left
        ALU_Sel = 4'b0110; // Rotate Left
        #10;
        $display("Rotate Left: A=%d, ALU_Out=%d", A, ALU_Out);

        // Test Rotate Right
        ALU_Sel = 4'b0111; // Rotate Right
        #10;
        $display("Rotate Right: A=%d, ALU_Out=%d", A, ALU_Out);

        // Test Logical AND
        ALU_Sel = 4'b1000; // AND
        #10;
        $display("Logical AND: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Logical OR
        ALU_Sel = 4'b1001; // OR
        #10;
        $display("Logical OR: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Logical XOR
        ALU_Sel = 4'b1010; // XOR
        #10;
        $display("Logical XOR: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Logical NOR
        ALU_Sel = 4'b1011; // NOR
        #10;
        $display("Logical NOR: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Logical NAND
        ALU_Sel = 4'b1100; // NAND
        #10;
        $display("Logical NAND: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Logical XNOR
        ALU_Sel = 4'b1101; // XNOR
        #10;
        $display("Logical XNOR: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Greater Comparison
        ALU_Sel = 4'b1110; // Greater
        #10;
        $display("Greater Comparison: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Test Equal Comparison
        ALU_Sel = 4'b1111; // Equal
        #10;
        $display("Equal Comparison: A=%d, B=%d, ALU_Out=%d", A, B, ALU_Out);

        // Finish simulation
        $finish;
    end

endmodule
