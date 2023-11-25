.text
.globl main

main:
  # Initialize registers
  li a0, 0
  li a1, 10

  # Loop with branch mispredictions
  loop_with_mispredictions:
    bnez a0, branch_taken     # Branch not taken
    nop                        # Delay slot instruction
    j exit_loop                # Jump to exit the loop

  branch_not_taken:
    # Continue execution when branch is not taken
    addi a0, a0, 1
    j check_loop_condition

  branch_taken:
    # Continue execution when branch is taken
    addi a0, a0, -1
    j check_loop_condition

  check_loop_condition:
    blt a0, a1, loop_with_mispredictions  # Back to the loop

  exit_loop:
    # Exit the program
    la x1, __exit
    jr x1

