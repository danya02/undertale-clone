0x000000:
    self.x = (- (+ self.xstart (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.ystart (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.image_alpha = (+ self.image_alpha 0.01d)
0x000090:
    exit
