;Following is an ALP that finds the maximum number from a set of 32-bit numbers
.model tiny
.486
.data
ARRAY	DD 	12451251h,67524551h,78557335h,0A2519794h,0D562254h
RES 	DD 	?
.code
.startup
	LEA SI,ARRAY
	MOV CL,04h
	MOV EAX,[SI]
	INC SI
	INC SI
	INC SI
	INC SI
X2:	CMP EAX,[SI]
	JGE X1
	MOV EAX,[SI]
X1:	INC SI
	INC SI
	INC SI
	INC SI
	DEC CL
	JNZ X2
	MOV RES,EAX
.exit
end
