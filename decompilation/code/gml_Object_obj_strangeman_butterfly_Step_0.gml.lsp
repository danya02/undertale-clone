0x000000:
    self.image_angle = self.direction
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 2s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 2s))) 2s))
    self.siner = (+ self.siner (random[]:int32 (var 2s)))
0x0000A4:
    exit
