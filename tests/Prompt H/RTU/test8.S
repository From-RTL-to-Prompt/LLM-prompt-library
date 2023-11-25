.text
.globl main

main:
  # Efficient resource utilization
  li a1, 5
  li a2, 3
  li a3, 2

  # Instruction 1 (low resource requirement)
  add a4, a1, a2  # a4 = a1 + a2

  # Instruction 2 (medium resource requirement)
  mul a5, a2, a3  # a5 = a2 * a3

  # Instruction 3 (high resource requirement)
  sub a6, a4, a3  # a6 = a4 - a3

  # Instruction 4 (medium resource requirement)
  div a7, a5, a3  # a7 = a5 / a3

  # Exit the program
  la x1, __exit
  jr x1

