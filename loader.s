global loader		 	; entry for ELF

MAGIC_NUMBER equ 0x1BADB002	; define magic number constant
FLAGS	     equ 0x0		; multiboot flags
CHECKSUM     equ -MAGIC_NUMBER  ; calculate the checksum

section .text:			; start of text section
align 4				; code must be 4 byte aligned
	dd MAGIC_NUMBER		; Write the magic number to the machine code
	dd FLAGS		; with flags
	dd CHECKSUM		; and the checksum

loader:
	mov eax, 0xCAFEBABE	; place the number in the eax register
.loop:
	jmp .loop		; loop forever
