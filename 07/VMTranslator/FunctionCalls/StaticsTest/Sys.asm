//function Sys.init 0
(SYS.INIT$START)
@0
D=A
@sys.init_n
M=D
@0
D=A
@sys.init_i
M=D
(SYS.INIT$LOOP)
@sys.init_i
D=M
@sys.init_n
D=D-M
@SYS.INIT$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@sys.init_i
M=M+1
@SYS.INIT$LOOP
0;JMP
(SYS.INIT$END)


//push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D


//call Class1.set 2
@CLASS1.SET$RETURN3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@SP
D=M-D
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@CLASS1.SET$START
0;JMP
(CLASS1.SET$RETURN3)


//pop temp 0 
@0
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


//push constant 23
@23
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D


//call Class2.set 2
@CLASS2.SET$RETURN7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@SP
D=M-D
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@CLASS2.SET$START
0;JMP
(CLASS2.SET$RETURN7)


//pop temp 0 
@0
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


//call Class1.get 0
@CLASS1.GET$RETURN9
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
D=M-D
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@CLASS1.GET$START
0;JMP
(CLASS1.GET$RETURN9)


//call Class2.get 0
@CLASS2.GET$RETURN10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
D=M-D
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@CLASS2.GET$START
0;JMP
(CLASS2.GET$RETURN10)


//label END
(END)


//goto END
@END
0;JMP


