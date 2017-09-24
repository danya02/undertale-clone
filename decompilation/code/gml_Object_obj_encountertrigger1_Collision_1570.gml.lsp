0x000000:
    if !(== global.interact 0s) goto 0x000064
0x000014:
    global.battlegroup = 3s
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    stog.flag[30s] = 1s
    call (instance_destroy[]:int32 )
0x000064:
    exit
