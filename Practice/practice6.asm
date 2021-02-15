;Pre-Lab3
;Fill a set of 100 mem locations starting at dat1 with value F6h 
.model tiny
.486
.data
DAT1 DB 100 dup(?) ;Define 100 bytes of memory
.code
.startup
	LEA DI,DAT1
	MOV CX,100
	MOV AL,0F6h
	CLD ; Clears D flag so assembler knows that it has to increment DI
REP STOSB
.exit
end
	
