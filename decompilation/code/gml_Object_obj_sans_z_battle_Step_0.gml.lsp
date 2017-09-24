0x000000:
    self.hspeed = 2s
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 4s))))
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 4s))))
    if !(< self.image_xscale 1s) goto 0x0000B8
0x000098:
    self.image_xscale = (+ self.image_xscale 0.04d)
0x0000B8:
    if !(< self.image_yscale 1s) goto 0x0000EC
0x0000CC:
    self.image_yscale = (+ self.image_yscale 0.04d)
0x0000EC:
    if !(> self.siner 60s) goto 0x000148
0x000100:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.1d) goto 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    exit
