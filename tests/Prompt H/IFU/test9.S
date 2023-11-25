.text
.globl main

main:
  li a0, 10
  beqz a0, branch_a   # Branch to label branch_a if a0 is zero

  # Code block for when a0 is not zero
  li a1, 5
  bge a0, a1, branch_b  # Branch to label branch_b if a0 is greater than or equal to a1

  # Code block for when a0 is less than 5
  li a2, 2
  addi a3, a0, 3
  mul a4, a2, a3
  j continue_execution   # Jump to continue_execution

branch_a:
  # Code block for when a0 is zero
  li a5, 7
  addi a6, a5, 2
  j continue_execution   # Jump to continue_execution

branch_b:
  # Code block for when a0 is greater than or equal to 5
  li a7, 1
  addi a6, a5, 2
  j continue_execution   # Jump to continue_execution

continue_execution:
  # Continue with other instructions or branches as needed
  # ...

  # Exit the program
  la x1, __exit
  jr x1


