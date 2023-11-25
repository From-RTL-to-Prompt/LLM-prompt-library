.data
    # Single-precision (32-bit) floating-point numbers
    single_precision_a: .float 2.5
    single_precision_b: .float -1.75

    # Double-precision (64-bit) floating-point numbers
    double_precision_a: .double 123456.789
    double_precision_b: .double -9876.543

.text
.globl main

main:
    # Single-precision (32-bit) register transfer
    lui a0, %hi(single_precision_a)  # Load upper immediate of the address of a
    flw f0, %lo(single_precision_a)(a0)  # Load single-precision number a
    fmv.x.w a1, f0                   # Transfer single-precision value from f0 to a1
    fmv.w.x f1, a1                   # Transfer single-precision value from a1 to f1

    # Single-precision (32-bit) sign injection
    flw f2, 0(a0)                     # Load single-precision number a
    flw f3, %lo(single_precision_b)(a0)  # Load single-precision number b
    fsgnj.s f4, f2, f3                # Sign injection (f4 = sign(a) * b)

    # Single-precision (32-bit) classification
    flw f5, 0(a0)                     # Load single-precision number a
    fclass.s a2, f5                   # Classification of single-precision number a

    # Double-precision (64-bit) register transfer
    lui a3, %hi(double_precision_a)  # Load upper immediate of the address of a
    fld f6, %lo(double_precision_a)(a3)  # Load double-precision number a
    fmv.x.d a4, f6                   # Transfer double-precision value from f6 to a4
    fmv.d.x f7, a4                   # Transfer double-precision value from a4 to f7

    # Double-precision (64-bit) sign injection
    fld f8, 0(a3)                     # Load double-precision number a
    fld f9, %lo(double_precision_b)(a3)  # Load double-precision number b
    fsgnj.d f10, f8, f9               # Sign injection (f10 = sign(a) * b)

    # Double-precision (64-bit) classification
    fld f11, 0(a3)                    # Load double-precision number a
    fclass.d a5, f11                  # Classification of double-precision number a

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:

    # Exit the program
    la x1, __exit
    jr x1


