.data
    divisor: .float 0.0
    operand: .float 2.5

.text
.globl main

main:
    # Load divisor and operand
    lui a0, %hi(divisor)
    flw f0, %lo(divisor)(a0)
    flw f1, %lo(operand)(a0)

    # Test division by zero
    fdiv.s f2, f1, f0

    # Test invalid operation (e.g., square root of a negative number)
    fsqrt.s f3, f1

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:
    # Exit the program
    la x1, __exit
    jr x1

