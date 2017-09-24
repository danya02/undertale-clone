0x000000:
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    if !(== global.bmenuno 3s) goto 0x000038
0x00002C:
    global.msc = 9s
0x000038:
    if !(== global.bmenuno 3.5d) goto 0x000060
0x000054:
    global.msc = 10s
0x000060:
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000094:
    exit
