.text
.globl main

main:
  # Initialize registers
  li a0, 10
  li a1, 0

  # Attempt to divide by zero
  rem a2, a0, a1

  # If a remainder is zero, it indicates division by zero
  beqz a2, division_by_zero

  # If no exception occurred, continue with normal execution
  j continue_execution

# Exception handler for division by zero
division_by_zero:
  # Handle the exception, for example, print an error message
  # ...

continue_execution:
  # Continue with other instructions

  # Exit the program
  la x1, __exit
  jr x1

