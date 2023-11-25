.text
.globl main

main:
    # Initialize registers with values
    li a0, 100     # Base address
    li a1, 4       # Offset for the first store
    li a2, 8       # Offset for the second store

    # Store values into memory
    sd a0, 0(a1)   # Store a0 at address a0 + 4
    sd a2, 0(a0)   # Store a2 at address a0

    # Load values from memory
    ld t0, 0(a0)   # Load from address a0 into t0
    ld t1, 0(a1)   # Load from address a0 + 4 into t1

    # Continue with other operations or branches as needed
    j __exit


