;Pre-Lab4
;Masks the upper nibble (MS byte)
.model tiny
.486
.data
dat1		db 		'1','2','3','4'
res			db 		4 dup(0)
stack1		dw 		4 dup(?)
top_stack1	label 	word
.code
.startup
		LEA SP,top_stack1
		LEA SI,dat1
		LEA DI,res
		MOV CX,4
X1:		LODSB
		CALL MASK
		LOOP X1
.exit
MASK	PROC NEAR
		AND AL,0Fh
		STOSB
		RET
SUMS	ENDP
end