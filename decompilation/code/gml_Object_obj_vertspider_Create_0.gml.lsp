0x000000:
    self.op = 363s
    self.y = (+ (- (int32 self.op):yzero (* (int32 self.op):yspace 2s)) (int32 self.op):yoff)
    self.fakey = self.y
    self.xfactor = (* (floor[]:int32 (random[]:int32 (/ (int32 self.op):xlen (double 10s)))) 22s)
    self.x = (+ (- (int32 self.op):xmid (int32 self.op):xlen) self.xfactor)
    self.off = 1s
    self.fakeyamt = 0s
    self.fakeyoff = 0s
    self.move = 1s
    stog.alarm[0s] = 2s
0x000134:
    exit
