//Write a program which contains a procedure named ThreeProd that displays the product of three numeric parameters passed through a stack.//
;Write a program which contains a procedure named ThreeProd that displays the
;product of three numeric parameters passed through a stack.

INCLUDE Irvine32.inc

.data
x DWORD 2
y DWORD 2
z DWORD 2
msg BYTE "The product of three numeric variables is ",0

.code
main PROC
    push z
    push y
    push x
    call ThreeProd
    mov edx, OFFSET msg
    call WriteString
    call WriteInt
    call crlf
    exit
main ENDP

ThreeProd PROC
     enter 0,0
     mov eax, [ebp+8]
     imul eax, [ebp+12]
     imul eax, [ebp+16]
     leave
     ret
ThreeProd ENDP

END main

