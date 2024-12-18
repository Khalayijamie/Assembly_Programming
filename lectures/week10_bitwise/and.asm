section .text
    global _start

_start:
    mov eax, 0b10101010        ; Load binary value into eax --- 170
    mov ebx, 0b11001100        ; Load mask value into ebx ----  204
    and eax, ebx               ; Perform bitwise AND (eax = eax & ebx)
                                ; Result: eax = 0b10001000 -----136

    ; Exit program
    mov eax, 1                ; syscall number for exit
    xor ebx, ebx               ; status 0
    int 0x80
