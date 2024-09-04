#include <iostream>
#include "VMUX.h"  // Include the Verilated MUX model
#include "verilated.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    VMUX* top = new VMUX;

    // Test different input combinations
    for (int a = 0; a < 2; ++a) {
        for (int b = 0; b < 2; ++b) {
            for (int sel = 0; sel < 2; ++sel) {
                top->A = a;
                top->B = b;
                top->SEL = sel;
                top->eval();

                std::cout << "A=" << a
                          << " B=" << b
                          << " SEL=" << sel
                          << " Y=" << (int)top->Y
                          << std::endl;
            }
        }
    }

    delete top;
    return 0;
}