0x000000:
    if !(> self.shsh 0s) goto 0x000088
0x000014:
    self.x = (- (+ self.xstart (random[]:int32 self.shsh)) (random[]:int32 self.shsh))
    self.y = (- (+ self.ystart (random[]:int32 self.shsh)) (random[]:int32 self.shsh))
    goto 0x0000A8
0x000088:
    self.x = self.xstart
    self.y = self.ystart
0x0000A8:
    exit
