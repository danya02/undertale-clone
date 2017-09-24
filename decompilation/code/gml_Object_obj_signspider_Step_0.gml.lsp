0x000000:
    if !(< self.x 580s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000048
0x000030:
    self.hspeed = (+ self.hspeed 1s)
0x000048:
    if !(< self.x 580s) goto 0x000084
0x00005C:
    if !(== self.hspeed 0s) goto 0x000084
0x000070:
    push (== self.con 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x000098
0x00008C:
    self.con = 1s
0x000098:
    exit
