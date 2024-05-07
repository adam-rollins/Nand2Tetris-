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


