.data
    # Single-precision (32-bit) floating-point numbers
    single_precision_a: .float 3.0
    single_precision_b: .float 2.0
    single_precision_c: .float 1.5

    # Double-precision (64-bit) floating-point numbers
    double_precision_a: .double 3.0
    double_precision_b: .double 2.0
    double_precision_c: .double 1.5

.text
.globl main

main:
    # Single-precision (32-bit) FMA operation
    lui a0, %hi(single_precision_a)  # Load upper immediate of the address of a
    flw f0, %lo(single_precision_a)(a0)  # Load single-precision number a
    lui a1, %hi(single_precision_b)  # Load upper immediate of the address of b
    flw f1, %lo(single_precision_b)(a1)  # Load single-precision number b
    lui a2, %hi(single_precision_c)  # Load upper immediate of the address of c
    flw f2, %lo(single_precision_c)(a2)  # Load single-precision number c
    fmadd.s f3, f0, f1, f2             # Single-precision FMA operation (f3 = f0*f1 + f2)

    # Double-precision (64-bit) FMA operation
    lui a3, %hi(double_precision_a)  # Load upper immediate of the address of a
    fld f4, %lo(double_precision_a)(a3)  # Load double-precision number a
    lui a4, %hi(double_precision_b)  # Load upper immediate of the address of b
    fld f5, %lo(double_precision_b)(a4)  # Load double-precision number b
    lui a5, %hi(double_precision_c)  # Load upper immediate of the address of c
    fld f6, %lo(double_precision_c)(a5)  # Load double-precision number c
    fmadd.d f7, f4, f5, f6             # Double-precision FMA operation (f7 = f4*f5 + f6)

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:

    # Exit the program
    la x1, __exit
    jr x1


