0x000000:
    if !(< self.speed 6s) goto 0x000068
0x000014:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(> self.ang 1s) goto 0x000068
0x000048:
    self.ang = (- self.ang 0.5d)
0x000068:
    self.image_angle = (+ self.image_angle self.ang)
    if !(< self.image_alpha 0.05d) goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    exit
