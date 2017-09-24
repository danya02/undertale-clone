0x000000:
    if !(> self.size 0.8d) goto 0x00003C
0x00001C:
    self.image_alpha = (- self.image_alpha 0.05d)
0x00003C:
    self.size = (+ self.size 0.15d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(< self.image_alpha 0.1d) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    self.image_angle = (+ self.image_angle 8s)
0x0000BC:
    exit
