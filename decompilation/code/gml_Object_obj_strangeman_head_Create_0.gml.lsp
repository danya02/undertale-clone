0x000000:
    self.image_speed = 0.5d
    self.direction = (point_direction[]:int32 743.y 743.x self.y self.x)
    self.direction = (+ self.direction (- (random[]:int32 (var 50s)) (random[]:int32 (var 50s))))
    if !(< self.direction 165s) goto 0x0000B4
0x000090:
    self.direction = (+ self.direction (- 170s self.direction))
0x0000B4:
    if !(> self.direction 270s) goto 0x0000EC
0x0000C8:
    self.direction = (- self.direction (- self.direction 270s))
0x0000EC:
    self.speed = (+ 2s (random[]:int32 (var 0.5d)))
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.siner = (random[]:int32 (var 360s))
    self.sf = (+ 1s (random[]:int32 (var 1s)))
    self.sf2 = (+ 1s (random[]:int32 (var 1s)))
    self.s = (+ 3s (random[]:int32 (var 1s)))
    self.siner2 = (random[]:int32 (var 360s))
    self.siner2v = (+ 0.5d (random[]:int32 (var 1.5d)))
    self.hmem = self.hspeed
    self.counter = 0s
    self.dmg = 9s
0x000214:
    exit
