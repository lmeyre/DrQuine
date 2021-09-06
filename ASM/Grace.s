;Carrot
section .text
    global main
    extern fprintf
    extern fopen
    extern fclose
%define STR ";Carrot%1$csection .text%1$c    global main%1$c    extern fprintf%1$c    extern fopen%1$c    extern fclose%1$c%%define STR %2$c%3$s%2$c%1$c%%define FOX %2$cWhere is the bunny ?%2$c%1$c%%macro MAIN 0%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 0x10%1$c    mov rsi, param%1$c    mov rdi, KID%1$c    call fopen%1$c    mov rbx, rax%1$c    mov r8, msg%1$c    mov rcx, 34%1$c    mov rdx, 10%1$c    mov rsi, msg%1$c    mov rdi, rax%1$c    xor rax, rax%1$c    call fprintf%1$c    mov rdi, rbx%1$c    call fclose%1$c    mov eax, 0x1%1$c    mov ebx, 0%1$c    int 0x80%1$c%%endmacro%1$csection .data%1$c    msg db STR, 0%1$c    KID db %2$cGrace_kid.s%2$c, 0%1$c    param db %2$cw%2$c, 0%1$cMAIN"
%define FOX "Where is the bunny ?"
%macro MAIN 0
main:
    push rbp
    mov rbp, rsp
    sub rsp, 0x10
    mov rsi, param
    mov rdi, KID
    call fopen
    mov rbx, rax
    mov r8, msg
    mov rcx, 34
    mov rdx, 10
    mov rsi, msg
    mov rdi, rax
    xor rax, rax
    call fprintf
    mov rdi, rbx
    call fclose
    mov eax, 0x1
    mov ebx, 0
    int 0x80
%endmacro
section .data
    msg db STR, 0
    KID db "Grace_kid.s", 0
    param db "w", 0
MAIN