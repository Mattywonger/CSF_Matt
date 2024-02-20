.section .rodata

weightprompt: .string "Enter Weight"


.section .text
    .globl main

main:

subq $8, %rsp

movl $0, %eax
movq $weightprompt, %rdi
call printf
mov $0, %rsi
call scanf

mov %rsi, %rdi
call printf


addq $8, %rsp
ret
