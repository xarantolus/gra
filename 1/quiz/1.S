.intel_syntax noprefix

.global main
main:
    // add rax, 0x80000000
    add rax, 0xffffffff80000000
    # mov rax, edx
    # mov rax, 0x123456789
    # mov dil, dl

    ret
