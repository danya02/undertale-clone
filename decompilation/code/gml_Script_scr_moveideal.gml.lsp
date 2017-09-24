0x000000:
    if !(> self.argument0 0s) goto 0x0000E4
0x000014:
    if !(< self.idealstep self.argument0) goto 0x000044
0x00002C:
    self.idealstep = (+ self.idealstep 1s)
0x000044:
    self.idealxdist = (/ (- self.idealxx2 self.x) self.argument0)
    self.idealydist = (/ (- self.idealyy2 self.y) self.argument0)
    self.x = (+ self.x (* self.idealxdist self.idealstep))
    self.y = (+ self.y (* self.idealydist self.idealstep))
0x0000E4:
    exit
