;Pre-Lab3
;Count the number of 1's in a byte in location DATA1 and write it into location RES
.model tiny
.486
.data
DATA1 DB 0A7h
RES DB ?
.code
.startup
		MOV CL,08h
		MOV AL,DATA1
		SUB BL,BL ;Making contents of BL 0
AGAIN:	ROL AL,1
		JNC NEXT
		INC BL
NEXT:	DEC CL
		JNZ AGAIN
		MOV RES,BL
.exit
end