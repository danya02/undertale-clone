0x000000:
    if !(== global.phasing 0s) goto 0x000040
0x000014:
    self.x = self.xprevious
    self.y = self.yprevious
    self.moving = 0s
0x000040:
    exit
