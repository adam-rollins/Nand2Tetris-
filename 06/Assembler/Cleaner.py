'''
Author: Adam Rollins
Date: November 10, 2023

Description: Removes white space, empty lines, and comment 
denoted by '//' in a list of .asm command. Returns list of 
each line of textFile
'''


def cleanASM(list):

    noWS = []   #initialize empty list 

    #drops commets and empty lines
    for line in list: 
        if (line.startswith('\n') == False) and (line.startswith('//') == False):
            line = line.replace("\n", "")
            line = line.split('//',1)[0]
            line = line.strip()
            noWS.append(line) 
        
    return noWS


                    


 