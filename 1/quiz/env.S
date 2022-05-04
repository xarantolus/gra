.intel_syntax noprefix

# Run the following commands in order:
#  1. To assemble: as --64 env.S -o env.o
#  2. To create executable: gcc -nostdlib env.o -o env
#  3. To run the program (in this case with 4 arguments): ./env 1 2 3 4
#  4. To show the exit code of the program: echo $?

# This prints $?, which stands for the exit code of the previously run program (./env in our case)
# In our case, that exit code is the number we loaded from the stack
# (because we put it into rdi, which is the argument for the exit syscall)
# The image 6-argc-stack.png shows how argc is on the stack: the "Little Endian"
# part is how it's actually laid out in memory, while "Big Endian" just shows the
# hex number in the order we're used to reading

.global _start
_start:
    xor rdi, rdi

    # Lines starting with // and # are comments. You can remove the //
    # to see how the exit code changes when you load different values from the stack

    # To get the byte asked about in the quiz (results in 0):

    mov dil, byte ptr [rsp+7]


    # To get the lowest byte of the number, which is also the
    # Byte that stores the number of arguments
    # (at least if you have less than 256 arguments)
    # This should result in 5 when you pass four arguments
    # (the program path at argv[0] is also counted)

    // mov dil, byte ptr [rsp+0]



    # Syscall receives rdi as argument for the exit code,
    # this allows us to print the number using
    #     echo $?
    # after running this program (./env)
    mov rax, 0x3c
    syscall

    ret
