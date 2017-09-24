0x000000:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000050
0x000030:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000064
0x000050:
    self.shudder = (- self.shudder)
0x000064:
    stog.alarm[0s] = 2s
    if !(== self.shudder 0s) goto 0x0000A4
0x00008C:
    stog.alarm[0s] = 0s
    exit
0x0000A4:
    exit
