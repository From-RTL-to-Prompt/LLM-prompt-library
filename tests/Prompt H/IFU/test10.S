.text
.globl main

# Function prototypes
.globl func1
.globl func2

main:
  # Function call
  call func1

  # Continue with other instructions

  # Another function call
  call func2

  # Continue with other instructions

  # Exit the program
  la x1, __exit
  jr x1

# Function 1
func1:
  # Function 1 instructions
  # ...

  ret

# Function 2
func2:
  # Function 2 instructions
  # ...

  ret


