0x000000:
    self.timer = (+ self.timer 1s)
    self.image_xscale = (+ self.image_xscale 1s)
    self.image_yscale = (+ self.image_yscale 1s)
    if !(> self.timer 7s) goto 0x00007C
0x00005C:
    self.image_alpha = (- self.image_alpha 0.2d)
0x00007C:
    if !(< self.image_alpha 0.2d) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    exit
