'''
Descritption: Main program that runs the Virtual Machine Code Translation process
                for the Hack computer 
Usage: Takes a valid .vm file and generates .asm file 
Author: Adam Rollins 
Date: December 10th 2023
'''

import sys 
from AsmGenerator import asmGenerator 
from VMParser import vmParser

#read in file name from command line 
#file = str(sys.argv[1])
vmFName = str(sys.argv[1])

#initilize .asm file name
asmFName = vmFName.replace('.vm','.asm')

#get local .vm file name 
#file name used when generating code for static variables
file_drop = vmFName.split('.')[0]
file_split = file_drop.split('/')
file_name = file_split[ len(file_split) - 1 ]

#open files to read and write to 
vmFile = open(vmFName, 'r')
asmFile = open(asmFName, 'w')

line_num = 1

for line in vmFile: 


    if (line.startswith('\n') == False) and (line.startswith('//') == False):
        line = line.replace("\n", "")
        line = line.split('//',1)[0]

        #get command parts
        command, segment, value = vmParser(line) 
        
        #generate asm code
        asmCode = asmGenerator(command, segment, value, line, line_num, file_name)   
        
        #write generated code to asmFile
        for elmnt in asmCode: 
            asmFile.write(elmnt+'\n')    

        line_num += 1
    
#close files 
vmFile.close()
asmFile.close() 

print('Hack Assebly file succesfully generated')