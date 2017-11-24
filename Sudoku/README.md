# Binary Sudoku
Binary sudoku is fun

## Modularity
### ALU
The ALU is one of the many modules in our very modular program.
The ALU module contains further sub-modules for each of the four main ALU functions: adder, boolean, comparator, shifter.

### Board
Management of the board is split into several modules.
#### Board generator
Contains all the hardcoded preset boards to be given to the player at the start of the game, as well as the answers to them.

#### Board manager
Stores the current game state like a register.

#### Board select manager
When a player selects a row or a column, this module keeps track of the current selection. The current selected row and/or column is stored like a register.

#### Board mask manager
The mask takes in the currently selected row and/or column from the `board select manager` and generates a mask. This mask allows the selected row and/or column to be displayed in a different colour.

#### Board checker
When the user presses the `check if my answer is correct` button, this module will output a corresponding boolean.

### Display
Module that takes in the current state of the game from `board manager`, as well as the `current selection mask` from the `board mask manager`. It then returns the 8 corresponding IO signals to the LED strips.

### Pseudo-RNG
Module that returns an 8-bit pseudo-rng number given an 8-bit input.

## Using the ALU
### Single ALU constraint
The control logic unit (`mojo_top.luc`) assigns the correct input and ALUFN for the ALU. It does this by maintaining a FSM, and the ALU input is selected amongst the different modules based on the current state of the program.

### ALU functions
Five ALU functions were used:
* [SHL](https://github.com/Tzeusy/8bitALUgame/blob/master/Sudoku/source/prng.luc#L29)
* [SHR](https://github.com/Tzeusy/8bitALUgame/blob/master/Sudoku/source/prng.luc#L45)
* [XOR](https://github.com/Tzeusy/8bitALUgame/blob/master/Sudoku/source/prng.luc#L37)
* [AND](https://github.com/Tzeusy/8bitALUgame/blob/master/Sudoku/source/board_manager.luc#L33)
* [CMPEQ](https://github.com/Tzeusy/8bitALUgame/blob/master/Sudoku/source/board_checker.luc#L22)

## Sources
[Implementing registers in Mojo](https://github.com/kurniawano/Mojo-Examples/tree/master/SimpleRegisters)  
[Binary sudoku boards](http://www.binarypuzzle.com/puzzles.php?size=8)
