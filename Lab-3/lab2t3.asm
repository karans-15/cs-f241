;Examine 10 bytes starting from in ARRAY1 for ‘0AH’ and replace it with the ASCII character ‘E’.
.model tiny
.486
.data
ARRAY1 DB 01h, 02h, 03h, 04h, 05h, 0Ah, 07h, 08h, 09h, 0Ah 
COUNT DB 10
.code
.startup
		LEA DI,ARRAY1
		MOV CX,10
		MOV AL,0Ah
		MOV BL,'E'
		CLD
X1:		SCASB
		JNE X2
		MOV [DI-1],BL
X2:		LOOP X1
.exit
end
