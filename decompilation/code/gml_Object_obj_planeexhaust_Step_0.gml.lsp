0x000000:
    self.image_angle = (+ self.image_angle 1s)
    self.size = (+ self.size 0.05d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 2s))))
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 2s))))
    if !(> self.siner 7s) goto 0x000104
0x0000E4:
    self.image_alpha = (- self.image_alpha 0.04d)
0x000104:
    if !(< self.image_alpha 0.05d) goto 0x00012C
0x000120:
    call (instance_destroy[]:int32 )
0x00012C:
    exit
