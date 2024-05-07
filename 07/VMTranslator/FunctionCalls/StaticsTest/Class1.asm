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


