0x000000:
    if !(== global.interact 0s) goto 0x00007C
0x000014:
    global.interact = 1s
    global.battlegroup = 44s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    if !(< global.plot 111s) goto 0x000070
0x000064:
    global.plot = 111s
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    exit
