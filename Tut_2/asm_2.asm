;GOAL OF THIS PROGRAM IS TO Define A Integer and print its value using Printf function

section .data ;This is where we initlize all of our data 


msg: db "HELLO WORLD",10,0 

msgLen: equ $-msg 
;we are essentially #define msgLen to equal the current address - The address of msg
;Essentially giving us the length of msg 

msg_2: db "THE LENGTH OF OUR MSG IS %d",10,0
;msg is our label 
;db is saying its a defined byte being that all ascii char are one byte 
;10 is saying give me a newline at the end
;0 is our NUll or telling asm where our string ends 


i: dd 17 
;We are defining a label to be a integer being that a defined double word 
;is 32 bits or 4bytes which an integer is

msg_i: db "THE NUMBER WE HAVE IS %d",10,10,10,0 
; We are setting up a msg for our integer 
; Notice our msg is a defined byte because ASCII Chars are ONE BYTE 




section .bss ;This is where we initlize all of our unitilized data


section .text ;this is where we Put all of our Asm Code

extern printf ;telling our asm program that the function printf is not in our program

global main ;Making our main Label global 

main:

;First thing first setup our stack Frame 
push ebp ;Pushing our base pointer to the top of the stack 
mov ebp, esp ;Now we are moving the context of our stack pointer into our base pointer 

push msg ;Pushing the msg to the top of the stack 
call printf ;calling the funciton print f 

push msgLen ;We have to print the msg first then the actual number 
push msg_2 ;Now we are going to push the next msg on the stack to see the legnth of it 
call printf ; Calling it so we see the length of the msg as well 

;Now we are going to display our integer 
push DWORD [i] ;HAS TO BE [] IN ORDER TO DISPLAY THE ACTUAL NUM and not the address  
; We are pushing our label i and telling our program its size 
; DWORD = DOuble WORD = 32 bits = 4 bytes = integer 
push msg_i 
;Now we are pushing our msg_i label ontop of the stack so when we call our printf
; function we first display the msg then we display the value 
call printf ; This will Display the msg then its value 

;Now To remove our stack Frame 
mov esp, ebp ;We move back the context of our stack pointer from our base pointer
pop ebp ;We pop what ever is ontop of the stack (EBP) back into  (EBP) Registor
ret ;We return the power back 















