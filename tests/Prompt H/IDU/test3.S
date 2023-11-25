.text
.globl main

main:
    # Initialize some registers with values
    li a0, 5          # a0 = 5
    li a1, 3          # a1 = 3
    li a2, 2          # a2 = 2

    # Data correlation example
    add a3, a0, a1    # a3 = a0 + a1
    mul a4, a2, a3    # a4 = a2 * a3
    beq a3, a4, equal_branch   # Branch if a3 is equal to a4

    # Instructions dependent on the branch outcome
    li a5, 10         # a5 = 10 (if the branch is not taken)
    j continue_execution

equal_branch:
    li a5, 20         # a5 = 20 (if the branch is taken)

continue_execution:
    # Continue with other operations or branches as needed
    j __exit

