Ranvir Singh
rsingh63
Spring 2022
Lab 4: Paint Application

DESCRIPTION
In this lab, the user enters inputs of w, a, s, d, q, e, c, and z to control the movement of a basic paintbrush on a bitmap. Before painting, the user also provides the starting point for the brush.

FILES
-
lab4_v2-1.asm
This file includes the assembly code of the lab.
lab4_part1.asm
This file includes the assembly code for turning the (x,y) coords into a memory address.
lab4_part2.asm
This file includes the assembly code for applying user inputs to the position of the paintbrush.
bitmap.asm
This file includes the assembly code for testing the bitmap.
multiply_function.asm
This file includes the assembly code for a function that multiplies two integers.
parse_cli_args.asm
This file includes the assembly code to help lab4_v2-1.asm run, including a test.
add_function.asm
This file includes the assembly code for a function that adds two integers.
test_lab4_part1.asm
This file includes the assembly code for testing lab4_part1.asm.
rars_533d3c0.jar
A copy of the RARS application so that it may access files in the folder.
README.txt
This

INSTRUCTIONS
This program is intended to be run using the RISCV Assembler and Runtime Simulator
(RARS). Assemble and run using RARS, and provide two integer inputs when prompted, to determine the starting point for the paintbrush. Then, in the Keyboard and Display MMIO Simulator, give your directional inputs for the brush.