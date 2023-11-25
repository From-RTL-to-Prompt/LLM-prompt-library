.text
.globl main

main:
  # Load data into register a1
  lw a1, 0(x2)

  # Add 5 to the loaded data
  addi a2, a1, 5

  # Store the result to memory
  sw a2, 4(x2)

  # Load data into register a3
  lw a3, 8(x2)

  # Subtract 3 from the loaded data
  addi a4, a3, -3

  # Store the result to memory
  sw a4, 12(x2)

  # Exit the program
  la x1, __exit
  jr x1

