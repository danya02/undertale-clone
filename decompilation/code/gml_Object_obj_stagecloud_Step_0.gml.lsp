0x000000:
    self.image_alpha = (+ self.image_alpha 0.03d)
    self.timer = (+ self.timer 1s)
    if !(> self.timer 30s) goto 0x000094
0x00004C:
    self.image_alpha = (- self.image_alpha 0.07d)
    if !(< self.image_alpha 0.1d) goto 0x000094
0x000088:
    call (instance_destroy[]:int32 )
0x000094:
    exit
