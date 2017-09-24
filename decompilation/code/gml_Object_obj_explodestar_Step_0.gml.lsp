0x000000:
    if !(== self.big 0s) goto 0x000074
0x000014:
    self.image_alpha = (- self.image_alpha 0.05d)
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
0x000074:
    if !(== self.big 1s) goto 0x0000F4
0x000088:
    self.aa = 0s
    self.image_alpha = (- self.image_alpha 0.05d)
    self.image_xscale = (+ self.image_xscale 0.2d)
    self.image_yscale = (+ self.image_yscale 0.2d)
0x0000F4:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 19s) goto 0x00012C
0x000120:
    call (instance_destroy[]:int32 )
0x00012C:
    exit
