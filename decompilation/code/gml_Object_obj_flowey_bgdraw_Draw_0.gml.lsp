0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x0000F8
0x000020:
    self.siner2 = (+ self.siner self.i)
    stog.background_alpha[(int32 self.i)] = (+ 0.5d (* (sin[]:int32 (/ self.siner2 (double 8s))) 0.4d))
    push -1s
    stog.background_x[(+ (int32 self.i):background_x (* (sin[]:int32 (/ self.siner2 (double 8s))) 1s))] = (int32 self.i)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000F8:
    self.siner = (+ self.siner 1s)
0x000110:
    exit
