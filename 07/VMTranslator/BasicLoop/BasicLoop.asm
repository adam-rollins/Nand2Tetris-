//push constant 0    
@0
D=A
@SP
M=M+1
A=M-1
M=D


//pop local 0         
@0
D=A
@LCL
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D


//label LOOP
(LOOP)


//push argument 0     
@ARG
D=M
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1


//push local 0
@LCL
D=M
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1


//add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D


//pop local 0        
@0
D=A
@LCL
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D


//push argument 0
@ARG
D=M
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1


//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D


//pop argument 0      
@0
D=A
@ARG
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D


//push argument 0
@ARG
D=M
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1


//if-goto LOOP        
@SP
M=M-1
A=M
D=M
@LOOP
D;JNE


//push local 0        
@LCL
D=M
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1


