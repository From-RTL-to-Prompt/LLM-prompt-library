.text
.globl main

main:
  # Initialize registers
  li a0, 0
  li a1, 100   # Number of iterations

  # Loop to simulate instruction cache behavior
  loop_cache_utilization:
    # Use instruction cache-predictable patterns
    addi a2, a0, 1
    addi a3, a0, 2
    addi a4, a0, 3
    addi a5, a0, 4

    # Continue execution
    addi a0, a0, 1
    blt a0, a1, loop_cache_utilization

  # Exit the program
  la x1, __exit
  jr x1


