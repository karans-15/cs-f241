;lab4 task
;Write an ALP that will take in a string of maximum 20 characters from user and display 
;it on the next line on the screen (ASCII equivalent for newline is 0Dh (enter) followed by 0Ah (next line))

.model tiny
.486
.data
maxlen		db		6 ;one for enter
len			db		?
string1		db		22 dup('$') ; 20 + enter + dollar; We fill it with dollar. as soon as first dollar encountered, display terminated
disnl       db      0DH,0AH,'$'
.code
.startup
		LEA DX,maxlen ;specifies length of input
		MOV AH,0Ah ;takes in input of max size
		INT 21h
		LEA DX,disnl
		MOV AH,09h
		INT 21h
		LEA DX,string1
		MOV AH,09h
		INT 21h
.exit
end
