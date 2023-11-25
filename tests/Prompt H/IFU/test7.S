.text
.globl main

main:
  # Initialize registers
  li a0, 0
  li a1, 100   # Number of iterations

  # Loop with variable code size
  loop_code_size_variability:
    # Branching with different code size
    bnez a0, branch_with_large_code
    addi a0, a0, 1
    j loop_code_size_variability

  # Large code block
  branch_with_large_code:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

  # Exit the program
  la x1, __exit
  jr x1


