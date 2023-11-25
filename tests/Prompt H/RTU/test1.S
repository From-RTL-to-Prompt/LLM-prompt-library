.text
.globl main

main:
  # Independent instructions
  add a1, x0, x2     # a1 = 0 + x2
  sub a3, x3, x4     # a3 = x3 - x4

  # Dependent instructions
  mul a5, a1, a3     # a5 = a1 * a3
  add a6, a5, x6     # a6 = a5 + x6
  sub a7, a6, x7     # a7 = a6 - x7

  # Exit the program
  la x1, __exit
  jr x1

