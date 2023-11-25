.text
.globl main

main:
  # Integer instructions
  li x1, 5         # Load immediate value 5 into register x1
  li x2, 10        # Load immediate value 10 into register x2
  add x3, x1, x2   # Add values in x1 and x2 and store in x3

  sub x4, x3, x1   # Subtract x1 from x3 and store in x4

  mul x5, x2, x4   # Multiply values in x2 and x4 and store in x5

  divu x6, x5, x2  # Unsigned integer division: x6 = x5 / x2

  # Bitwise logical operations
  and x7, x5, x3   # Bitwise AND of x5 and x3, store result in x7
  or  x8, x7, x2   # Bitwise OR of x7 and x2, store result in x8
  xor x9, x8, x1   # Bitwise XOR of x8 and x1, store result in x9

  # Terminate the program
  la x10, __exit
  jr x10

.section .data
.align 2

