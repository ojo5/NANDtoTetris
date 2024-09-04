#include <iostream>
#include "verilated.h"
#include "VONEDMUXTWO.h"  // The generated header for the DMUX module

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instantiate the DUT (Device Under Test)
    VONEDMUXTWO* top = new VONEDMUXTWO;

    // Test Case 1: SEL = 0, In = 0
    top->SEL = 0;
    top->In = 0;
    top->eval(); // Evaluate the module
    std::cout << "Test Case 1: SEL=0, In=0 => Y0=" << (int)top->Y0 << ", Y1=" << (int)top->Y1 << std::endl;

    // Test Case 2: SEL = 0, In = 1
    top->SEL = 0;
    top->In = 1;
    top->eval();
    std::cout << "Test Case 2: SEL=0, In=1 => Y0=" << (int)top->Y0 << ", Y1=" << (int)top->Y1 << std::endl;

    // Test Case 3: SEL = 1, In = 0
    top->SEL = 1;
    top->In = 0;
    top->eval();
    std::cout << "Test Case 3: SEL=1, In=0 => Y0=" << (int)top->Y0 << ", Y1=" << (int)top->Y1 << std::endl;

    // Test Case 4: SEL = 1, In = 1
    top->SEL = 1;
    top->In = 1;
    top->eval();
    std::cout << "Test Case 4: SEL=1, In=1 => Y0=" << (int)top->Y0 << ", Y1=" << (int)top->Y1 << std::endl;

    // Clean up
    delete top;
    exit(0);
}