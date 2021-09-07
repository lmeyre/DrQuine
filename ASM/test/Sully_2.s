section .data
    msg db "section .data%2$c    msg db %3$c%1$s%3$c, 0%2$c    param db %3$cw%3$c, 0%2$c    target_code db %3$cSully_%%d.s%3$c, 0%2$c    obj_name db %3$cSully_%%d.o%3$c, 0%2$c    binary_name db %3$cSully_%%d%3$c, 0%2$c    nasm db %3$cnasm -f elf64 Sully_%%d.s%3$c, 0%2$c    compile db %3$cclang -o %%s %%s%3$c, 0%2$c    execute db %3$c./%%s%3$c, 0%2$c%%define index %4$d%2$csection .text%2$c    global main%2$c    extern sprintf%2$c    extern fopen%2$c    extern fclose%2$c    extern fprintf%2$c    extern system%2$c    extern snprintf%2$cmain:%2$c    push rbp%2$c    mov rbp, rsp%2$c    sub rsp, 0x250%2$c    mov rax, index%2$c    cmp rax, 0%2$c    jl exit_out%2$c    mov rax, index%2$c    cmp rax, 5%2$c    jg exit_out%2$c    mov rdx, index%2$c    lea rsi, [target_code]%2$c    lea rdi, [rsp]%2$c    xor rax, rax%2$c    call sprintf%2$c    lea rsi, [param]%2$c    lea rdi, [rsp]%2$c    call fopen%2$c    mov r13, rax%2$c    mov rax, index%2$c    sub rax, 0x1%2$c    mov r9, rax%2$c    mov r8, 34%2$c    mov rcx, 10%2$c    lea rdx, [msg]%2$c    lea rsi, [msg]%2$c    mov rdi, r13%2$c    call fprintf%2$c    mov rcx, index%2$c    lea rdx, [binary_name]%2$c    mov rsi, 40%2$c    lea rdi, [rsp+40]%2$c    xor rax, rax%2$c    call snprintf%2$c    mov rcx, index%2$c    lea rdx, [obj_name]%2$c    mov rsi, 40%2$c    lea rdi, [rsp+80]%2$c    xor rax, rax%2$c    call snprintf%2$c    mov rdi, r13%2$c    call fclose%2$c    mov rcx, index%2$c    lea rdx, [nasm]%2$c    mov rsi, 80%2$c    lea rdi, [rsp+120]%2$c    xor rax, rax%2$c    call snprintf%2$c    lea rdi, [rsp+120]%2$c    xor rax, rax%2$c    call system%2$c    lea r8, [rsp+80]%2$c    lea rcx, [rsp+40]%2$c    lea rdx, [compile]%2$c    mov rsi, 40%2$c    lea rdi, [rsp+200]%2$c    xor rax, rax%2$c    call snprintf%2$c    lea rdi, [rsp+200]%2$c    xor rax, rax%2$c    call system%2$c    lea rcx, [rsp+40]%2$c    lea rdx, [execute]%2$c    mov rsi, 20%2$c    lea rdi, [rsp+240]%2$c    xor rax, rax%2$c    call snprintf%2$c    lea rdi, [rsp+240]%2$c    xor rax, rax%2$c    call system%2$c    xor eax, eax%2$c    leave%2$c    ret%2$cexit_out:%2$c    xor eax, eax%2$c    leave%2$c    ret%2$c", 0
    param db "w", 0
    target_code db "Sully_%d.s", 0
    obj_name db "Sully_%d.o", 0
    binary_name db "Sully_%d", 0
    nasm db "nasm -f elf64 Sully_%d.s", 0
    compile db "clang -o %s %s", 0
    execute db "./%s", 0
%define index 1
section .text
    global main
    extern sprintf
    extern fopen
    extern fclose
    extern fprintf
    extern system
    extern snprintf
main:
    push rbp
    mov rbp, rsp
    sub rsp, 0x250
    mov rax, index
    cmp rax, 0
    jl exit_out
    mov rax, index
    cmp rax, 5
    jg exit_out
    mov rdx, index
    lea rsi, [target_code]
    lea rdi, [rsp]
    xor rax, rax
    call sprintf
    lea rsi, [param]
    lea rdi, [rsp]
    call fopen
    mov r13, rax
    mov rax, index
    sub rax, 0x1
    mov r9, rax
    mov r8, 34
    mov rcx, 10
    lea rdx, [msg]
    lea rsi, [msg]
    mov rdi, r13
    call fprintf
    mov rcx, index
    lea rdx, [binary_name]
    mov rsi, 40
    lea rdi, [rsp+40]
    xor rax, rax
    call snprintf
    mov rcx, index
    lea rdx, [obj_name]
    mov rsi, 40
    lea rdi, [rsp+80]
    xor rax, rax
    call snprintf
    mov rdi, r13
    call fclose
    mov rcx, index
    lea rdx, [nasm]
    mov rsi, 80
    lea rdi, [rsp+120]
    xor rax, rax
    call snprintf
    lea rdi, [rsp+120]
    xor rax, rax
    call system
    lea r8, [rsp+80]
    lea rcx, [rsp+40]
    lea rdx, [compile]
    mov rsi, 40
    lea rdi, [rsp+200]
    xor rax, rax
    call snprintf
    lea rdi, [rsp+200]
    xor rax, rax
    call system
    lea rcx, [rsp+40]
    lea rdx, [execute]
    mov rsi, 20
    lea rdi, [rsp+240]
    xor rax, rax
    call snprintf
    lea rdi, [rsp+240]
    xor rax, rax
    call system
    xor eax, eax
    leave
    ret
exit_out:
    xor eax, eax
    leave
    ret
