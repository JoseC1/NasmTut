output: asm.o
	gcc -m32 asm.o -o output
asm.o: asm.asm
	nasm -f elf32 asm.asm -o asm.o
clean:
	rm *.o output
