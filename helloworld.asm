; This is a simple assembly program to print "Hello World!".

secion .text
    global _start ; for linker(ld)

_start:           ; starting point
    mov eax, 4    ; sys_write
    mov ebx, 1    ; file descriptor
    mov ecx, msg  ; message
    mov edx, len  ; length of message
    int 0x80      ; sys_call, kernel

    mov eax, 1    ; sys_exit
    mov ebx, 0    ; return value
    int 0x80      ; kernel

section .data
    msg db "Hello World!", 0x0a  ; message to print, 0x0a means '\n'
    len equ $ - msg              ; length of message in len variable