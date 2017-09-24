0x000000:
    if !(== self.fade 1s) goto 0x000074
0x000014:
    self.image_alpha = (- self.image_alpha 0.08d)
    self.image_xscale = (- self.image_xscale 0.06d)
    self.x = (+ self.x 15.8d)
0x000074:
    if !(< self.image_xscale 0.08d) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
