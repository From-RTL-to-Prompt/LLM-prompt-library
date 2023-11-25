.text
.globl main

main:
  # Initialize data in registers
  li x1, 5           # Load immediate value 5 into register x1
  li x2, 10          # Load immediate value 10 into register x2
  li x3, 15          # Load immediate value 15 into register x3

  # Arithmetic operations with dependencies
  add x4, x1, x2     # Add values in x1 and x2 and store in x4
  sub x5, x4, x1     # Subtract x1 from x4 and store in x5
  mul x6, x5, x3     # Multiply values in x5 and x3 and store in x6

  # Retirement instructions
  li x7, 0           # Dummy instruction
  li x8, 0           # Dummy instruction
  li x9, 0           # Dummy instruction

  # Terminate the program
  la x10, __exit
  jr x10

.section .data
.align 2

