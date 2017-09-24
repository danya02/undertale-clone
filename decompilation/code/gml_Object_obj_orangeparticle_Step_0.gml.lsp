0x000000:
    if !(> self.goalsize (+ self.size 0.1d)) goto 0x000048
0x000028:
    self.size = (+ self.size 0.03d)
0x000048:
    if !(< self.goalsize (- self.size 0.1d)) goto 0x000090
0x000070:
    self.size = (- self.size 0.03d)
0x000090:
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_alpha = (- self.image_alpha 0.01d)
    if !(< self.image_alpha 0.01d) goto 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner self.gg)) self.rr))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner self.gg)) self.vv))
0x000188:
    exit
