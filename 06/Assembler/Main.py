'''
Author: Adam Rollins 
Date: November 10, 2023

Description: This script is a working assembler for the Hack Computer.
It functions to translate Hack assembly language (.asm) into Hack machine
language (.hack). 

Usage: To run in command line, enter python Main.py followed by .asm file
to translate (and folder directory if necescary). 
Main.py must be stored in a folder containing the modules cleanASM, getBin16, 
paseInstruction, cCode, and deSymbolize. 

'''

import sys 
from Cleaner import cleanASM
from bin16 import getBin16
from Parser import parseInstruction
from Code import cCode
from Symbol import deSymbolize

#read in file name from command line 
file = str(sys.argv[1])

#open and read file
with open(file) as f:

        lines = f.readlines()

        f.close()


#remove white space and comments
asmList = cleanASM(lines)

#translate symbols to decimalvalues 
asmList = deSymbolize(asmList)

#initialize binary list 
cmdList = []

#translates instructions to machine language 
for line in asmList:
        
    if line[0] == '@':  #convert A-instruction to binary
        aBin = getBin16(line)
        cmdList.append(aBin) 

    else:           #convert C-Instruction to binary
        dest, comp, jump = parseInstruction(line)
        cBin = cCode(dest, comp, jump)
        cmdList.append(cBin) 

file = file.replace('.asm','.hack')

#write machine language to .hack file
with open(file,'w') as f: 

    for line in cmdList:
        line = line + '\n'
        f.write(line)

