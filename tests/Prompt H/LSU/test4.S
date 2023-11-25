.text
.globl main

main:
  # Byte load and store
  lb a1, 0(x2)
  sb a1, 1(x2)

  # Half-word load and store
  lh a2, 2(x2)
  sh a2, 4(x2)

  # Word load and store
  lw a3, 8(x2)
  sw a3, 12(x2)

  # Double-word load and store
  ld a4, 16(x2)
  sd a4, 24(x2)

  # Four-word load and store
  lw a5, 32(x2)
  sw a5, 36(x2)
  lw a6, 40(x2)
  sw a6, 44(x2)
  lw a7, 48(x2)
  sw a7, 52(x2)

  # Exit the program
  la x1, __exit
  jr x1

