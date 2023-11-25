.text
.globl main

main:
  # Pipelined store instructions
  sw a1, 0(x2)
  sw a2, 4(x2)
  sw a3, 8(x2)
  sw a4, 12(x2)

  # Load values into temporary registers
  lw a5, 16(x2)
  lw a6, 20(x2)
  lw a7, 24(x2)
  #lw a8, 28(x2)

  # Use the loaded values
  # ...

  # Exit the program
  la x1, __exit
  jr x1

