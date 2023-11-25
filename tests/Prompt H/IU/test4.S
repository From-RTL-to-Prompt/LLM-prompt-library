.text
.globl main

main:
    # Test scenario 1: Unconditional branch
    j predictable_branch

    # This code should not be executed
    addi a0, x0, 1
    addi a1, x0, 2

predictable_branch:
    # Test scenario 2: Conditional branch (predictable)
    li a2, 10
    li a3, 5

    bge a2, a3, predictable_end

    # This code should not be executed
    addi a0, x0, 3
    addi a1, x0, 4

predictable_end:
    # Test scenario 3: Conditional branch (unpredictable)
    li a4, 8
    li a5, 12

    blt a4, a5, unpredictable_end

    # This code should not be executed
    addi a0, x0, 5
    addi a1, x0, 6

unpredictable_end:
    # Exit the program
    la x1, __exit
    jr x1


