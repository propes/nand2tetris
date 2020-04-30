// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
A=M-1
D=M-D
@GT_0
D;JGT
@SP
A=M-1
M=0
@GT_END_0
0;JMP
(GT_0)
@SP
A=M-1
M=-1
(GT_END_0)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
A=M-1
D=M-D
@GT_1
D;JGT
@SP
A=M-1
M=0
@GT_END_1
0;JMP
(GT_1)
@SP
A=M-1
M=-1
(GT_END_1)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
A=M-1
D=M-D
@GT_2
D;JGT
@SP
A=M-1
M=0
@GT_END_2
0;JMP
(GT_2)
@SP
A=M-1
M=-1
(GT_END_2)

