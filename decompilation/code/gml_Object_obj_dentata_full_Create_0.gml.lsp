0x000000:
    self.siner = (random[]:int32 (var 360s))
    self.size = 1s
    self.halfsies = 0s
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 3s))) 3s) self.image_xscale)
    self.ssy = (* (cos[]:int32 (/ self.siner (double 3s))) 3s)
    if !(<= self.y 130s) goto 0x0000B4
0x0000A8:
    self.halfsies = 1s
0x0000B4:
    if !(>= self.y 190s) goto 0x0000D4
0x0000C8:
    self.halfsies = 2s
0x0000D4:
    self.maxer = 0s
    self.size = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 2s))) 0.02d))
0x000120:
    exit
