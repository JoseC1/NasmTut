;Goal of this assembly project is to create a ifstatememnt Program 

section .data ;for initilized data

;Testing something real quick DELETE Later

XX: dd 10 ; Label XX == 10 
YY: dd 15 ;Label YY == 15 
msg: db "X IS Greater then Y",10,10,10,0
msg2: db "Y is greater then X",10,10,0
section .bss ;for unitilized data


section .data ;for our actual asm code 
extern printf ;Telling our program that printf not apart of this 

global main ;our program is turnning our main label global so others can us
main:
;Creating Stack frame so we know where we at at all time GOOD PRACTICE 

push ebp ; Pushing context of base pointer to the stack 

mov ebp, esp ; NOw we will store stacxk pointers original location in base ptr

pusha ;This pushes all the registers to the stack 

;THe reason why we do this is to have a reference spot to refer to 

mov eax, 0 ;this zeros out our eax register
mov eax, DWORD[XX] ; Moving the vaules of our labels into regiesters to use them
mov ebx, DWORD[YY]

cmp eax, ebx ; This compares the two registers doesnt store its value  eax = eax - ebx = -5 

jg .XisgreaterthanY ;This will jump to that local variable if x is greater then y 
push msg2 ;Else push msg two because x is not greater then Y 
call printf ;Print the msg2 
jmp .done ;AND JUMP TO OUR DONE Local variable 

.XisgreaterthanY:
push msg ;Push our x is greater then y msg  PUSHES IT ON TOP OF the stack 
call printf ;print our msg 
jmp .done ;Jump to our done code 


.done: ;This is where we defined our .done local variable 
;Now we have to restore our program back 
popa ; This pops all the registers from the stack HAVE TO INCLUDE IF U have a pusha
mov esp, ebp ;moving the context of our original stack pointer back to itself
pop ebp ; restoring back our base ptr as well by
ret





