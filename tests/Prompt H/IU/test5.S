.text
.globl main

main:
    # Scenario 1: Division by zero
    li a0, 10
    li a1, 0

    # Handle division by zero error
    bnez a1, no_divide_by_zero
    # Division by zero error handling code goes here
    j exit_program

no_divide_by_zero:
    divu a2, a0, a1  # Attempt division by zero

    # Scenario 2: Overflow condition
    li a3, 2147483647  # Maximum 32-bit signed integer value
    li a4, 2

    # Handle overflow error
    bge a3, a4, no_overflow
    # Overflow error handling code goes here
    j exit_program

no_overflow:
    add a5, a3, a4  # Attempt to cause overflow

exit_program:
    # Exit the program
    la x1, __exit
    jr x1


