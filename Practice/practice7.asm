;Pre-lab3
;Find the disp at which data 0Dh is present from ARRAY of 80 data bytes stored from loc DAT1
.model tiny
.486
.data
DAT1 80 Dup(?)
DISP dw ?
.code
.startup
	LEA DI,DAT1
	MOV AL,0Dh
	MOV CX,80
	CLD ; To set DF to zero for increment of DI
REPNE SCASB
	DEC DI
	MOV DISP,DI
.exit
end