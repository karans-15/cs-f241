;lab 4 demo
;INT 21h
.model tiny
.486
.data
;0Dh,0Ah is used to move cursor to begining of new line. Add $ to display only that
dat0	db	0Dh,0Ah, "Hello " ;A string always needs to be ended with dollar sign. Tells debugx when to terminate string
dat1	db	? ;will store input by user with echo
dat2	db	? ;will store input by user w/o echo
term	db	'$' ;to terminate string
.code
.startup
	MOV AH,01 ; subfunction used to read a single char with echo and store in AL
	INT 21h
	MOV DAT1,AL
	MOV AH,08h ;read input w/o echo (07h or 08h can be used. same subfuntion)
	INT 21h
	MOV DAT2,AL
	MOV AH,02h ;Outputs a char to display, stored in DL reg
	MOV DL,dat2
	INT 21h
	LEA DX,dat0 ;stores address of Hello
	MOV AH,09h ;display string till it finds $
	INT 21h
.exit
end