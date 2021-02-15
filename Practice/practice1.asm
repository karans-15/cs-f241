;Pre-Lab2
;Copy a block of data (50 data bytes) from 42000h to 44000h
.model tiny
.486
.data
.code
.startup
	MOV AX,4000h
	MOV DS,AX
	MOV SI, 2000h
	MOV DI,4000h
	MOV CL, 50
X1: MOV BL,[SI]
	MOV [DI],BL
	INC DI
	INC SI
	DEC CL
	JNZ X1
.exit
end