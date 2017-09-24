0x000000:
    self.asgorex = (+ self.xstart self.shudder)
    self.shudder = (- self.shudder)
    if !(> self.shudder 0s) goto 0x00005C
0x000044:
    self.shudder = (- self.shudder 2s)
0x00005C:
    stog.alarm[2s] = 2s
    if !(< (abs[]:int32 self.shudder) 2s) goto 0x0000DC
0x00008C:
    self.shudder = 0s
    if !(== self.hearts 1s) goto 0x0000BC
0x0000AC:
    self.con = 30s
    goto 0x0000C8
0x0000BC:
    self.con = 58s
0x0000C8:
    stog.alarm[2s] = -1s
0x0000DC:
    exit
