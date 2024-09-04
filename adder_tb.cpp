#include "verilated.h"
#include "VTopModule.h"  // The generated header from Verilator for your top module
#include <iostream>      // Include iostream for printing the results

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Create a simulation instance of the top module
    VTopModule* top = new VTopModule;

    // Test loop for all input combinations
    for (int a = 0; a < 2; ++a) {
        for (int b = 0; b < 2; ++b) {
            for (int cin = 0; cin < 2; ++cin) {  // cin only applies to FullAdder
                // Apply inputs to HalfAdder (ignoring Cin)
                top->A = a;
                top->B = b;
                top->Cin = cin;

                // Evaluate the circuit
                top->eval();

                // Display results for HalfAdder and FullAdder
                std::cout << "Inputs: A=" << a << " B=" << b << " Cin=" << cin << std::endl;
                std::cout << "HalfAdder - Sum: " << (int)top->Sum_HA << " Carry: " << (int)top->Carry_HA << std::endl;
                std::cout << "FullAdder - Sum: " << (int)top->Sum_FA << " Carry: " << (int)top->Carry_FA << std::endl;
                std::cout << "----------------------------------------" << std::endl;
            }
        }
    }

    // Cleanup
    delete top;
    return 0;
}