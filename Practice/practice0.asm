;Lab 2 Practice Problem 
;Adding 2 16 bit datas
.model tiny
.486
.data
dat1	dw 0240h, 0A200h 
res 	dw 0
.code
.startup
	lea si, dat1
	mov ax,[si]
	inc si
	inc si
	add ax,[si]
	inc si
	inc sigit
	mov [si],ax
.exit
end
