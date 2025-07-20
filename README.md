### My attempt to learn x86 assembly.

### Resources used:
- https://syscalls.w3challs.com/?arch=x86
- https://pablocorbalann.medium.com/programming-a-hello-world-in-assembly-from-the-first-line-to-the-end-x86-9c48fb499238
- https://www.geeksforgeeks.org/operating-systems/user-mode-and-kernel-mode-switching/
- https://en.wikipedia.org/wiki/Application_binary_interface
- https://en.wikipedia.org/wiki/I386
- https://man7.org/linux/man-pages/man2/write.2.html
- ChatGPT :)

#### Can be assembled with NASM (Netwide Assembler) and linked with `ld`
```
nasm -f elf32 main.asm -o main.o
ld -m elf_i386 -o main
```
