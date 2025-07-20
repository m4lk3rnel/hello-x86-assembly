					  ;this is a program for 32-bit Linux systems. 

section	.data		                  ;create the data section

        msg     db "Hello world!", 0xa    ;declare the message, 0xa = \n in ASCII

        len     equ $ - msg               ;$ - the location (memory address) at the end of the string
	                                  ;msg - the location (memory address) at the beginning of the string

section	.text			          ;create the text section
        global _start		          ;tells the linker where the entry point of the program is.

_start:					  ;entry point for the program.

        mov eax, 4			  ;invoke sys_write by moving the number 4 into the EAX register.
					  ;the number 4 is the "id" of the syscall.

        mov edx, len			  ;move the memory address of the length of the message
					  ;to the EDX register
					  ;edx - general-purpose register. can be used for data
					  ;and math

        mov ecx, msg			  ;move the the memory address of msg to the ECX register.
                                          ;ecx - also a general-purpose register.

        mov ebx, 1		          ;move 1 (file descriptor for STDOUT) to the EBX register.
        int 0x80	                  ;user mode -> KERNEL mode so the syscall is handled by the kernel.

        mov eax, 1			  ;1 - sys_exit
        int 0x80

	
