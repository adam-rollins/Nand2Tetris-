//push constant 10
@10
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


//push constant 21
@21
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D


//pop argument 2
@2
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


//pop argument 1
@1
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


//push constant 36
@36
D=A
@SP
M=M+1
A=M-1
M=D


//pop this 6
@6
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


//push constant 42
@42
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D


//pop that 5
@5
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


//push constant 510
@510
D=A
@SP
M=M+1
A=M-1
M=D


//pop temp 6
@6
D=A
@5
D=D+A
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D


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


//push that 5
@THAT
D=M
@5
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


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D


//push this 6
@THIS
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


//push this 6
@THIS
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


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D


//push temp 6
@6
D=A
@5
D=D+A
@addr
M=D
A=M
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


