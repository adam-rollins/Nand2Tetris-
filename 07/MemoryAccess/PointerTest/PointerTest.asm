//push constant 3030
@3030
D=A
@SP
M=M+1
A=M-1
M=D


//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D


//push constant 3040
@3040
D=A
@SP
M=M+1
A=M-1
M=D


//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D


//push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D


//pop this 2
@2
D=A
@THIS
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


//push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D


//pop that 6
@6
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


//push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D


//push pointer 1
@THAT
D=M
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


//push this 2
@THIS
D=M
@2
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


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D


//push that 6
@THAT
D=M
@6
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


