.text
.globl main

main:
    li a0, 100       # Initial value for computation
    li a1, 1000      # Number of iterations

    # Measure start time
    rdtime t0

    loop_start:
        # Perform a simple computation
        add a0, a0, a0
        sub a0, a0, a0

        # Decrease the iteration count
        addi a1, a1, -1
        bnez a1, loop_start

    # Measure end time
    rdtime t1

    # Calculate elapsed cycles
    sub a0, t1, t0

    # Continue with other operations or branches as needed
    j __exit


