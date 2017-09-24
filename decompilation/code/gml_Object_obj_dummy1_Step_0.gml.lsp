0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (< global.plot 6s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000FC
0x000030:
    stog.flag[10s] = 0s
    stog.flag[11s] = 0s
    stog.flag[12s] = 0s
    stog.flag[13s] = 0s
    global.entrance = 0s
    global.battlegroup = 2s
    [obj_mainchara].depth = -600s
    if !(== (instance_exists[]:int32 (var 142s)) 0s) goto 0x0000E4
0x0000C0:
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
0x0000E4:
    global.plot = 6s
    self.myinteract = 0s
0x0000FC:
    call (script_execute[]:int32 (var 113s))
0x000110:
    exit
