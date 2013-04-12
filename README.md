# Intro to Ruby and Programming

## Project

Build a simple, command-line driven RPN (HP style) calculator

## Requirements

Runs in a continuous loop until encountering the "q" (quit) command. It waits for input, and you enter either a digit or an operation, then press enter. The calculator will print out the current value, or an error message if something went wrong. The operations that will be supported are addition (+), subtraction (-), multiplication (*) and division (/). Pressing enter with no input just prints the prompt. Pressing "m" prints out the current memory stack. Pressing "c" (clear) will clear memory

## Extra Credit

* Create a "paper tape" function "p" that prints out the history of all input including operators. "c" does not clear history. 
* Add a clear all function that clears both. 
* Add support for entering floating point numbers.
* Add a "pi" command that adds "Pi" to stack. 
* Add square root "sqrt".

## Extra Extra Credit

* Save memory and history to a file, and read it in when the program is started 
