0x000000:
    self.size = (+ self.size 0.1d)
    if !(> self.size self.maxsize) goto 0x000058
0x000038:
    self.image_alpha = (- self.image_alpha 0.2d)
0x000058:
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(< self.image_alpha 0.06d) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    self.x = (- (+ self.xstart 3s) (random[]:int32 (var 6s)))
    self.y = (- (+ self.ystart 3s) (random[]:int32 (var 6s)))
0x0000F8:
    exit
