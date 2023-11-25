.text
.globl main

main:
  # ALU operations
  li x1, 5           # Load immediate value 5 into register x1
  li x2, 10          # Load immediate value 10 into register x2
  add x3, x1, x2     # ALU: Add values in x1 and x2 and store in x3
  sub x4, x3, x1     # ALU: Subtract x1 from x3 and store in x4
  and x5, x3, x4     # ALU: Bitwise AND of x3 and x4, store result in x5

  # MULT operations
  li x6, 16          # Load immediate value 16 into register x6
  mul x7, x6, x6     # MULT: 16*16 multiplication, store result in x7
  li x8, 32          # Load immediate value 32 into register x8
  mul x9, x7, x8     # MULT: 16*16 multiplication, store result in x9

  # DIV operations
  li x10, 64         # Load immediate value 64 into register x10
  divu x11, x9, x10  # DIV: Unsigned integer division, store result in x11
  remu x12, x9, x10  # DIV: Unsigned integer remainder, store result in x12

  # BJU branch
  beq x11, x12, equal_branch   # Branch to equal_branch if x11 is equal to x12
  li x13, 0                    # Load immediate value 0 into register x13
  j end_program

equal_branch:
  li x13, 1                    # Load immediate value 1 into register x13

end_program:
  # Terminate the program
  la x14, __exit
  jr x14

.section .data
.align 2

