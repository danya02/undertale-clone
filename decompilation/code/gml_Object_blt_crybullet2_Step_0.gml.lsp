0x000000:
    self.image_angle = (+ self.direction 90s)
    if !(== self.disappear 1s) goto 0x000074
0x00002C:
    self.image_alpha = (- self.image_alpha 0.08d)
    if !(< self.image_alpha 0.1d) goto 0x000074
0x000068:
    call (instance_destroy[]:int32 )
0x000074:
    exit
