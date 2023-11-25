.text
.globl main

main:
  # Branch 1
  li a1, 10
  li a2, 5
  mul a3, a1, a2  # Independent instruction 1

  # Branch 2
  li a4, 7
  li a5, 3
  add a6, a4, a5  # Independent instruction 2

  # Branch 3
  li x1, 15
  li x2, 2
  li x3, 0       # Set a9 to 0
  sub x3, x1, x2  # Independent instruction 3

  # Exit the program
  la x1, __exit
  jr x1

