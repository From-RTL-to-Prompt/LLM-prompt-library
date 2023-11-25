.text
.globl main

main:
    # Initialize registers with values
    li a0, 10
    li a1, 5
    li a2, 0

    # Perform a conditional branch with long-latency instructions
    bnez a0, branch_taken
    mul a3, a1, a2     # Long-latency instruction

branch_taken:
    # Continue execution with short-latency instructions
    add a4, a1, a2     # Short-latency instruction

    # Continue with other operations or branches as needed
    j __exit


