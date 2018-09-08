#In this make file is where we can make a script to compile our code faster


output: asm_2.o #Everytime our obj file gets editted recompile the object file
	gcc -m32 asm_2.o -o output 
	
#We are saying use the gnu c compiler its a 32 bit app INputfile -o OUTPUTFILE 

edit:
	vim asm_2.asm #short cut to access file 


run:
	./output #short cut to run the exectuable 


asm_2.o: asm_2.asm #If our asm program gets editted re compile its object file 
	nasm -f elf32 asm_2.asm -o asm_2.o 
	
#And this will subsequently also edit our file if our asm program gets editted 
#Ultimatly making everything get editted and recompiled 



clean: #Cleaning function for easy clean up 
	rm *.o output #Removes our object files and our exectuable file 
