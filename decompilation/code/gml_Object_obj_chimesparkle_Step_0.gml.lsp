0x000000:
    if !(< self.timer 30s) goto 0x000034
0x000014:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x000034:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 20s) goto 0x0000A8
0x000060:
    self.image_alpha = (- self.image_alpha 0.04d)
    if !(< self.image_alpha 0.05d) goto 0x0000A8
0x00009C:
    call (instance_destroy[]:int32 )
0x0000A8:
    if !(> self.image_alpha 1198.image_alpha) goto 0x0000D0
0x0000C0:
    self.image_alpha = 1198.image_alpha
0x0000D0:
    exit
