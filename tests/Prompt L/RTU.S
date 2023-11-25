.text
.globl main

main:
  # Integer instructions
  li x1, 5         # Load immediate value 5 into register x1
  li x2, 10        # Load immediate value 10 into register x2
  add x3, x1, x2   # Add values in x1 and x2 and store in x3

  # Floating-point instructions
  fmv.x.s x4, f3   # Move the value from floating-point register f3 to integer register x4
  fmv.x.d x5, f7   # Move the value from double-precision register f7 to integer register x5

  # Store the results in memory
  sw x3, 0(x0)     # Store the result of the integer operation in memory
  sw x4, 4(x0)     # Store the result of the floating-point operation in memory
  sd x5, 8(x0)     # Store the result of the double-precision operation in memory

  # Terminate the program
  la x6, __exit
  jr x6

.section .data
.align 2

