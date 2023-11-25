.text
.globl main

main:
  # Byte load with symbol bit
  lb a1, 0(x2)

  # Half-word load with zero extension
  lh a2, 2(x2)

  # Exit the program
  la x1, __exit
  jr x1

