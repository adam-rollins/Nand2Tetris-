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

//Initilize 

@0
D = M 
@key
M = D //key = 0

@i 
M = 0 //i = 0 

@SCREEN 
D = A
@address 
M = D       //set address to base address of HACK screen 

@color
M = 0 

(PROBE)

    @i
    M = 0   //reset i 

    @SCREEN 
    D = A
    @address 
    M = D   //reset address


    //Assign value of KBD to key
    @KBD 
    A = M 
    D = A
    @key
    M = D  //key = current scan code 

    @key
    D = M 
    @BLACK
    D ; JNE     //goto BLACK if key != 0

    @key
    D = M        
    @WHITE
    D ; JEQ     //goto WHITE if key == 0


    @PROBE
    0 ; JMP 

(BLACK) 
    
    @8192
    D = A
    @i
    D = D - M  
    @PROBE 
    D ; JEQ     //goto probe when i == 8192

    //RAM[address] = -1 
    @address 
    A = M 
    M = -1

    //address = address + 1
    @address 
    M = M + 1  

    //i++  
    @i 
    M = M + 1

    @BLACK
    0 ; JMP




(WHITE)

    @8192
    D = A
    @i
    D = D - M  
    @PROBE 
    D ; JEQ     //goto probe when i == 8191

    //RAM[address] = -1 
    @address 
    A = M 
    M = 0

    //address = address + 1
    @address 
    M = M + 1  

    //i++  
    @i 
    M = M + 1

    @WHITE
    0 ; JMP


