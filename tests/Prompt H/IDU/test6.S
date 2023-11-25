.text
.globl main

main:
    # Initialize registers with values
    li a0, 10
    li a1, 0

    # Attempt to perform a division that may cause an exception
    divu a2, a0, a1

    # Continue with other operations or branches as needed
    j __exit


