# NAND to Tetris with Verilog and Verilator

This project is part of the "NAND to Tetris" journey, where we build a computer from the ground up using basic logic gates. The goal is to implement logic gates in Verilog and simulate them using Verilator, eventually building up to a full computer.

### Prerequisites

- **Verilator**: A fast Verilog simulator and lint system.
- **C++ Compiler**: For compiling the testbench.
- **Make**: For building the project.

### V1.0.0 ALU implementation

### Installation

**Clone the repository**:

   ```bash
   git clone https://github.com/ojo5/nand2tetris.git
   cd nand2tetris
   ```

```bash
verilator -Wall --trace --cc NAND.v AND.v OR.v top.v --top-module top --exe top.cpp
make -C obj_dir -j -f Vtop.mk Vtop
./obj_dir/Vtop
```

