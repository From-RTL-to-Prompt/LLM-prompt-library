.text
.globl main

main:
    # Initialize registers with values
    li a0, 5
    li a1, 3
    li a2, 2

    # Perform operations that involve register renaming
    add a3, a0, a1     # a3 = a0 + a1
    mul a4, a2, a3     # a4 = a2 * a3

    # Use the same architectural register in multiple instructions
    add a0, a4, a1     # a0 = a4 + a1

    # Continue with other operations or branches as needed
    j __exit


