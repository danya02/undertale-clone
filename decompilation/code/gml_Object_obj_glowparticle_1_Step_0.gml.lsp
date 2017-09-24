0x000000:
    if !(== self.ap 0s) goto 0x000034
0x000014:
    self.image_alpha = (+ self.image_alpha 0.25d)
0x000034:
    if !(> self.image_alpha 0.6d) goto 0x00005C
0x000050:
    self.ap = 1s
0x00005C:
    self.direction = (+ self.direction (- (random[]:int32 (var 6s)) 3s))
    self.speed = (+ self.speed (- (random[]:int32 (var 0.04d)) 0.02d))
    self.image_alpha = (- self.image_alpha 0.01d)
    if !(< self.image_alpha 0.02d) goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    exit
