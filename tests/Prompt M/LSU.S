.text
.globl main

main:
  # Initialize data in registers
  li x1, 5           # Load immediate value 5 into register x1
  li x2, 10          # Load immediate value 10 into register x2
  li x3, 15          # Load immediate value 15 into register x3

  # Store data to memory
  sw x1, 0(x0)       # Store the value in x1 at the address 0
  sh x2, 4(x0)       # Store the value in x2 at the address 4
  sb x3, 8(x0)       # Store the value in x3 at the address 8

  # Load data from memory
  lw x4, 0(x0)       # Load a word from memory at address 0 into x4
  lh x5, 4(x0)       # Load a half-word from memory at address 4 into x5
  lb x6, 8(x0)       # Load a byte from memory at address 8 into x6

  # Terminate the program
  la x7, __exit
  jr x7

.section .data
.align 2

