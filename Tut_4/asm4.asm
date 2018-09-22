;Goal of this Asm Program is to create a Local Variable
;To Create Local Varibles 
; sub esp, 8 ;Gives us 8 bytes to work with
; mov DWORD[ebp -4], 10 ;MOVES 10 into our first local variable 
; push DWORD[ebp-4] ;Pushes our first local variable on to the stack 

section .bss ;This is for our  uninitlized code


section .data ; This is for our inilize code such as user input

msg: db "%c",10,0 ;This msg should allow us to print the char

section .text ;This is for our assembly code 

extern printf ;GOing to ask our program for the c++ cout function 

global main ;Makes our main function or label global a label is a pointer
main:

;Have to create our stack frame to access local var
push ebp 
mov ebp, esp ;gives us a reliable reference point 

;Going to allocate one byte of memory to have a local var of one byte
sub esp, 4 ;this gives us 1 byte for a local var of the stack 
mov DWORD[ebp-4], "J" ; This should move the letter J into our local variable 

push DWORD[ebp-4] ;This shoild push the context of our local variable 
push msg ;Pushes our msg on to the stack 

call printf ; This should print the letter J if everything works 

;Going to destroy our stack frame 

mov esp, ebp ;Moves the context the original stack pointer back to it self 
pop ebp ;This give our base pointer back its OG CONTEXT 

ret ;Return 

















