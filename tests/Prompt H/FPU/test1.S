.data
    # Half-precision (16-bit) floating-point numbers
    half_precision_a: .half 0x3C00   # 1.0
    half_precision_b: .half 0x4000   # 2.0

    # Single-precision (32-bit) floating-point numbers
    single_precision_a: .float 3.14
    single_precision_b: .float 1.57

    # Double-precision (64-bit) floating-point numbers
    double_precision_a: .double 2.71828
    double_precision_b: .double 1.41421

.text
.globl main

main:
    # Half-precision (16-bit) operations
    lhu a0, half_precision_a          # Load half-precision number a
    lhu a1, half_precision_b          # Load half-precision number b
    flw f0, 0(a0)                     # Convert half-precision to single-precision
    flw f1, 0(a1)                     # Convert half-precision to single-precision
    fadd.s f2, f0, f1                 # Single-precision addition
    fsub.s f3, f0, f1                 # Single-precision subtraction
    fmul.s f4, f0, f1                 # Single-precision multiplication
    fdiv.s f5, f0, f1                 # Single-precision division
    fsqrt.s f6, f0                    # Single-precision square root

    # Single-precision (32-bit) operations
    lw a0, single_precision_a         # Load integer representation of single-precision number a
    lw a1, single_precision_b         # Load integer representation of single-precision number b
    fcvt.s.l f0, a0                   # Convert integer to single-precision
    fcvt.s.l f1, a1                   # Convert integer to single-precision
    fadd.s f7, f0, f1                 # Single-precision addition
    fsub.s f8, f0, f1                 # Single-precision subtraction
    fmul.s f9, f0, f1                 # Single-precision multiplication
    fdiv.s f10, f0, f1                # Single-precision division
    fsqrt.s f11, f0                   # Single-precision square root

    # Double-precision (64-bit) operations
    ld a0, double_precision_a         # Load integer representation of double-precision number a
    ld a1, double_precision_b         # Load integer representation of double-precision number b
    fcvt.d.l f12, a0                  # Convert integer to double-precision
    fcvt.d.l f13, a1                  # Convert integer to double-precision
    fadd.d f14, f12, f13              # Double-precision addition
    fsub.d f15, f12, f13              # Double-precision subtraction
    fmul.d f16, f12, f13              # Double-precision multiplication
    fdiv.d f17, f12, f13              # Double-precision division
    fsqrt.d f18, f12                  # Double-precision square root

    # Exit the program
    la x1, __exit
    jr x1

