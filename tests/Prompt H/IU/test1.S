.text
.globl main

main:
    # Initialize variables
    li a0, 10   # Example integer value
    li a1, 5    # Another example integer value
    li a2, 0    # Temporary register for storing results

    # Integer addition
    add a2, a0, a1  # a2 = a0 + a1

    # Integer subtraction
    sub a2, a0, a1  # a2 = a0 - a1

    # Integer multiplication
    mul a2, a0, a1  # a2 = a0 * a1

    # Integer division
    div a2, a0, a1  # a2 = a0 / a1

    # Integer bitwise AND
    and a2, a0, a1  # a2 = a0 & a1

    # Integer bitwise OR
    or a2, a0, a1   # a2 = a0 | a1

    # Integer bitwise XOR
    xor a2, a0, a1  # a2 = a0 ^ a1

    # Integer left shift
    slli a2, a0, 2  # a2 = a0 << 2

    # Integer right shift
    srli a2, a0, 1  # a2 = a0 >> 1

    # Exit the program
    la x1, __exit
    jr x1


