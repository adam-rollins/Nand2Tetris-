'''
Author: Adam Rollins 
Date: November 10, 2023

Description: Parse the C-Instructions in hack assembly language. 
This function only parses the instructions into comp, dest, and jump
but does not convert to machine language. 

Usage: Input single C-Instruction. Output is string values of the three parts
of the instruction. 
'''


def parseInstruction(cInst):

    comp = ''
    dest = ''
    jump = ''
    jmp_split = cInst.split(';')

    if len(jmp_split) == 1:
        compDest = jmp_split[0]
    else:
        compDest = jmp_split[0]
        jump = jmp_split[1] 

    comp_split = compDest.split('=')
    if len(comp_split) == 1:
        comp = comp_split[0]
    else:
        dest = comp_split[0]
        comp = comp_split[1]

    return dest, comp, jump 

#d, c, j = Parser("D=M+1;JGT")

#print('dest: ', d)
#print('comp: ', c) 
#print('jump: ',j)