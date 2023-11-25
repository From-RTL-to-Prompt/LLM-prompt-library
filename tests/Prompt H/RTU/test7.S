.text
.globl main

main:
  # Parallel recovery of results
  li a1, 5
  li a2, 3
  li a3, 2

  # Instruction 1
  mul a4, a1, a2  # a4 = a1 * a2

  # Instruction 2
  add a5, a2, a3  # a5 = a2 + a3

  # Instruction 3
  sub a6, a4, a3  # a6 = a4 - a3

  # Parallel results recovery
  add a7, a4, a5  # a7 = a4 + a5
  mul a1, a6, a3  # a8 = a6 * a3

  # Exit the program
  la x1, __exit
  jr x1

