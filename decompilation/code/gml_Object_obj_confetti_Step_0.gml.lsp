0x000000:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 3s))) 2s))
    self.timer = (- self.timer 1s)
    if !(< self.timer 20s) goto 0x00009C
0x00007C:
    self.image_alpha = (- self.image_alpha 0.05d)
0x00009C:
    if !(<= self.image_alpha 0.05d) goto 0x0000C4
0x0000B8:
    call (instance_destroy[]:int32 )
0x0000C4:
    exit
