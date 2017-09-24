0x000000:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 6s) goto 0x00006C
0x00002C:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(<= self.image_alpha 0s) goto 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 2s))))
0x0000B4:
    exit
