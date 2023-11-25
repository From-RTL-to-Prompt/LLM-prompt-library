.data
    # Single-precision (32-bit) floating-point numbers
    small_single: .float 1.0e-38
    large_single: .float 3.4e38

    # Double-precision (64-bit) floating-point numbers
    small_double: .double 5.0e-324
    large_double: .double 1.7e308

.text
.globl main

main:
    # Test single-precision (32-bit) corner cases
    lui x1, %hi(small_single)
    flw f0, %lo(small_single)(x1)  # Load very small single-precision number
    lui x2, %hi(large_single)
    flw f1, %lo(large_single)(x2)  # Load very large single-precision number

    # Perform operations involving small and large single-precision numbers

    # Test double-precision (64-bit) corner cases
    lui x3, %hi(small_double)
    fld f2, %lo(small_double)(x3)  # Load very small double-precision number
    lui x4, %hi(large_double)
    fld f3, %lo(large_double)(x4)  # Load very large double-precision number

    # Perform operations involving small and large double-precision numbers

    # Continue with other operations or branches as needed
    j continue_execution

continue_execution:

    # Exit the program
    la x5, __exit
    jr x5



