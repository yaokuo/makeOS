all:
	nasm -f elf hello.asm -o hello.o
	gcc -Wall -ggdb3 -m32 -o main main.c hello.o

clean:
	rm hello.o main
