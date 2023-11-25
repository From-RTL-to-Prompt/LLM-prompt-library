.text
.globl main

main:
    # Initialize variables for integer division
    li a0, 1234567890  # Example dividend
    li a1, 1234        # Example divisor

    # Perform integer division
    div a2, a0, a1  # a2 = a0 / a1 (quotient)

    # Display result
    # You can add your display logic here, such as printing the quotient to the console

    # Reset temporary register
    li a2, 0

    # Another scenario with different operands
    li a3, 987654321  # Another example dividend
    li a4, 456789     # Another example divisor

    # Perform integer division
    div a2, a3, a4  # a2 = a3 / a4 (quotient)

    # Display result
    # You can add your display logic here, such as printing the quotient to the console

    # Exit the program
    la x1, __exit
    jr x1


