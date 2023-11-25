.text
.globl main

main:
  # Initialize registers
  li a0, 5
  li a1, 3
  li a2, 0

  # Compare a0 and a1
  bge a0, a1, greater_than_or_equal

  # Branch not taken, a0 < a1
  li a2, 1
  j continue_execution

greater_than_or_equal:
  # Branch taken, a0 >= a1
  li a2, 2

continue_execution:
  # Continue with other instructions

  # Exit the program
  la x1, __exit
  jr x1

