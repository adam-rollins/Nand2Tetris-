//sys.init
//Initialize SP and memory segments
@256
D=A
@SP
M=D
@1015
D=A
@LCL
M=D
@1225
D=A
@ARG
M=D
@1350
D=A
@THIS
M=D
@1375
D=A
@THAT
M=D
@R5
M=0
@R6
M=0
@R7
M=0
@R8
M=0
@R9
M=0
@R10
M=0
@R11
M=0
@R12
M=0
@SYS.INIT$RETURN
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
@SYS.INIT$START
0;JMP
(SYS.INIT$RETURN)


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


//push constant 4000
@4000
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


//push constant 5000
@5000
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


//call Sys.main 0
@SYS.MAIN$RETURN5
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
@SYS.MAIN$START
0;JMP
(SYS.MAIN$RETURN5)


//pop temp 1
@1
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


//label LOOP
(LOOP)


//goto LOOP
@LOOP
0;JMP


//function Sys.main 5
(SYS.MAIN$START)
@5
D=A
@sys.main_n
M=D
@0
D=A
@sys.main_i
M=D
(SYS.MAIN$LOOP)
@sys.main_i
D=M
@sys.main_n
D=D-M
@SYS.MAIN$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@sys.main_i
M=M+1
@SYS.MAIN$LOOP
0;JMP
(SYS.MAIN$END)


//push constant 4001
@4001
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


//push constant 5001
@5001
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


//push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D


//pop local 1
@1
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


//push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D


//pop local 2
@2
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


//push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D


//pop local 3
@3
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


//push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D


//call Sys.add12 1
@SYS.ADD12$RETURN21
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
@1
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
@SYS.ADD12$START
0;JMP
(SYS.ADD12$RETURN21)


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


//push local 1
@LCL
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


//push local 2
@LCL
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


//push local 3
@LCL
D=M
@3
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


//push local 4
@LCL
D=M
@4
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


//add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D


//add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D


//add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D


//return
@LCL
D=M
@end_frame
M=D
@5
D=A
@end_frame
A=M-D
D=M
@ret_addr
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@end_frame
A=M-1
D=M
@THAT
M=D
@2
D=A
@end_frame
A=M-D
D=M
@THIS
M=D
@3
D=A
@end_frame
A=M-D
D=M
@ARG
M=D
@4
D=A
@end_frame
A=M-D
D=M
@LCL
M=D
@ret_addr
A=M
0;JMP


//function Sys.add12 0
(SYS.ADD12$START)
@0
D=A
@sys.add12_n
M=D
@0
D=A
@sys.add12_i
M=D
(SYS.ADD12$LOOP)
@sys.add12_i
D=M
@sys.add12_n
D=D-M
@SYS.ADD12$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@sys.add12_i
M=M+1
@SYS.ADD12$LOOP
0;JMP
(SYS.ADD12$END)


//push constant 4002
@4002
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


//push constant 5002
@5002
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


//push constant 12
@12
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


//return
@LCL
D=M
@end_frame
M=D
@5
D=A
@end_frame
A=M-D
D=M
@ret_addr
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@end_frame
A=M-1
D=M
@THAT
M=D
@2
D=A
@end_frame
A=M-D
D=M
@THIS
M=D
@3
D=A
@end_frame
A=M-D
D=M
@ARG
M=D
@4
D=A
@end_frame
A=M-D
D=M
@LCL
M=D
@ret_addr
A=M
0;JMP


