;Pre-Lab3
;Copy a block of 50 data bytes from one memory area to another
.model tiny
.486
.data
ARRAY1 DB 01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50
ARRAY2 db 50 dup(0) ; Initialize 50 bytes to 0
.code
.startup
	LEA SI,ARRAY1
	LEA DI,ARRAY2
	MOV CX,50 ;decimal by default
	CLD ; clear D flag so that SI,DI will auto increment
REP MOVSB ; Repeat till CX = 0
.exit
end