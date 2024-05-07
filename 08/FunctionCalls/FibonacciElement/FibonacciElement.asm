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


//function Main.fibonacci 0
(MAIN.FIBONACCI$START)
@0
D=A
@main.fibonacci_n
M=D
@0
D=A
@main.fibonacci_i
M=D
(MAIN.FIBONACCI$LOOP)
@main.fibonacci_i
D=M
@main.fibonacci_n
D=D-M
@MAIN.FIBONACCI$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@main.fibonacci_i
M=M+1
@MAIN.FIBONACCI$LOOP
0;JMP
(MAIN.FIBONACCI$END)


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


//lt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE3
D;JLT
@SP
A=M-1
M=0
@FALSE3
0;JMP
(TRUE3)
@SP
A=M-1
M=-1
(FALSE3)


//if-goto N_LT_2
@SP
M=M-1
A=M
D=M
@N_LT_2
D;JNE


//goto N_GE_2
@N_GE_2
0;JMP


//label N_LT_2               
(N_LT_2)


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


//label N_GE_2               
(N_GE_2)


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


//call Main.fibonacci 1  
@MAIN.FIBONACCI$RETURN13
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
@MAIN.FIBONACCI$START
0;JMP
(MAIN.FIBONACCI$RETURN13)


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


//call Main.fibonacci 1  
@MAIN.FIBONACCI$RETURN17
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
@MAIN.FIBONACCI$START
0;JMP
(MAIN.FIBONACCI$RETURN17)


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


//push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D


//call Main.fibonacci 1   
@MAIN.FIBONACCI$RETURN2
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
@MAIN.FIBONACCI$START
0;JMP
(MAIN.FIBONACCI$RETURN2)


//label END
(END)


//goto END                
@END
0;JMP


