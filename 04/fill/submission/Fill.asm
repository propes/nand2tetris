// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

    // Initialise cursor to location of SCREEN
    @SCREEN
    D=A
    @cursor
    M=D

    // cmax = KBD address - 1
    @KBD
    D=A
    @cmax
    M=D-1

    // Poll keyboard input
//(KEY_POLL)
//
//    // If key is pressed goto BLACK
//    @KBD
//    D=M
//    @BLACK
//    D;JGT

    // Set the pen to off
    @pen
//    M=0
M=-1

    // Paint the screen
//(PAINT)
    (CURSOR_LOOP)
        // if cursor > cmax goto END_CURSOR_LOOP
        @cursor
        D=M
        @cmax
        D=D-M
        @END_CURSOR_LOOP
        D;JGT

        // Paint word
        @pen
        D=M
        @cursor
        A=M
        M=D

        // cursor = cursor + 1
        @cursor
        M=M+1

        @CURSOR_LOOP
        0;JMP

    (END_CURSOR_LOOP)

//    @KEY_POLL
//    0;JMP

//(BLACK)
//    // Set the pen to on
//    @pen
//    M=-1
//    @PAINT
//    0;JMP

(END)
    @END
    0;JMP