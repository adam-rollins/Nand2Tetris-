'''
Parse lines of VM code into parts
Author: Adam Rollins 
December 10th 2023
'''
def vmParser(vm_line): 

    command = 'null'
    segment = 'null'
    value = 'null'

    line_split = vm_line.split(' ')

    command = line_split[0]
    
    if len(line_split) > 1: 
        #arithmetic/logic command         
        segment = line_split[1]
        value = line_split[2]
    

    return command, segment, value 