.data
    # Single-precision (32-bit) floating-point numbers
    single_precision_a: .float 9.0
    single_precision_b: .float 3.0

    # Double-precision (64-bit) floating-point numbers
    double_precision_a: .double 25.0
    double_precision_b: .double 4.0

.text
.globl main

main:
    # Single-precision (32-bit) division
    lui a0, %hi(single_precision_a)  # Load upper immediate of the address of a
    flw f0, %lo(single_precision_a)(a0)  # Load single-precision number a
    lui a1, %hi(single_precision_b)  # Load upper immediate of the address of b
    flw f1, %lo(single_precision_b)(a1)  # Load single-precision number b
    fdiv.s f2, f0, f1                 # Single-precision division (f2 = f0 / f1)

    # Single-precision (32-bit) square root
    fsqrt.s f3, f0                    # Single-precision square root (f3 = sqrt(f0))

    # Double-precision (64-bit) division
    lui a2, %hi(double_precision_a)  # Load upper immediate of the address of a
    fld f4, %lo(double_precision_a)(a2)  # Load double-precision number a
    lui a3, %hi(double_precision_b)  # Load upper immediate of the address of b
    fld f5, %lo(double_precision_b)(a3)  # Load double-precision number b
    fdiv.d f6, f4, f5                 # Double-precision division (f6 = f4 / f5)

    # Double-precision (64-bit) square root
    fsqrt.d f7, f4                    # Double-precision square root (f7 = sqrt(f4))

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:

    # Exit the program
    la x1, __exit
    jr x1



