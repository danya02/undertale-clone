0x000000:
    self.con = 0s
    self.image_index = 6s
    self.x = (- self.xstart self.shudder)
    self.shudder = (* self.shudder -1s)
    if !(> self.shudder 0s) goto 0x00007C
0x000060:
    self.shudder = (- self.shudder 1s)
    goto 0x000094
0x00007C:
    self.shudder = (+ self.shudder 1s)
0x000094:
    if !(!= self.shudder 0s) goto 0x0000C0
0x0000A8:
    stog.alarm[6s] = 8s
    goto 0x0000CC
0x0000C0:
    self.doomcon = 1s
0x0000CC:
    exit
