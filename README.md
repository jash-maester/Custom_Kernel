# Custom_Kernel
Created a Custom Kernel as part of a hobby Project.

# Prerequisite

- GNU/Linux :-  Any distribution(Ubuntu/Debian/RedHat etc.).
- Assembler :-  GNU Assembler(gas) to assemble the assembly laguage file.
- GCC :-  GNU Compiler Collection, C compiler. Any version 4, 5, 6, 7, 8 etc.
- Xorriso :-  A package that creates, loads, manipulates ISO 9660 filesystem images.(man xorriso)
- grub-mkrescue :-  Make a GRUB rescue image, this package internally calls the xorriso functionality to build an iso image.
- QEMU :-  Quick EMUlator to boot our kernel in virtual machine without rebooting the main system.

# Compiling and Running in qemu
Make Sure you are in the directory containing these file and You are on a LINUX machine

```
chmod +x install.sh
./install.sh
```

Enjoy modifying the kernel as you like.

<h6>Reference<br>
  <a href="https://www.codeproject.com/Articles/1225196/Create-Your-Own-Kernel-In-C-2">https://www.codeproject.com/Articles/1225196/Create-Your-Own-Kernel-In-C-2</a?
