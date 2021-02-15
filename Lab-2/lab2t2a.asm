.model tiny
.486
.data
ARR1  DW 1204h, 1562h, 0AB36h, 2365h, 2493h, 953Bh, 23BFh, 0CDE4h
ARR2  DW 5481h, 2A65h, 395Fh, 2337h, 0ABCEh, 8895h, 1484h, 04EF9h
.code
.startup
	LEA SI,ARR1
	LEA DI,ARR2
	MOV CL,08
	CLC
X1: MOV AX,[SI]
	ADC AX,[DI]
	INC SI
	INC SI
	INC DI
	INC DI
	DEC CL
	JNZ X1
	CLC
.exit
end