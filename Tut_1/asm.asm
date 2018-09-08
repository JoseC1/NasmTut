section .data ;Where we intilize our data 

msg: db "Hello World",10,0 

;Creating a Label the 10 stands for newline and the 0 for NULL so 
;we know where we ended 

section .bss ; where we intilize our unitilized data


section .text ;where we actually code assembly 

extern printf ;This tells our program that this function is not in the program 
global main ; making our main label global to so iti can work outside of our assembly program
main: ;creating our actual label 

;Now lets create our stack frame 

push ebp ; we are pushing the context of our base pointer to the top of the stack

mov ebp, esp ;Moving the context of our stack pointer (esp) into our Base pointer (ebp)

push msg ; we are pushing our msg to the top of the stack 
call printf ; Now we are pushing the return address onto the stack and transfering control to the procdure


; REMOVES STACK FRAME 
mov esp, ebp ;Now we are moving all the context of ebp(base pointer) into our stack pointer
; which honestly was were it started 


pop ebp ; now we are getting its original context back from the stack 
ret ; return control to that location 


