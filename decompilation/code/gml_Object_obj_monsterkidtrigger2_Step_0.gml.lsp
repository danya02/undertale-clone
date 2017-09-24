0x000000:
    if !(== self.conversation 1s) goto 0x00007C
0x000014:
    self.t = 0s
    pushenv 1120s 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    [obj_townnpc_monsterkid1].hspeed = 6s
    if !(< 1570.y (+ 1481.y 10s)) goto 0x000070
0x000064:
    [obj_townnpc_monsterkid1].vspeed = 2s
0x000070:
    global.plot = 104s
0x00007C:
    exit
