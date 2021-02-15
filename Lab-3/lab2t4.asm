;Count the number of negative numbers in ARRAY1 and store in NEG1
.model tiny
.486
.data
ARRAY1	dw 2455h, 7652h, 0522h, 0A990h ; ONE NEGATIVE NUMBER
COUNT 	db 4h
NEG1 	db 0
.code
.startup
	LEA DI,ARRAY1
	MOV AX,0000h
	MOV CL,COUNT
	MOV CH,00h
	MOV BL,0h
	CLD ; DF=0 for increment operation
X2:	SCASW
	JL	X1
	INC BL
X1: LOOP X2
	MOV NEG1,BL
.exit
end