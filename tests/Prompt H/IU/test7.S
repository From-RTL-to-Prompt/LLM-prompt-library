.text
.globl main

main:
    # Initialize loop counter
    li a0, 0

loop_start:
    # Perform integer arithmetic operations (you can modify this part based on your needs)
    li a1, 2            # Load immediate value 2
    mul a1, a0, a1      # Multiply loop counter by 2
    addi a2, a1, 5      # Add 5 to the result
    sub a3, a2, a1      # Subtract a1 from the result

    # Increment loop counter
    addi a0, a0, 1

    # Check loop condition (you can modify this part based on your loop size)
    li a4, 10           # Set the loop limit
    blt a0, a4, loop_start

    # Exit the program
    la x1, __exit
    jr x1


