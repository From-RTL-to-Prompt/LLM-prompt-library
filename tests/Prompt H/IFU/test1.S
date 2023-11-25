.text
.globl main

main:
  # Initialize registers and data
  li a0, 1000         # Set the loop count
  li a1, 0              # Initialize a counter
  li a2, 0              # Initialize a sum

  # Loop to create a large instruction count
  loop_start:
    add a2, a2, a1       # Perform an arithmetic operation
    lw a3, 0(a2)         # Load data from memory
    sw a3, 0(a2)         # Store data back to memory
    beq a1, a0, loop_end # Exit loop when the counter reaches the specified count
    addi a1, a1, 1        # Increment the counter
    j loop_start

  loop_end:
    # End the program
    la x1, __exit
    jr x1


