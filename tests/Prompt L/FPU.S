.text
.globl main

main:
  # Load a floating-point number into a register (e.g., x2)
  flw f1, 10(x0)  # Load a float from memory at address 10

  # Perform the square root operation
  fsqrt.s f2, f1

  # Store the result in memory (you can change the address as needed)
  fsw f2, 20(x0)  # Store the result at address 20

  # Terminate the program
  la x1, __exit
  jr x1

.section .data
.align 2


