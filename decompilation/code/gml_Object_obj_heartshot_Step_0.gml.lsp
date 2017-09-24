0x000000:
    if !(< self.y 0s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.image_yscale = (+ self.image_yscale 0.2d)
    self.vspeed = (- self.vspeed 0.2d)
0x000060:
    exit
