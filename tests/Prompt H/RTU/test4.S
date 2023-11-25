.text
.globl main

main:
  # Dependency Chain 1
  li a1, 10
  li a2, 5
  mul a3, a1, a2  # Instruction 1

  # Dependency Chain 2
  li a4, 7
  li a5, 3
  add a6, a4, a5  # Instruction 2

  # Dependency Chain 3
  li a7, 15
  li a1, 2
  sub a2, a7, a1  # Instruction 3

  # Continue the dependency chains
  mul a3, a3, a6  # Instruction 4
  add a6, a6, a2  # Instruction 5
  sub a2, a2, a3  # Instruction 6

  # Introduce more instructions to fill up the reorder buffer
  # ...

  # Exit the program
  la x1, __exit
  jr x1

