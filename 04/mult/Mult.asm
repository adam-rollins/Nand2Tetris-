// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.
//
//
//Program: Compute the value of R0 * R1 and store in R2
//Usage: Enter values in R0 and R1 
//
//Initialize: 
//      x = R0
//      y = R1 
//      i = 0 
//      prod = 0 
//
//Loop: 
//      for i < y: 
//          prod = prod + x 
//          i++
//
//End

//Initialize

@R0 
D = M 
@x
M = D   //x = R0 

@R1 
D = M 
@y 
M = D //y = R1 

@0
D = M 
@R2
M = D   //R2 = 0 

@0
D = A 
@i
M = D   //i = 0

@0
D = A 
@prod 
M = D   //pro = 0 


(LOOP) 

    //goto UPDATE if i == y
    @i
    D = M 
    @y
    D = D - M 
    @UPDATE
    D ; JEQ

    @x 
    D = M 
    @prod
    M = D + M   //prod = prod + x 

    @i 
    M = M + 1   //i++ 

    @LOOP
    0 ; JMP 


(UPDATE)
    //R2 = prod 
    @prod 
    D = M 
    @R2 
    M = D 

(END)
    @END 
    0 ; JMP 