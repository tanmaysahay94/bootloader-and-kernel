#!/bin/bash

nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o project_kernel kasm.o kc.o

qemu-system-i386 -kernel project_kernel
