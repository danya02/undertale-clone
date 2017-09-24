0x000000:
    if !(== global.debug 1s) goto 0x000124
0x000014:
    global.battlegroup = (+ 80s self.nnn)
    global.border = 0s
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    if !(== global.plot 998s) goto 0x000124
0x000070:
    stog.flag[10s] = 0s
    stog.flag[11s] = 0s
    stog.flag[12s] = 0s
    stog.flag[13s] = 0s
    global.entrance = 0s
    global.battlegroup = 82s
    [obj_mainchara].depth = -600s
    if !(== (instance_exists[]:int32 (var 142s)) 0s) goto 0x000124
0x000100:
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
0x000124:
    exit
