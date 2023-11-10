'''
Author: Adam Rollins 
Date: November 10, 2023

Description: Convert symbols in hack assembly language to decimal value
according to language specification. 

Usage: Input a cleaned list of assembly instructions, returns list with 
appropriate decimal values in place of symbols. 
'''


def deSymbolize(asmList):


    #initialize symbol dict
    symbols = {'R0':0,
            'R1':1,
            'R2':2,
            'R3':3,
            'R4':4,
            'R5':5,
            'R6':6,
            'R7':7,
            'R8':8,
            'R9':9,
            'R10':10,
            'R11':11,
            'R12':12,
            'R13':13,
            'R14':14,
            'R15':15,
            'SCREEN':16384,
            'KBD':24576,
            'SP':0,
            'LCL':1,
            'ARG':2,
            'THIS':3,
            'THAT':4}

    n = 16 

    numString = ['0','1','2','3','4','5','6','7','8','9']

    labels = {}

    nl = 0 

    #first pass: create dictionary of labels
    for i, lines in enumerate(asmList):
        
        if lines[0] == '(':
            lname = lines.replace('(','').replace(')','')  
            
            labels[lname] = i-nl
            nl+=1 

    #remove label from asmList 
    for label in labels:    
        label = '(' + label +')'
        if label in asmList:
            asmList.remove(label)

    symbols.update(labels) #add lables to symbol table 

    #add variables to symbol table 
    for i in range(len(asmList)): 
        line = asmList[i]
        if line[0] == '@':
            label = line.replace('@','') 
            
            if label in symbols:    #symbol is referencing a jump, replace with lable value 
                asmList[i] = "@" + str(symbols[label])

            elif label[0] not in numString:     #label is a variable, add to symbol table 
                symbols[label] = n
                asmList[i] = '@'+str(n)
                n+=1 
                
            
                
    return(asmList)

    
          
