#THis is my make file script this script will allow me to run the same command over and over agin with out having to contiunously type them VERYUSEFUL 



#if the asm3.o get editted then recompile it and produce a new executable 
output: asm3.o 
	gcc -m32 asm3.o -o output 

#if the asm3.asm program gets editted Create me a new object file 
asm3.o: asm3.asm
	nasm -f elf32 asm3.asm -o asm3.o

#Short Cut to vim the file we want to edit 
edit:
	vim asm3.asm

#Short Cut to Run the executable 
run:
	./output

#This cleans our files if we involke it 
clean:
	rm *.o output
