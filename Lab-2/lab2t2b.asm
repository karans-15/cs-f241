.model tiny
.486
.data
ARR1  DD 12041562h, 0AB362365h, 2493953Bh, 23BFCDE4h
ARR2  DD 54812A65h, 395F2337h, 0ABCE8895h, 14844EF9h
.code
.startup
	LEA SI,ARR1
	LEA DI,ARR2
	MOV CL,08
	CLC
X1: MOV EAX,[SI]
	ADC EAX,[DI]
	INC SI
	INC SI
	INC SI
	INC SI
	INC DI
	INC DI
	INC DI
	INC DI
	DEC CL
	JNZ X1
.exit
end