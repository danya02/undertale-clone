0x000000:
    if !(== self.turts 0s) goto 0x000020
0x000014:
    [obj_toroverworld3].direction = 0s
0x000020:
    if !(== self.turts 1s) goto 0x000040
0x000034:
    [obj_toroverworld3].direction = 90s
0x000040:
    if !(== self.turts 9s) goto 0x000060
0x000054:
    [obj_toroverworld3].direction = 0s
0x000060:
    if !(== self.turts 10s) goto 0x0000AC
0x000074:
    pushenv 861s 0x0000A8
0x00007C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 40s))
0x0000A8:
    popenv 0x00007C
0x0000AC:
    if !(== self.turts 13s) goto 0x0000CC
0x0000C0:
    self.conversation = 8s
0x0000CC:
    stog.alarm[5s] = 12s
    self.turts = (+ self.turts 1s)
0x0000F8:
    exit
