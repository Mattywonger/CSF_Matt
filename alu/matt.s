.section .rodata
sFmt: .string "%08x\n"

.section .text

    .globl main
main:
    subq $8,%rsp

    movq $sFmt, %rdi
    movl $0xFFFF0000, %esi
    sall $1, %esi
    call printf

    addq $8, %rsp
    ret 

    