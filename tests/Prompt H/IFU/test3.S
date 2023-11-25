.text
.globl main

main:
  # Initialize registers
  li a1, 1    # Initialize a counter
  li a2, 10   # Set a limit for the loop

  loop_direct_branch:
    addi a1, a1, 1      # Increment the counter
    blt a1, a2, loop_direct_branch  # Branch to the loop if a1 < a2
    j indirect_branch    # Jump to the indirect branch

  indirect_branch:
    li a3, 2    # Set a value for the indirect branch
    beq a3, x0, branch_false    # Branch to branch_false if a3 == 0
    j branch_true      # Jump to branch_true

  branch_true:
    # Code to be executed if the indirect branch is true
    la x1, __exit
    jr x1

  branch_false:
    # Code to be executed if the indirect branch is false
    la x1, __exit
    jr x1


