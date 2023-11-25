.text
.globl main

main:
  # Initialize registers
  li a1, 10   # Initialize a counter for branch 1
  li a2, 20   # Initialize a counter for branch 2
  li a3, 30   # Initialize a counter for branch 3
  li a4, 0    # Initialize a sum for branch 4

  # Branch 1
  loop_branch1:
    addi a1, a1, -1    # Decrement the counter for branch 1
    bnez a1, loop_branch1  # Branch if not equal to zero
    j common_exit      # Jump to the common exit point

  # Branch 2
  loop_branch2:
    addi a2, a2, -1    # Decrement the counter for branch 2
    bnez a2, loop_branch2  # Branch if not equal to zero
    j common_exit      # Jump to the common exit point

  # Branch 3
  loop_branch3:
    addi a3, a3, -1    # Decrement the counter for branch 3
    bnez a3, loop_branch3  # Branch if not equal to zero
    j common_exit      # Jump to the common exit point

  # Branch 4
  loop_branch4:
    add a4, a4, a3     # Perform an independent operation in branch 4
    addi a3, a3, -1    # Decrement the counter for branch 4
    bnez a3, loop_branch4  # Branch if not equal to zero

  common_exit:
    # Common exit point for all branches
    la x1, __exit
    jr x1


