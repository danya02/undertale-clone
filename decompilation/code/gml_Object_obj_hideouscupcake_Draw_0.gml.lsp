0x000000:
    self.siner = (+ self.siner 1s)
    self.siner2 = (+ self.siner2 1s)
    if !(< self.image_alpha 1s) goto 0x000064
0x000044:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000064:
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner2 (double 6s))) 1s))
    self.y = (+ self.y (* (sin[]:int32 (/ self.siner (double 8s))) 3s))
    call (draw_self_border_e[]:int32 )
    if !(< global.turntimer 2s) goto 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    exit
