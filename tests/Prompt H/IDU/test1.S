.text
.globl main

main:
    # Initialize some registers with values
    li a0, 5          # a0 = 5
    li a1, 3          # a1 = 3

    # True dependency chain
    add a2, a0, a1    # a2 = a0 + a1
    sub a3, a2, a0    # a3 = a2 - a0

    # Anti-dependency chain
    mul a4, a3, a1    # a4 = a3 * a1
    div a5, a0, a4    # a5 = a0 / a4

    # Continue with other operations or branches as needed
    j __exit



