def getBin16(a):
    val = int(a.replace('@','')) 
    bin_ = '{0:016b}'.format(val)
    return bin_ 
    
#b = getBin16('@2')
#print(b) 