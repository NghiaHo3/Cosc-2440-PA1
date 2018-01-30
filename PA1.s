				TTL PA2-Nghia Ho-PART2
				AREA PART2A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
				
				AREA PART2B,DATA,READWRITE
A				SPACE 40				;Allocate set amount of memory space for array A
				AREA PART2C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler
	
Reset_Handler	
				LDR R3,=A				;R0=address of A
				MOV R1,#0				;R1<-0
										;R1=0
										;R1=i
loop
				BL Size					;Branch to Size to get R3 value
				CMP R1, R0				;Compare R1 and R3 by substrating R3 from R1
				BEQ EXIT				;Branch to Exit if CMP equal 0
										;End loop when R2 reach 100
				MUL R2,R1,R0			;R2<-R1*R3
										;R2=R1*R2
				STR R2,[R0,R1,LSL #2]	;Store R2 into main memory
				ADD R1,R1,#1			;R1<-R1*1
										;R1=R1*1
										;Increase index by one
				B loop					;Branch back to loop
Size						
				MOV R0,#100				;R3<-100
										;R3=100
				BX LR
EXIT
				END						;End program

	
//////////////////////////////////////////////////////////////////////////
/*
				TTL PA1-Nghia Ho-PART1
				PART1A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
				
				AREA PART1B,DATA,READWRITE
A				SPACE 400,1	
	
				AREA PART1C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler

Reset_Handler	
				LDR R0,=A				;R1=address of A
				MOV R1,#0				;R2<-0 R1=i
				MOV R3,#100
loop
				CMP R1,R3			;Compare if R2 reach 100
				BEQ EXIT				;End loop if R2 reach 100
				MUL R2,R1,R3			;R
				STR R2,[R0,R1,LSL #2]	;
				ADD R1,R1,#1			;Increase index by one
				B loop

EXIT
				END
	*/
//////////////////////////////////////////////////////////////////////////
/*
				TTL PA1-Nghia Ho-PART2
				AREA PART1A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
				
				AREA PART1B,DATA,READWRITE
A				SPACE 400
	
				AREA PART1C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler

Reset_Handler	
				LDR R0,=A				;R1=address of A
				MOV R1,#0			;R2<-0 R1=i
				MOV R3,#100
loop
				CMP R1,R3				;R1-R3
										;Compare if R1(i) equal R3(100)
				BEQ EXIT				;End loop if R3 reach 100
										;R1(i)=R3(100)
				CMP R1,#90
				BLT BRANCH1
				BGE BRANCH2


BRANCH1
				SUB R2,R3,R1			;R
				STR R2,[R0,R1,LSL #2]	;
				ADD R1,R1,#1			;Increase index by one
				B loop	
BRANCH2
				MOV	R2,R1				;R
				STR R2,[R0,R1,LSL #2]	;
				ADD R1,R1,#1			;Increase index by one
				B loop
EXIT
				END
				
	
*/
//////////////////////////////////////////////////////////////////////////
/*				
				TTL PA1-Nghia Ho-PART3
				AREA PART3A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
				
				AREA PART3B,DATA,READWRITE
A				SPACE 400,1				;Allocate set amount of memory space for array A
	
				AREA PART3C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler
	
Reset_Handler	
				LDR R3,=A				;R0=address of A
				MOV R1,#0				;R1<-0
										;R1=0
										;R1=i
loop
				BL Size					;Branch to Size to get R3 value
				CMP R1, R0				;Compare R1 and R3 by substrating R3 from R1
				BEQ EXIT				;Branch to Exit if CMP equal 0
										;End loop when R2 reach 100
				MUL R2,R1,R0			;R2<-R1*R3
										;R2=R1*R2
				STR R2,[R0,R1,LSL #2]	;Store R2 into main memory
				ADD R1,R1,#1			;R1<-R1*1
										;R1=R1*1
										;Increase index by one
				B loop					;Branch back to loop
Size						
				MOV R0,#100				;R3<-100
										;R3=100
				BX LR
EXIT
				END						;End program
				
*/
	
//////////////////////////////////////////////////////////////////////////