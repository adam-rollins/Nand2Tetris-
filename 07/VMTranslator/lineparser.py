'''
Parse lines of VM code into parts
Author: Adam Rollins 
December 10th 2023
'''
def parser(vm_line): 

    command = 'null'
    segment = 'null'
    value = 'null'

    line_split = vm_line.split(' ')

    command = line_split[0]
    
    if len(line_split) > 1 : segment = line_split[1]       
    
    if len(line_split) > 2: value = line_split[2]

    return command, segment, value 