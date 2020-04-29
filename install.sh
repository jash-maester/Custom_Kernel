#assembling the boot.s file
as --32 boot.S -o boot.o

#compiling kernel.c file
gcc -m32 -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

#linking the kernel with kernel.o and boot.o files
ld -m elf_i386 -T linker.ld kernel.o boot.o -o myOS.bin -nostdlib

#check myOS.bin file is x86 multiboot file or not
grub-file --is-x86-multiboot myOS.bin

#building the iso file
mkdir -p isodir/boot/grub
cp myOS.bin isodir/boot/myOS.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myOS.iso isodir

#running/testing it in qemu
qemu-system-x86_64 -cdrom myOS.iso
