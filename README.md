# 4-Bit ALU in Verilog

## Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.
The ALU performs multiple operations such as **addition, subtraction, comparison, and bitwise AND**.
Each function is implemented as a separate module and selected using a **2-bit control signal**.

## Operations

| s1 s0 | Operation                        |
| ----- | -------------------------------- |
| 00    | Addition (A + B)                 |
| 01    | Subtraction (A − B)              |
| 10    | Comparator (A > B, A = B, A < B) |
| 11    | Bitwise AND (A & B)              |

## Files

```text
add_sub_module.v
and_module.v
comparator.v
decoder.v
enable.v
fulladder.v
main.v

Testbench_adder.v
Testbench_subtractor.v
Testbench_comparator.v
Testbench_and.v
```

## Simulation

Compile:

```
iverilog -o run Testbench_adder.v
```

Run:

```
vvp run
```

View waveform:

```
gtkwave adder.vcd
```

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

## Author

Nandaa Ramasamy
