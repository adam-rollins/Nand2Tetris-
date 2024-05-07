//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D


//eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE3
D;JEQ
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


//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D


//eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE6
D;JEQ
@SP
A=M-1
M=0
@FALSE6
0;JMP
(TRUE6)
@SP
A=M-1
M=-1
(FALSE6)


//push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D


//eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE9
D;JEQ
@SP
A=M-1
M=0
@FALSE9
0;JMP
(TRUE9)
@SP
A=M-1
M=-1
(FALSE9)


//push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 891
@891
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
@TRUE12
D;JLT
@SP
A=M-1
M=0
@FALSE12
0;JMP
(TRUE12)
@SP
A=M-1
M=-1
(FALSE12)


//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 892
@892
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
@TRUE15
D;JLT
@SP
A=M-1
M=0
@FALSE15
0;JMP
(TRUE15)
@SP
A=M-1
M=-1
(FALSE15)


//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 891
@891
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
@TRUE18
D;JLT
@SP
A=M-1
M=0
@FALSE18
0;JMP
(TRUE18)
@SP
A=M-1
M=-1
(FALSE18)


//push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D


//gt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE21
D;JGT
@SP
A=M-1
M=0
@FALSE21
0;JMP
(TRUE21)
@SP
A=M-1
M=-1
(FALSE21)


//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D


//gt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE24
D;JGT
@SP
A=M-1
M=0
@FALSE24
0;JMP
(TRUE24)
@SP
A=M-1
M=-1
(FALSE24)


//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D


//gt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE27
D;JGT
@SP
A=M-1
M=0
@FALSE27
0;JMP
(TRUE27)
@SP
A=M-1
M=-1
(FALSE27)


//push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D


//push constant 53
@53
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


//push constant 112
@112
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


//neg
@SP
A=M-1
M=-M


//and
@SP
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D


//push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D


//or
@SP
M=M-1
A=M
D=M
A=A-1
D=D|M
M=D


//not
@SP
A=M-1
M=!M


