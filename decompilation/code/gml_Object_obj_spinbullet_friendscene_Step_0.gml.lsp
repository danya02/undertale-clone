0x000000:
    if !(== self.fade 1s) goto 0x000088
0x000014:
    self.f_timer = (+ self.f_timer 1s)
    if !(> self.f_timer 8s) goto 0x000060
0x000040:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000060:
    if !(< self.image_alpha 0.1d) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    exit
