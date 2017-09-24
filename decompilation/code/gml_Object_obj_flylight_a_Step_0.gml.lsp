0x000000:
    self.size = (+ self.size 0.04d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(> self.y 400s) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    self.image_angle = self.direction
0x000070:
    exit
