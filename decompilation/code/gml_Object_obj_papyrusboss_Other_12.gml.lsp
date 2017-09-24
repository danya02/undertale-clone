0x000000:
    global.myfight = 19s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.flag[67s] = 0s
    if !(== self.killed 1s) goto 0x00006C
0x000058:
    stog.flag[67s] = 1s
0x00006C:
    stog.alarm[9s] = 45s
    global.plot = 100s
    call (caster_free[]:int32 (var -3s))
0x0000A0:
    exit
