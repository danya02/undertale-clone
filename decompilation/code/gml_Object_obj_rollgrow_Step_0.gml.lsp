0x000000:
    self.depth = (- 50000 (+ (* self.y 10s) (* self.sprite_height 4s)))
    self.xchange = (abs[]:int32 self.hspeed)
    self.ychange = (abs[]:int32 self.vspeed)
    self.tchange = (+ self.xchange self.ychange)
    if !(< self.size 10s) goto 0x0000D0
0x000098:
    self.size = (+ self.size (/ self.tchange (+ (* self.size 10s) 20s)))
0x0000D0:
    self.angle = (+ self.angle (/ (* self.tchange 30s) (* self.size 10s)))
    self.image_xscale = self.size
    self.image_yscale = self.size
0x000128:
    exit
