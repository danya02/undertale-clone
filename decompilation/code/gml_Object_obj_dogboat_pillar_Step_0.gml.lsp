0x000000:
    self.timer = (+ self.timer 1s)
    if !(< self.timer 5s) goto 0x000094
0x00002C:
    if !(< self.image_yscale 1s) goto 0x000060
0x000040:
    self.image_yscale = (+ self.image_yscale 0.25d)
0x000060:
    if !(< self.image_alpha 1s) goto 0x000094
0x000074:
    self.image_alpha = (+ self.image_alpha 0.15d)
0x000094:
    if !(> self.timer 6s) goto 0x0000E8
0x0000A8:
    self.image_yscale = (- self.image_yscale 0.25d)
    self.image_alpha = (- self.image_alpha 0.2d)
0x0000E8:
    if !(> self.timer 9s) goto 0x000108
0x0000FC:
    call (instance_destroy[]:int32 )
0x000108:
    exit
