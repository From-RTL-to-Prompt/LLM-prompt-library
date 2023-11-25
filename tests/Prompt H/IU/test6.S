.text
.globl main

# Function to generate a random number between 1 and 10
randomize:
    li a0, 10             # Maximum value (exclusive)
    li a1, 1              # Minimum value
    slli a2, a0, 1        # Bitmask to get random bits
    li a3, 3              # Shift amount for more randomness
    lw a4, 0(a2)          # Load random bits
    srl a4, a4, a3        # Shift right for randomness
    addi a4, a4, 1        # Ensure the value is at least 1
    add a5, a4, a1        # Add minimum value
    ret

main:
    # Initialize registers
    li a6, 100            # Number of random test cases

random_test_loop:
    # Generate random operands
    jal a1, randomize     # Random operand 1
    jal a2, randomize     # Random operand 2

    # True Dependency Chain
    mul x3, a1, a2        # x3 = a1 * a2
    add a4, x3, a6        # a4 = x3 + a6
    sub a7, a4, a1        # a7 = a4 - a1

    # Anti-Dependency Chain
    add x8, a7, x0        # x8 = a7 + 0 (no operation)
    mul x9, x8, a2        # x9 = x8 * a2

    # Continue with other operations or branches as needed

    # Decrement the loop counter
    addi a6, a6, -1
    bnez a6, random_test_loop

    # Exit the program
    la x1, __exit
    jr x1


