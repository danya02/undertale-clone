0x000000:
    if !(== self.lock 1s) goto 0x000028
0x000014:
    push (== 743.jumpstage 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000048
0x000030:
    [obj_heart].jumpstage = 2s
    [obj_heart].vspeed = 0s
0x000048:
    self.lock = 0s
0x000054:
    exit
