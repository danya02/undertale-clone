0x000000:
    if !(< self.image_xscale 2s) goto 0x000030
0x000014:
    self.image_xscale = (+ self.image_xscale self.xspeed)
0x000030:
    if !(== self.shimmy 1s) goto 0x0000E0
0x000044:
    self.depth = 5s
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 9s))) 1s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 7s))) 0.5d))
0x0000E0:
    exit
