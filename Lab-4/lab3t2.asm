;Pre lab4 demo
;INT 21h
.model tiny
.486
.data
user1 		db 	"karannshah",'$'
pass1 		db 	"password"
usersizemax	db 	11 ;max size of username incuding enter (actual size=10)
usera		db	?	;size of data entered by user
userdata	db	11 dup(?) ;stores input data 
display1	db 	"Enter User Name: " ,0Dh,0Ah,'$' ;go to next line after disp1
display2	db	0Dh,0Ah,"Enter Password:",0DH,0Ah,'$'
display3	db 	0Dh,0Ah, "Hello ",'$'
passdata	db	8 dup(?)
.code
.startup
		LEA DX,display1
		MOV AH,09h
		INT 21h
		LEA DX,usersizemax
		MOV AH,0Ah
		INT 21h
		MOV CL,usera
		LEA SI,user1
		LEA DI,userdata
REPE	CMPSB ;compares data at SI and DI
		JNE XN ;if not equal jump to exit
		LEA DX,display2
		MOV AH,09h
		INT 21h
		MOV CX,8
		LEA DI,passdata
X1:		MOV AH,08h
		INT 21h
		STOSB ;Stores data in DI reg pos
		MOV DL,'*' ;
		MOV AH,02h ;
		INT 21h    ;
		LOOP X1
		MOV CX,8
		LEA SI,pass1
		LEA DI,passdata
REPE	CMPSB ;compares data at SI and DI
		JNZ XN ;if not equal jump to exit
		LEA DX,display3
		MOV AH,09h
		INT 21h
		LEA DX,user1
		MOV AH,09h
		INT 21h
XN:
.exit
end