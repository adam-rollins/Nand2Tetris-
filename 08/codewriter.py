'''
Generate lines of Hack Assembly code for a valid VM Command 
Author: Adam Rollins 
Date: May 7 2024
'''

def writer(cmd, seg, val, line, line_num, file):

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
            insert = '@{}'.format(val)
            assembly = [cmt, insert,'D=A','@SP','M=M+1', 'A=M-1','M=D']

        elif seg == 'pointer':
            #instert correct string for @THIS/THAT
            if val == '0':
                insert = '@THIS'
            elif val == '1':
                insert = '@THAT'
            else:
                raise ValueError('Value in pointer instruction must be 0 or 1')
            
            assembly = [cmt, insert,'D=M','@SP','M=M+1', 'A=M-1','M=D']

        elif seg == 'static':
            #use file name to name static variable 
            insert = '@{}.{}'.format(file,val) 
            assembly = [cmt, insert, 'D=M','@SP','M=M+1', 'A=M-1','M=D','@SP']

        elif seg == 'temp':

            if int(val) > 7:
                raise ValueError('Command out of range of temp variables in line ', line_num)
            
            insert = '@{}'.format(val)

            assembly = [cmt, insert, 'D=A','@5',
                        'D=D+A','@addr','M=D','A=M',
                        'D=M','@SP','M=M+1', 'A=M-1','M=D']
        
        elif seg in ['local', 'argument', 'this', 'that']: 
            #insert correct string for @seg and @i
            seg = segments[seg]
            insert_1 = '@{}'.format(seg)
            insert_2 = '@{}'.format(val)
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
            if val == '0':
                insert = '@THIS'
            elif val == '1':
                insert = '@THAT'
            else:
                raise ValueError('Value in pointer instruction must be 0 or 1')
            
            assembly = [cmt, '@SP', 'M=M-1', 'A=M', 
                        'D=M', insert, 'M=D']

        elif seg == 'static':
            
            insert = '@{}.{}'.format(file,val)
            assembly = [cmt, '@SP', 'M=M-1', 'A=M', 
                        'D=M', insert, 'M=D']

        elif seg == 'temp':

            if int(val) > 7:
                raise ValueError('command out of range of temp variables')
            
            insert = '@{}'.format(val) 

            assembly = [cmt, insert, 'D=A', '@5', 
                        'D=D+A', '@addr', 'M=D', '@SP', 
                        'M=M-1', 'A=M', 'D=M', 
                        '@addr', 'A=M', 'M=D']
        
        elif seg in ['local', 'argument', 'this', 'that']:

            #insert correct string for @seg and @i
            seg = segments[seg]
            insert_1 = '@{}'.format(val)
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

    


#program control 
    

    #label (label)
    elif cmd == 'label':

        insert = '(' + seg +  ')'

        assembly = [cmt, insert] 

    #goto (label)
    elif cmd == 'goto':

        insert = '@' + seg
        assembly = [cmt, insert, '0;JMP']

    #if-goto (label)
    elif cmd == 'if-goto': 

        insert = '@' + seg 
        assembly = [cmt, '@SP', 'M=M-1', 'A=M', 'D=M' , insert, 'D;JNE']

    #function (f) (n)
    elif cmd == 'function':
        
        insert_0 = '({}$START)'.format(seg.upper())
        insert_1 = '@{}'.format(val)
        insert_2 = '@{}_n'.format(seg.lower())  
        insert_3 = '@{}_i'.format(seg.lower())
        insert_4 = '({}$LOOP)'.format(seg.upper())
        insert_5 = '({}$END)'.format(seg.upper())
        insert_6 = '@{}$LOOP'.format(seg.upper())
        insert_7 = '@{}$END'.format(seg.upper())

        assembly = [cmt, insert_0, insert_1, 'D=A', insert_2, 'M=D', '@0',
                    'D=A', insert_3, 'M=D', insert_4, insert_3, 
                    'D=M', insert_2, 'D=D-M', insert_7, 'D;JEQ',
                    '@0', 'D=A', '@LCL', 'A=M', 'M=D', '@SP', 
                    'M=M+1', insert_3, 'M=M+1', insert_6, '0;JMP',
                    insert_5]


    #call (f) (m)
    elif cmd == 'call':

        

        insert_1 = '@{}$RETURN{}'.format(seg.upper(), line_num)
        insert_2 = '@{}'.format(val)
        insert_3 = '@{}$START'.format(seg.upper())
        insert_4 = '({}$RETURN{})'.format(seg.upper(), line_num)

        assembly = [cmt, insert_1, 'D=A', '@SP', 'A=M', 'M=D', 
                    '@SP', 'M=M+1', '@LCL', 'D=M', '@SP', 'A=M',
                    'M=D', '@SP', 'M=M+1', '@ARG', 'D=M', '@SP', 
                    'A=M', 'M=D', '@SP', 'M=M+1', '@THIS', 'D=M', 
                    '@SP', 'A=M', 'M=D', '@SP','M=M+1', '@THAT', 
                    'D=M', '@SP', 'A=M', 'M=D', '@SP', 'M=M+1', 
                    insert_2, 'D=A', '@SP', 'D=M-D','@5', 'D=D-A', 
                    '@ARG', 'M=D', '@SP', 'D=M', '@LCL','M=D', 
                    insert_3,'0;JMP', insert_4] 

    #return 
    elif cmd == 'return': 

        assembly = [cmt, '@LCL', 'D=M', '@end_frame', 'M=D', 
                    '@5', 'D=A', '@end_frame', 'A=M-D', 'D=M',
                    '@ret_addr', 'M=D', '@SP', 'A=M-1', 'D=M', 
                    '@ARG', 'A=M', 'M=D', '@ARG', 'D=M+1', '@SP',
                    'M=D','@end_frame', 'A=M-1', 'D=M', '@THAT', 
                    'M=D','@2', 'D=A', '@end_frame', 'A=M-D', 
                    'D=M', '@THIS', 'M=D', '@3', 'D=A', '@end_frame', 
                    'A=M-D', 'D=M', '@ARG', 'M=D', '@4', 'D=A', '@end_frame',
                    'A=M-D', 'D=M', '@LCL', 'M=D', '@ret_addr', 'A=M', '0;JMP']
        

    else:

        raise ValueError('Invalid Command')
    
    assembly.append('\n')
                    
    return assembly
    
