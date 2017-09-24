0x000000:
    self.image_alpha = (+ self.image_alpha 0.025d)
    self.x = (- (+ self.xstart (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.ystart (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x000090:
    exit
