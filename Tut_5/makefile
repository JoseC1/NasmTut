#this is our makefile for asm5.asm 



main: asm5.o
	gcc -m32 asm5.o -o main

asm5.o: asm5.asm
	nasm -f elf32 asm5.asm -o asm5.o


run:
	./main

edit:
	vim asm5.asm

clean:
	rm *o main
