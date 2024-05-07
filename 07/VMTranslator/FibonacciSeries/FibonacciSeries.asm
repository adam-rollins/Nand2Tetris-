//push argument 1         
@ARG
D=M
@1
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


//pop pointer 1           
@SP
M=M-1
A=M
D=M
@THAT
M=D


//push constant 0         
@0
D=A
@SP
M=M+1
A=M-1
M=D


//pop that 0              
@0
D=A
@THAT
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


//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D


//pop that 1
@1
D=A
@THAT
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


//push constant 2         
@2
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


//if-goto COMPUTE_ELEMENT 
@SP
M=M-1
A=M
D=M
@COMPUTE_ELEMENT
D;JNE


//goto END                
@END
0;JMP


//label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)


//push that 0
@THAT
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


//push that 1
@THAT
D=M
@1
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


//pop that 2
@2
D=A
@THAT
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


//push pointer 1
@THAT
D=M
@SP
M=M+1
A=M-1
M=D


//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D


//add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D


//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
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


//goto LOOP
@LOOP
0;JMP


//label END
(END)


