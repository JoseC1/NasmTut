;goal for this program is to create a local variable and print it 


section .data ;For initlized varaiblae

msg: db "THE CONTEXT OF UR FIRST LOCAL VARIABLE ARE %d",10,10,0 

section .bss ;uninilized data


section .text ; for assemvly code

extern printf

global main
main:

;creating stack frame 
push ebp 
mov ebp, esp ; moving the context of esp into our base pointer 

sub esp,4 ;Gathering 4 bytes of stack memory to create one integer local var

mov DWORD[ebp -4],19h

push DWORD[ebp-4] ;pushing the context of our local variable onto the stack
push msg ;pushing our msg so that our printf function has the %d 
call printf 








;Destroying stack frame 
mov esp, ebp ;moving back the context of the stack pointer back to its origins 
pop ebp ;poping back our ebp base pointer back to its origins 

ret ;returning 
