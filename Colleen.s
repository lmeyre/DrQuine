;Goodbye World!
section .data
    msg db "%2$cGoodbye World!%1$csection .data%1$c    msg db %3$c%4$s%3$c%1$csection .text%1$c    global main%1$c    global bunny%1$c    extern printf%1$c%1$cbunny:%1$c    mov r8, msg%1$c    mov rcx, 34%1$c    mov rdx, 59%1$c    mov rsi, 10%1$c    mov rdi, msg%1$c    xor rax, rax%1$c    call printf%1$c    leave%1$c    ret%1$c%1$cmain:%1$c    %2$cHop%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 0x10%1$c    call bunny%1$c    mov eax, 0x1%1$c    mov ebx, 0%1$c    int 0x80"
section .text
    global main
    global bunny
    extern printf

bunny:
    mov r8, msg
    mov rcx, 34
    mov rdx, 59
    mov rsi, 10
    mov rdi, msg
    xor rax, rax
    call printf
    leave
    ret

main:
    ;Hop
    push rbp
    mov rbp, rsp
    sub rsp, 0x10
    call bunny
    mov eax, 0x1
    mov ebx, 0
    int 0x80