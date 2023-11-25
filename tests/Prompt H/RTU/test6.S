.text
.globl main

main:
  # Dependency chain 1
  li a1, 5
  li a2, 3
  mul a3, a1, a2  # a3 depends on a1 and a2

  # Dependency chain 2
  add a4, a3, a1  # a4 depends on a3 and a1
  sub a5, a4, a2  # a5 depends on a4 and a2

  # Dependency chain 3
  li a6, 2
  mul a7, a5, a6  # a7 depends on a5 and a6

  # Proper dependency handling
  add a1, a7, a3  # a1 depends on a7 and a3
  sub a2, a1, a2  # a2 depends on a1 and a2

  # Exit the program
  la x1, __exit
  jr x1

