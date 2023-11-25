.text
.globl main

main:
    # Initialize registers
    li a0, 5
    li a1, 3
    li a2, 7
    li a3, 2

    # Branch 1
    bge a0, a1, branch1_done
    add a4, a0, a1
    j end_parallel

branch1_done:
    sub a4, a0, a1

end_parallel:
    # Branch 2
    bge a2, a3, branch2_done
    mul a5, a2, a3
    j end_program

branch2_done:
    div a5, a2, a3

end_program:
    # Exit the program
    la x1, __exit
    jr x1


