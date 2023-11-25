.text
.globl main

main:
  # Initialize data
  li a1, 0      # Starting address
  li a2, 100    # Number of iterations

  # Sequential load with data stream hardware prefetch
  loop:
    lw a3, 0(a1)  # Load a word from the current address
    addi a1, a1, 4  # Move to the next address

    # Your code here that uses the loaded value a3

    addi a2, a2, -1
    bnez a2, loop  # Repeat until the specified number of iterations

  # Exit the program
  la x1, __exit
  jr x1

