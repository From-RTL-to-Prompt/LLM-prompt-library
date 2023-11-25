.text
.globl main

main:
  # Initialize registers with values
  li a0, 5       # a0 = 5
  li a1, 3       # a1 = 3
  li a2, 2       # a2 = 2

  # Dependency Chain
  add a3, a0, a1  # a3 = a0 + a1
  sub a4, a3, a2  # a4 = a3 - a2
  mul a5, a4, a2  # a5 = a4 * a2
  div a6, a5, a1  # a6 = a5 / a1

  # Continue with other instructions or branches as needed
  # ...

  # Exit the program
  la x1, __exit
  jr x1


