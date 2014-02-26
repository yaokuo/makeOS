run:img
	qemu-kvm -drive file=os.img,if=floppy

img:hello.bin
	dd if=/dev/zero of=os.img bs=512 count=2880
	dd if=hello.bin of=os.img bs=512 count=1 conv=notrunc

hello.bin:hello.asm
	nasm hello.asm -o hello.bin

clean:
	rm hello.bin os.img -f
