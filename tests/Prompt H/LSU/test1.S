.text
.globl main

main:
  # Consecutive scalar load and store instructions
  lw a0, 0(x1)   # Load 32 bits from address stored in x1 into a0
  lw a1, 4(x1)   # Load the next 32 bits
  sw a0, 8(x1)   # Store the loaded value to the address 8(x1)
  sw a1, 12(x1)  # Store the next loaded value to the address 12(x1)

  # Exit the program
  la x1, __exit
  jr x1



