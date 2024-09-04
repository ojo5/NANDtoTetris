`timescale 1ns / 1ps  // Time unit of 1 nanosecond and time precision of 1 picosecond

module alu(
    input [7:0] A,        // ALU 8-bit Inputs
    input [7:0] B,
    input [3:0] ALU_Sel,  // ALU Selection
    output reg [7:0] ALU_Out, // ALU 8-bit Output
    output reg CarryOut       // Carry Out Flag
);
    reg [8:0] sum; // Extend to capture carry-out

    always @(*)
    begin
        // Default value assignment to avoid latches
        sum = 9'd0;
        ALU_Out = 8'd0;
        CarryOut = 1'b0;

        case (ALU_Sel)
            4'b0000: // Addition
            begin
                sum = A + B;
                ALU_Out = sum[7:0]; // Take the lower 8 bits of the result
                CarryOut = sum[8]; // Carry-out bit
            end
            4'b0001: // Subtraction
                ALU_Out = A - B;
            4'b0010: // Multiplication
                ALU_Out = A * B;
            4'b0011: // Division
                ALU_Out = A / B;
            4'b0100: // Logical shift left
                ALU_Out = A << 1;
            4'b0101: // Logical shift right
                ALU_Out = A >> 1;
            4'b0110: // Rotate left
                ALU_Out = {A[6:0], A[7]};
            4'b0111: // Rotate right
                ALU_Out = {A[0], A[7:1]};
            4'b1000: // Logical AND
                ALU_Out = A & B;
            4'b1001: // Logical OR
                ALU_Out = A | B;
            4'b1010: // Logical XOR
                ALU_Out = A ^ B;
            4'b1011: // Logical NOR
                ALU_Out = ~(A | B);
            4'b1100: // Logical NAND
                ALU_Out = ~(A & B);
            4'b1101: // Logical XNOR
                ALU_Out = ~(A ^ B);
            4'b1110: // Greater than comparison
                ALU_Out = (A > B) ? 8'd1 : 8'd0;
            4'b1111: // Equal comparison
                ALU_Out = (A == B) ? 8'd1 : 8'd0;
            default: 
                ALU_Out = A + B; // Default operation
        endcase
    end
endmodule


