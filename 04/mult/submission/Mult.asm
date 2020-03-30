// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

    // Worry about single digits for now

    // op1 = RAM[0]
    @R0
    D=M
    @op1
    M=D

    // op2 = RAM[1]
    @R1
    D=M
    @op2
    M=D

    // RAM[2] = 0
    @R2
    M=0

    // sum = 0
    @sum
    M=0

    // i = 0
    @i
    M=0

(LOOP)
    // if (i > op2) goto END
    @i
    D=M
    @op2
    D=D-M
    @EXITLOOP
    D;JGE

    // sum = sum + op1
    @sum
    D=M
    @op1
    D=D+M
    @sum
    M=D

    // i = i + 1
    @i
    M=M+1

    // Goto LOOP
    @LOOP
    0;JMP

(EXITLOOP)
    // RAM[2] = sum
    @sum
    D=M
    @R2
    M=D

(END)
    @END
    0;JMP
