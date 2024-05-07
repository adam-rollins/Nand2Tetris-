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


//function Class1.set 0
(CLASS1.SET$START)
@0
D=A
@class1.set_n
M=D
@0
D=A
@class1.set_i
M=D
(CLASS1.SET$LOOP)
@class1.set_i
D=M
@class1.set_n
D=D-M
@CLASS1.SET$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@class1.set_i
M=M+1
@CLASS1.SET$LOOP
0;JMP
(CLASS1.SET$END)


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


//pop static 0
@SP
M=M-1
A=M
D=M
@Class1.0
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


//pop static 1
@SP
M=M-1
A=M
D=M
@Class1.1
M=D


//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
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


//function Class1.get 0
(CLASS1.GET$START)
@0
D=A
@class1.get_n
M=D
@0
D=A
@class1.get_i
M=D
(CLASS1.GET$LOOP)
@class1.get_i
D=M
@class1.get_n
D=D-M
@CLASS1.GET$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@class1.get_i
M=M+1
@CLASS1.GET$LOOP
0;JMP
(CLASS1.GET$END)


//push static 0
@Class1.0
D=M
@SP
M=M+1
A=M-1
M=D
@SP


//push static 1
@Class1.1
D=M
@SP
M=M+1
A=M-1
M=D
@SP


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
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


//function Class2.set 0
(CLASS2.SET$START)
@0
D=A
@class2.set_n
M=D
@0
D=A
@class2.set_i
M=D
(CLASS2.SET$LOOP)
@class2.set_i
D=M
@class2.set_n
D=D-M
@CLASS2.SET$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@class2.set_i
M=M+1
@CLASS2.SET$LOOP
0;JMP
(CLASS2.SET$END)


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


//pop static 0
@SP
M=M-1
A=M
D=M
@Class2.0
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


//pop static 1
@SP
M=M-1
A=M
D=M
@Class2.1
M=D


//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
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


//function Class2.get 0
(CLASS2.GET$START)
@0
D=A
@class2.get_n
M=D
@0
D=A
@class2.get_i
M=D
(CLASS2.GET$LOOP)
@class2.get_i
D=M
@class2.get_n
D=D-M
@CLASS2.GET$END
D;JEQ
@0
D=A
@LCL
A=M
M=D
@SP
M=M+1
@class2.get_i
M=M+1
@CLASS2.GET$LOOP
0;JMP
(CLASS2.GET$END)


//push static 0
@Class2.0
D=M
@SP
M=M+1
A=M-1
M=D
@SP


//push static 1
@Class2.1
D=M
@SP
M=M+1
A=M-1
M=D
@SP


//sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
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


