0x000000:
    self.halt = 0s
    self.myinteract = 0s
    self.stopped = 1s
    self.movementtype = self.argument0
    self.facing = -1s
    if !(== self.movementtype 2s) goto 0x000060
0x000054:
    self.facing = 0s
0x000060:
    exit
