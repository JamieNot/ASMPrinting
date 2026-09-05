bits 64
default rel

section .data
    msg: db "Bob!", 4

section .text
    global main
	    
    extern WriteConsoleA
    extern GetStdHandle
    extern ExitProcess
    
main:
    push rbp
    mov rbp, rsp

    mov rcx, -11                ; STD_OUTPUT_HANDLE
    call GetStdHandle

    push 0                      ; lpReserved
    mov r9, 0                   ; charsWritten
    mov r8, 4                   ; charsLength
    mov rdx, msg                ; message
    mov rcx, rax                ; STDHandle
    call WriteConsoleA

    xor rax, rax                ; Set rax 0
    mov rsp, rbp
    pop rbp

    mov rcx, 0                  ; Set exit code
    call ExitProcess            ; Terminate
    ret