0x000000:
    self.direction = (- self.direction 2s)
    self.sum = (scr_monstersum[]:int32 )
    self.size = (+ self.size 0.025d)
    self.image_xscale = self.size
    self.image_yscale = self.size
0x000068:
    exit
