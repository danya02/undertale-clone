0x000000:
    if !(> global.plot 9.5d) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    goto 0x000090
0x00002C:
    if !(== global.interact 1s) goto 0x00005C
0x000040:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000090
0x000064:
    global.plot = 9.6d
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000090:
    exit
