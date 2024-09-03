#include <iostream>
#include "Vtop.h"
#include "verilated.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Initialize top-level Verilog instance
    Vtop* top = new Vtop;

    // Testbench code
    for (int a = 0; a < 2; ++a) {
        for (int b = 0; b < 2; ++b) {
            top->A = a;
            top->B = b;
            top->eval();

            std::cout << "a=" << a
                      << " b=" << b
                      << " AND_Out=" << (int)top->AND_Out
                      << " OR_Out=" << (int)top->OR_Out
                      << " NAND_Out=" << (int)top->NAND_Out
                      << " XOR_Out=" << (int)top->XOR_Out
                      << " NOT_Out=" << (int)top->NOT_Out
                      << std::endl;

            if (Verilated::gotFinish()) exit(0);
        }
    }

    // Clean up
    delete top;
    exit(0);
}