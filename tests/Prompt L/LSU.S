.text
.globl main

main:
  # Initialize data in memory
  li x1, 5         # Load immediate value 5 into register x1
  li x2, 10        # Load immediate value 10 into register x2
  sw x1, 0(x2)     # Store the value in x1 at the address pointed to by x2

  # Load values from memory
  lw x3, 0(x2)     # Load the value from memory at the address pointed to by x2 into x3
  lw x4, 4(x2)     # Load the value from memory at the address (x2 + 4) into x4

  # Perform arithmetic operations using loaded values
  add x5, x3, x4   # Add the values in x3 and x4 and store in x5
  sub x6, x3, x4   # Subtract the value in x4 from x3 and store in x6

  # Store results in memory
  sw x5, 8(x2)     # Store the value in x5 at the address (x2 + 8)
  sw x6, 12(x2)    # Store the value in x6 at the address (x2 + 12)

  # Terminate the program
  la x7, __exit
  jr x7

.section .data
.align 2


