.text
.globl main

main:
  # Initialize counters
  li t0, 0  # Counter for section 1
  li t1, 0  # Counter for section 2
  li t2, 0  # Counter for section 3

  # Section 1
  call_section_1:
    # Code for section 1
    # Increment counter
    addi t0, t0, 1

  # Section 2
  call_section_2:
    # Code for section 2
    # Increment counter
    addi t1, t1, 1

  # Section 3
  call_section_3:
    # Code for section 3
    # Increment counter
    addi t2, t2, 1

  # Exit the program
  la x1, __exit
  jr x1


