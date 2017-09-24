0x000000:
    self.siner = (+ self.siner 1s)
    if !(< self.size 1s) goto 0x00004C
0x00002C:
    self.size = (+ self.size 0.1d)
0x00004C:
    self.image_angle = (* (sin[]:int32 (/ self.siner (double 4s))) 12s)
    self.image_xscale = (+ self.size (* (sin[]:int32 (/ self.siner (double 2s))) 0.1d))
    self.image_yscale = (+ self.size (* (sin[]:int32 (/ self.siner (double 2s))) 0.1d))
0x0000F8:
    exit
