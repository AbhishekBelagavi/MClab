	AREA LARGE,CODE,READONLY
ENTRY
START
	LDR R0,=ARRAY
	MOV R1,#6
	LDR R2,[R0],#4
LOOP1 LDR R3,[R0],#4
	  CMP R2,R3
	  BGE LOOP2
	  MOV R2,R3
LOOP2 SUB R1,R1,#1
	  CMP R1,#1
	  BNE LOOP1
	  LDR R4,=LARGEST
	  STR R2,[R4]
STOP B STOP



ARRAY DCD 0X05,0X04,0X03,0X02,0X01,0X09
	  AREA DATA1,DATA,READWRITE
LARGEST DCD 0X00
	  END
