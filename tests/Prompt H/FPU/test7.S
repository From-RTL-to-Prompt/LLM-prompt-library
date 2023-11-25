.data
    array_size: .word 10000
    array:       .float 0.1, 0.2, 0.3   # Initialize the array with appropriate values

.text
.globl main

main:
    # Load array size
    lw a0, array_size

    # Load array address
    la a1, array

    # Loop to perform floating-point operations
    li t0, 0
loop:
    # Load array element
    flw f0, 0(a1)

    # Perform floating-point operation (e.g., addition)
    fadd.s f1, f1, f0

    # Move to the next array element
    addi a1, a1, 4

    # Increment loop counter
    addi t0, t0, 1

    # Check if the loop counter is less than the array size
    blt t0, a0, loop

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:
    # Exit the program
    la x1, __exit
    jr x1


