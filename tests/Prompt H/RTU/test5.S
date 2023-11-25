.text
.globl main

main:
  # Divide by zero instruction causing an exception
  li a1, 10
  li a2, 0
  div a3, a1, a2  # This will cause a divide-by-zero exception

  # This instruction should still be executed if exception handling is correct
  li a4, 5
  add a5, a3, a4  # This instruction should not be affected by the exception

  # Load from an invalid memory address causing an exception
  li a6, 0x1000
  lw a7, 0(a6)  # This will cause a load access exception

  # This instruction should still be executed if exception handling is correct
  li a1, 3
  sub a2, a7, a1  # This instruction should not be affected by the exception

  # Exit the program
  la x1, __exit
  jr x1

