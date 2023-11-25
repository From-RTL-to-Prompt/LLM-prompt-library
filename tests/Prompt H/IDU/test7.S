.text
.globl main

main:
    # Initialize registers with values
    li a0, 10
    li a1, 5

    # Compare values and perform conditional branches
    bge a0, a1, greater_than_branch
    # This branch is usually taken

    # Code for branch not taken
    li a2, 1
    j continue_execution

greater_than_branch:
    # Code for branch taken
    li a2, 2

continue_execution:
    # Continue with other operations or branches as needed
    j __exit



