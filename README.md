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


## ALU Convention

| Operation  | ALUFN[5:0] |
|:----------:|:----------:|
|    ADD     |   000000   | T
|    SUB     |   000001   | -> ADDER   (ALUFN[1:0])
|    MUL     |   000010   | -
|            |            |
|    AND     |   011000   | T  
|     OR     |   011110   | |
|    XOR     |   010110   | -> BOOLEAN (ALUFN[3:0])
|    "A"     |   011010   | -
|            |            |
|    SHL     |   100000   | T
|    SHR     |   100001   | -> SHIFT   (ALUFN[1:0])
|    SRA     |   100011   | -
|            |            |
|   CMPEQ    |   110011   | T
|   CMPLT    |   110101   | -> COMPARE (ALUFN[2:1]) 
|   CMPLE    |   110111   | -
