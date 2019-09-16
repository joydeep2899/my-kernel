#!/usr/bin/env bash
echo "compiled kernel.c "
 gcc -m32 -c kernel.c -o kc.o -fno-stack-protector
 echo "compiled asembly file "
 nasm kernel.asm -o kasm.o -f elf 
 
 echo "linking  the files "
 
 ld -m elf_i386 -T link.ld -o kernel kasm.o kc.o


echo "running the emulator "
qemu-system-i386 -kernel kernel 


