'''
Generate lines of Hack Assembly code for a valid VM Command 
Author: Adam Rollins 
Date: December 10th 2023 
'''

def asmGenerator(cmd, seg, i, line, line_num, file):

    #initialize dictionaries 
    segments = {'local':'LCL',
                'argument':'ARG',
                'this': 'THIS',
                'that': 'THAT'}

    stack_cmd = {'eq':'D;JEQ',
                'gt':'D;JGT',
                'lt':'D;JLT',
                'and':'D=D&M',
                'or': 'D=D|M',
                'add':'D=D+M',
                'sub':'D=M-D'}

   
    
    cmt = '//{}'.format(line)

    #memory commands
    if cmd == 'push':

        if seg == 'constant':
            #insert correct string for @value
            insert = '@{}'.format(i)
            assembly = [cmt, insert,'D=A','@SP','M=M+1', 'A=M-1','M=D']

        elif seg == 'pointer':
            #instert correct string for @THIS/THAT
            if i == '0':
                insert = '@THIS'
            elif i == '1':
                insert = '@THAT'
            else:
                raise ValueError('Value in pointer instruction must be 0 or 1')
            
            assembly = [cmt, insert,'D=M','@SP','M=M+1', 'A=M-1','M=D']

        elif seg == 'static':
            #use file name to name static variable 
            insert = '@{}.{}'.format(file,i) 
            assembly = [cmt, insert, 'D=M','@SP','M=M+1', 'A=M-1','M=D','@SP']

        elif seg == 'temp':

            if int(i) > 7:
                raise ValueError('Command out of range of temp variables in line ', line_num)
            
            insert = '@{}'.format(i)

            assembly = [cmt, insert, 'D=A','@5',
                        'D=D+A','@addr','M=D','A=M',
                        'D=M','@SP','M=M+1', 'A=M-1','M=D']
        
        elif seg in ['local', 'argument', 'this', 'that']: 
            #insert correct string for @seg and @i
            seg = segments[seg]
            insert_1 = '@{}'.format(seg)
            insert_2 = '@{}'.format(i)
            assembly = [cmt, insert_1, 'D=M', insert_2,
                        'D=D+A', '@addr', 'M=D', 'A=M',
                        'D=M', '@SP', 'A=M', 'M=D', 
                        '@SP','M=M+1']
            
        else:
            raise ValueError('Invalid push command')

    elif cmd == 'pop':

        if seg == 'constant':
            #insert correct string for @value
            
            assembly = [cmt]

        elif seg == 'pointer':
            #instert correct string for @THIS/THAT
            if i == '0':
                insert = '@THIS'
            elif i == '1':
                insert = '@THAT'
            else:
                raise ValueError('Value in pointer instruction must be 0 or 1')
            
            assembly = [cmt, '@SP', 'M=M-1', 'A=M', 
                        'D=M', insert, 'M=D']

        elif seg == 'static':
            
            insert = '@{}.{}'.format(file,i)
            assembly = [cmt, '@SP', 'M=M-1', 'A=M', 
                        'D=M', insert, 'M=D']

        elif seg == 'temp':

            if int(i) > 7:
                raise ValueError('command out of range of temp variables')
            
            insert = '@{}'.format(i) 

            assembly = [cmt, insert, 'D=A', '@5', 
                        'D=D+A', '@addr', 'M=D', '@SP', 
                        'M=M-1', 'A=M', 'D=M', 
                        '@addr', 'A=M', 'M=D']
        
        elif seg in ['local', 'argument', 'this', 'that']:

            #insert correct string for @seg and @i
            seg = segments[seg]
            insert_1 = '@{}'.format(i)
            insert_2 = '@{}'.format(seg)
            assembly = [cmt, insert_1, 'D=A', insert_2, 
                        'D=D+M', '@addr', 'M=D', '@SP', 
                        'M=M-1', 'A=M', 'D=M', '@addr', 
                        'A=M', 'M=D']
            
        else: 

            raise ValueError('Invalid pop command')

    #arithmetic and logic commands 
    elif cmd in ['add', 'sub']: 

        insert = stack_cmd[cmd]
        assembly = [cmt, '@SP', 'M=M-1', 'A=M', 
                    'D=M', 'A=A-1', insert, 'M=D']

    elif cmd == 'neg':

        assembly = [cmt, '@SP', 'A=M-1', 'M=-M']

    elif cmd in ['eq', 'lt', 'gt']:

        insert_1 = stack_cmd[cmd] 
        insert_2 = '@TRUE{}'.format(line_num)
        insert_3 = '@FALSE{}'.format(line_num)
        insert_4 = '(TRUE{})'.format(line_num)
        insert_5 = '(FALSE{})'.format(line_num)

        assembly = [cmt, '@SP', 'M=M-1', 'A=M', 'D=M',
                    'A=A-1','D=M-D',insert_2, insert_1,
                    '@SP','A=M-1', 'M=0', insert_3, 
                    '0;JMP', insert_4, '@SP', 'A=M-1', 
                    'M=-1', insert_5]


    elif cmd in ['and', 'or']:

        insert = stack_cmd[cmd]
        assembly = [cmt, '@SP', 'M=M-1', 'A=M', 'D=M',
                    'A=A-1', insert, 'M=D']


    elif cmd == 'not':

        assembly = [cmt, '@SP', 'A=M-1', 'M=!M']

    else:

        raise ValueError('Invalid Command')


    assembly.append('\n')
                    
    return assembly
    
