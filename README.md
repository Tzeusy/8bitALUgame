# Project Title
8 Bit ALU for Computational Structures 1D. Based on Lucid with the Mojo v3 SPARTAN-6 FPGA.

## Getting Started
Install the Mojo IDE and Xilinx ISE Design Suite, as described by the [Mojo FPGA Beginner's Guide](https://embeddedmicro.com/tutorials/mojo-fpga-beginners-guide).

## Mini Hardware Project
### [`mojo_top.luc`](Mini%20Hardware/source/mojo_top.luc)
The main file for the mini hardware: calls the `evaluator.luc` and `blinker.luc` modules.

### [`blinker.luc`](Mini%20Hardware/source/blinker.luc)
Manages the 3 full adder inputs A, B and C.

### [`evaluation.luc`](Mini%20Hardware/source/evaluation.luc)
Takes the value of A,B and C, and returns a `sum` and `carry`.<br>
A comparator receives another set of `sum` and `carry` from an IRL IC system, and determines their equality.
