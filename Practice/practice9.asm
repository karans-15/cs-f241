;Pre-Lab3
;Add data in one block of 100 bytes of memory with data in another block of 100 bytes of memory
.model tiny
.486
.data
ARRAY1 db 100 dup(?)
ARRAY2 db 100 dup(?)
COUNT 100
.code
	LEA SI,ARRAY1
	LEA DI,ARRAY2
	MOV CX,COUNT  ; NOTEL: Loop checks CX not CL
	CLD ; Clear DF for increment 
X1: LODSB
	ADD AL,[DI]
	STOSB
	LOOP X1
.startup

.exit
end