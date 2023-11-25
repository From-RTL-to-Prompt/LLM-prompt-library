.text
.globl main

main:
  # Initialize data in registers
  li x1, 5         # Load immediate value 5 into register x1
  li x2, 10        # Load immediate value 10 into register x2

  # Instruction 1
  add x3, x1, x2   # Add values in x1 and x2 and store in x3

  # Instruction 2 - potentially dependent on the result of Instruction 1
  sub x4, x3, x1   # Subtract x1 from x3 and store in x4

  # Instruction 3 - independent of previous instructions
  li x5, 3         # Load immediate value 3 into register x5

  # Instruction 4 - potentially dependent on the result of Instruction 2
  mul x6, x4, x5   # Multiply values in x4 and x5 and store in x6

  # Terminate the program
  la x7, __exit
  jr x7

.section .data
.align 2


