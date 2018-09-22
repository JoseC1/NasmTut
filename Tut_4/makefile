#This is our makefile script 



output: asm4.o
	gcc -m32 asm4.o -o output


asm4.o: asm4.asm
	nasm -f elf32 asm4.asm -o asm4.o 


edit:
	vim asm4.asm

clean:
	rm *.o output

run:
	./output
