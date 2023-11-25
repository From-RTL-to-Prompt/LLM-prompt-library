.text
.globl main

main:
  # Integer instructions
  li x1, 5         # Load immediate value 5 into register x1
  li x2, 10        # Load immediate value 10 into register x2
  add x3, x1, x2   # Add values in x1 and x2 and store in x3

  # Conditional branch
  bnez x3, label1   # Branch to label1 if x3 is not zero

  # Code executed if x3 is zero
  li x4, 0
  j end_program

label1:
  # Code executed if x3 is not zero
  li x4, 1

end_program:
  # Terminate the program
  la x5, __exit
  jr x5

.section .data
.align 2

