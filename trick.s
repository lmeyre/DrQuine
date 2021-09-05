;Goodbye World!
section .data
    msg db "aaa", 0xA
section .text
    global main
    global bunny
    extern printf

bunny:
    ; mov r8, 59
    ; mov rcx, 34
    ; lea rdx, [rel msg]
    ; mov rsi, 10
    ; lea rdi, [rel msg]
    ; xor rax, rax
    ; ;mov ebx, msg
    ; call printf
    mov 0x3, r8d
    mov 0x22, ecx
    lea 0x2eee(rip), rdx
    mov 0xa, esi
    lea 0x2eee(rip), rdi
    xor rax, rax
    call printf
    leaveq
    retq

main:
    ;Hop   
    ;A comprendre, intro de nico
    push rbp
    mov rbp, rsp
    sub 0x10, rsp
    ;movl 0x0, -0x4(rbp)
    call bunny
    xor eax, eax
    add 0x10, rsp
    pop rbp
    retq
    
    ; xor rax, rax
    ; leave
    ; ret
    ; autre maniere de sortir ? pas comme nico a tester, deja on fait comme nico pour apprendre
    ; mov eax, 0x1
    ; mov ebx, 0
    ; int 0x80
