.text
.globl main

main:
  # Single-precision floating-point operations
  flw f1, 0(x0)      # Load a float from memory at address 0
  flw f2, 4(x0)      # Load another float from memory at address 4

  fadd.s f3, f1, f2  # Single-precision floating-point addition
  fsub.s f4, f1, f2  # Single-precision floating-point subtraction
  fmul.s f5, f3, f4  # Single-precision floating-point multiplication
  fdiv.s f6, f5, f3  # Single-precision floating-point division
  fsqrt.s f7, f6     # Single-precision floating-point square root

  # Double-precision floating-point operations
  fld f8, 8(x0)      # Load a double from memory at address 8
  fld f9, 16(x0)     # Load another double from memory at address 16

  fadd.d f10, f8, f9 # Double-precision floating-point addition
  fsub.d f11, f8, f9 # Double-precision floating-point subtraction
  fmul.d f12, f10, f11 # Double-precision floating-point multiplication
  fdiv.d f13, f12, f10 # Double-precision floating-point division
  fsqrt.d f14, f13   # Double-precision floating-point square root

  # Terminate the program
  la x15, __exit
  jr x15

.section .data
.align 2


