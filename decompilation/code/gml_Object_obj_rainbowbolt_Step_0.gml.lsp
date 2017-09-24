0x000000:
    self.x = (- (+ self.thisx (random[]:int32 (var 6s))) (random[]:int32 (var 6s)))
    self.y = (- (+ self.thisy (random[]:int32 (var 6s))) (random[]:int32 (var 6s)))
    if !(== self.giga 1s) goto 0x000114
0x000084:
    self.ss = (- self.ss 0.5d)
    self.x = (- (+ self.thisx (random[]:int32 (var 12s))) (random[]:int32 (var 12s)))
    self.y = (- (+ self.thisy (random[]:int32 (var 12s))) (random[]:int32 (var 12s)))
0x000114:
    self.ss = (+ self.ss 1s)
    if !(> self.ss 2s) goto 0x0001C4
0x000140:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.5d) goto 0x00019C
0x00017C:
    self.image_xscale = (- self.image_xscale 0.2d)
0x00019C:
    if !(< self.image_alpha 0.1d) goto 0x0001C4
0x0001B8:
    call (instance_destroy[]:int32 )
0x0001C4:
    self.add = (+ self.add 10s)
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 210s) (+ self.ac self.add))
0x000210:
    exit
