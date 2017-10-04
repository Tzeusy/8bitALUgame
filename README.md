# Project Title

8 Bit ALU for Computational Structures 1D. Based on Lucid with the Mojo v3 SPARTAN-6 FPGA

## Getting Started

Install the Mojo IDE and Xilinx ISE Design Suite, as described by https://embeddedmicro.com/tutorials/mojo-fpga-beginners-guide.

## Sub-one: The Mini Hardware project
The main file for the mini hardware is the mojo_top.luc, which calls the evaluater and blinker modules. Blinker manages the 3 full adder inputs A B and C, while Evaluation takes the values of A, B, and C, and returns a Sum or Carry, along with a comparator with a received sum/carry from an IRL ic system. 
