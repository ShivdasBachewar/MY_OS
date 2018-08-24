bits 32
section .text
	align 	4
	dd		0x00000000
	dd		0x00
	dd		-(0x00000000+0x00)

global start
extern heisenberg
start:
	cli 		; clears all interrupts
	call heisenberg
	hlt
