.data
    # Single-precision (32-bit) floating-point numbers
    single_precision_a: .float 3.14
    single_precision_b: .float 1.57

    # Double-precision (64-bit) floating-point numbers
    double_precision_a: .double 2.71828
    double_precision_b: .double 1.41421

.text
.globl main

main:
    # Single-precision (32-bit) operations
    lui a0, %hi(single_precision_a)  # Load upper immediate of the address of a
    flw f0, %lo(single_precision_a)(a0)  # Load single-precision number a
    lui a1, %hi(single_precision_b)  # Load upper immediate of the address of b
    flw f1, %lo(single_precision_b)(a1)  # Load single-precision number b
    feq.s a2, f0, f1                   # Single-precision equal comparison
    flt.s a3, f0, f1                   # Single-precision less than comparison

    # Single-precision (32-bit) conversion to double-precision
    fcvt.d.s f6, f0                   # Convert single-precision to double-precision
    fcvt.d.s f7, f1                   # Convert single-precision to double-precision

    # Continue with other operations or branches as needed
    j continue_execution

equal_branch:
    # Handle equal condition for single-precision
    j continue_execution

less_than_branch:
    # Handle less than condition for single-precision
    j continue_execution

continue_execution:

    # Double-precision (64-bit) operations
    lui a4, %hi(double_precision_a)  # Load upper immediate of the address of a
    fld f8, %lo(double_precision_a)(a4)  # Load double-precision number a
    lui a5, %hi(double_precision_b)  # Load upper immediate of the address of b
    fld f9, %lo(double_precision_b)(a5)  # Load double-precision number b
    feq.d a6, f8, f9                   # Double-precision equal comparison
    flt.d a7, f8, f9                   # Double-precision less than comparison

    # Continue with other operations or branches as needed
    j continue_execution_d

equal_branch_d:
    # Handle equal condition for double-precision
    j continue_execution_d

less_than_branch_d:
    # Handle less than condition for double-precision
    j continue_execution_d

continue_execution_d:

    # Exit the program
    la x1, __exit
    jr x1



