'''
Descritption: Main program that runs the Virtual Machine Code Translation process
                for the Hack computer 
Usage: Takes a valid .vm file and generates .asm file 
Author: Adam Rollins 
Date: December 10th 2023
'''

import sys 
import os
import glob
from codewriter import writer 
from lineparser import parser

#read in file name from command line 
#file = str(sys.argv[1])
source = str(sys.argv[1])
#source = 'C:\\Users\\aer12\\nand2tetris\\nand2tetris\\projects\\07\\VMTranslator\\FunctionCalls\\SimpleFunction\\'
#source = 'C:\\Users\\aer12\\nand2tetris\\nand2tetris\\projects\\07\\VMTranslator\\FunctionCalls\\StaticsTest'
#C:\Users\aer12\nand2tetris\nand2tetris\projects\07\VMTranslator\TestDir\FunctionTest.asm
#determine whether source is directory or single .vm file
indicator = source[len(source)-3:len(source)]
is_file = True if indicator == '.vm' else False  


#initilize .asm file name
if is_file:
    dest_addr = source.replace('.vm','.asm')
    #get local .vm file name 
    #file name used when generating code for static variables

    name_drop = source.split('.')[0]
    name_split = source.split('\\')
    short_name = name_split[ len(name_split) - 1 ]
    short_name = short_name.replace('.vm', '')
    #name_drop = source.split('.')[0]
    #name_split = name_drop.split('/')
    #short_name = name_split[ len(name_split) - 1 ]

else:
    
    name_split = source.split('\\')
    short_name = name_split[ len(name_split) - 1 ]

    dest_addr = source + '\\' + short_name + '.asm'
    #this version of dest_addr will save .asm file to source dir 

    #dest_addr = source + '.asm'
    #this version of dest_addr will save .asm file to current dir 
    



if is_file:
    #handling if file is single .vm

    #open files to read and write to 
    vm_file = open(source, 'r')
    asm_file = open(dest_addr, 'w')
    line_num = 0

    for line in vm_file: 

        line = line.replace("\t", "") 
        line = line.strip()
        

        if (line.startswith('//') is False) and bool(line): 
            
            line = line.replace("\n", "")
                    
            line = line.split('//',1)[0]

            #get command parts
            command, segment, value = parser(line) 
            
            #generate asm code
            asmCode = writer(command, segment, value, line, line_num, short_name)   
            
            #write generated code to asm_file
            for elmnt in asmCode: 
                asm_file.write(elmnt+'\n')    

            line_num += 1
    
    vm_file.close()
    asm_file.close() 

else:
    #handling if directory 

    asm_file = open(dest_addr, 'w')

    sys_initialize = ['//sys.init', '//Initialize SP and memory segments',
                    '@256', 'D=A', '@SP', 'M=D', '@1015', 'D=A', '@LCL',
                    'M=D', '@1225', 'D=A', '@ARG', 'M=D', '@1350', 'D=A',
                    '@THIS', 'M=D', '@1375', 'D=A', '@THAT', 'M=D', 
                    '@R5', 'M=0', '@R6', 'M=0', '@R7', 'M=0', '@R8', 
                    'M=0', '@R9', 'M=0', '@R10', 'M=0', '@R11', 'M=0', '@R12', 'M=0',
                    '@SYS.INIT$RETURN', 'D=A', '@SP', 'A=M', 
                    'M=D', '@SP', 'M=M+1', '@LCL', 'D=M', '@SP', 
                    'A=M','M=D', '@SP', 'M=M+1', '@ARG', 'D=M', 
                    '@SP', 'A=M', 'M=D', '@SP', 'M=M+1', '@THIS', 
                    'D=M', '@SP', 'A=M', 'M=D', '@SP','M=M+1', 
                    '@THAT', 'D=M', '@SP', 'A=M', 'M=D', '@SP', 
                    'M=M+1', '@0', 'D=A', '@SP', 'D=M-D','@5', 
                    'D=D-A', '@ARG', 'M=D', '@SP', 'D=M', '@LCL',
                    'M=D', '@SYS.INIT$START', '0;JMP', '(SYS.INIT$RETURN)','\n']

    for element in sys_initialize:
        asm_file.write(element+'\n')

    for filename in glob.glob(os.path.join(source, '*.vm')):
            
            f_name = filename.split('\\')
            f_name = f_name[ len(f_name) - 1 ]
            f_name = f_name.replace('.vm', '')

            call_dict = {}

            vm_file = open(filename, 'r')

            line_num = 0

            for line in vm_file:

                line = line.replace("\t", "") 
                line = line.strip()
                
                #(line.startswith('\n') is False)

                if (line.startswith('//') is False) and bool(line): 
                    line = line.replace("\n", "")
                    
                    line = line.split('//',1)[0]

                    #get command parts
                    command, segment, value = parser(line) 

                    '''
                    if command == 'call':

                        if segment in call_dict: 
                            call_dict[segment] += 1
                        else: 
                            call_dict.update({segment:0})
                    '''
                        

                    
                    #generate asm code
                    asmCode = writer(command, segment, value, line, line_num, f_name)   
                    
                    #write generated code to asm_file
                    for elmnt in asmCode: 
                        asm_file.write(elmnt+'\n')    

                    line_num += 1

            vm_file.close()

    asm_file.close()
    


print('Hack Assebly file succesfully generated')