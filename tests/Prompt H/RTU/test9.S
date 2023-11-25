.text
.globl main

main:
  # Randomized test cases
  li a1, 10
  li a2, 5
  li a3, 3

  # Random instruction 1
  mul a4, a1, a2  # a4 = a1 * a2

  # Random instruction 2
  add a5, a3, a4  # a5 = a3 + a4

  # Random instruction 3
  sub a6, a5, a2  # a6 = a5 - a2

  # Random instruction 4
  div a7, a6, a3  # a7 = a6 / a3

  # Random instruction 5
  and a1, a7, a4  # a8 = a7 & a4

  # Exit the program
  la x1, __exit
  jr x1

