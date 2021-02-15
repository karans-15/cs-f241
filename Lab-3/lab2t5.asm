;Write an ALP that will transfer data from ‘ARRAY1’ to ‘ARRAY2’. The number of elements in the array is 10. The array is a double word array. The starting address of ARRAY2 = starting address of ARRAY1 + 20d
.model tiny
.486
.data
ARRAY1	DD 1h,2h,3h,4h,5h,6h,7h,8h,9h,0Ah
.code
.startup
		LEA SI,ARRAY1
		MOV CX,11
		ADD SI,39 ; Ending byte of array1 (4*10 bytes total)
		MOV DI,SI
		ADD DI,20
		STD ; DF=0, Decrementinig operation
REP 	MOVSD
.exit
end
