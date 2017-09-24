0x000000:
    if !(== self.shakeboy 1s) goto 0x0000A4
0x000014:
    self.shake = (+ self.shake 0.2d)
    self.x = (+ self.x (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.y = (+ self.y (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
0x0000A4:
    exit
