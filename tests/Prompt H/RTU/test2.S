.text
.globl main

main:
  # Division with a valid result
  li a1, 10
  li a2, 2
  div a3, a1, a2  # a3 = a1 / a2

  # Divide by zero (exception)
  li a4, 0
  div a5, a1, a4  # This instruction should cause a divide-by-zero exception

  # Subsequent instructions (should not be affected by the exception)
  add a6, a1, a2
  sub a7, a6, a3

  # Exit the program
  la x1, __exit
  jr x1

