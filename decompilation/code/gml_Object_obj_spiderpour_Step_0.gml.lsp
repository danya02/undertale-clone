0x000000:
    if !(< self.image_xscale 1s) goto 0x000054
0x000014:
    self.image_xscale = (+ self.image_xscale 0.05d)
    self.image_yscale = (+ self.image_yscale 0.05d)
0x000054:
    if !(> self.y (- 761.y 15s)) goto 0x000098
0x000074:
    call (instance_destroy[]:int32 )
    [obj_spiderb_body].purple = (+ 362.purple 4s)
0x000098:
    self.image_angle = (+ self.direction 90s)
0x0000B0:
    exit
