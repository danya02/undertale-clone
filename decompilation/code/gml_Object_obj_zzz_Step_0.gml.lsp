0x000000:
    self.stage = (+ self.stage 1s)
    if !(< self.stage 40s) goto 0x000060
0x00002C:
    if !(< self.image_alpha 1s) goto 0x000060
0x000040:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000060:
    if !(> self.stage 50s) goto 0x0000B4
0x000074:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(<= self.image_alpha 0s) goto 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    self.x = (+ self.x (* (sin[]:int32 (/ self.stage (double 8s))) 0.5d))
    if !(>= self.image_index 2s) goto 0x000114
0x000108:
    self.image_speed = 0s
0x000114:
    exit
