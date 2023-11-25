.text
.globl main

main:
    # Initialize some registers with values
    li a0, 5          # a0 = 5
    li a1, 3          # a1 = 3
    li a2, 2          # a2 = 2

    # Independent instructions that can be executed out of order
    add a3, a0, a1    # a3 = a0 + a1
    mul a4, a2, a3    # a4 = a2 * a3
    sub a5, a4, a1    # a5 = a4 - a1
    div a6, a5, a2    # a6 = a5 / a2

    # Continue with other operations or branches as needed
    j __exit


