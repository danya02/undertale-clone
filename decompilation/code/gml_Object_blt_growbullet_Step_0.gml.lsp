0x000000:
    self.angle = (+ self.direction 90s)
    self.image_angle = self.angle
    self.image_xscale = (/ self.speed (double 3s))
    self.image_yscale = (/ self.speed (double 3s))
    if !(== self.blue 3s) goto 0x0000D8
0x000074:
    push -1s
    stog.alarm[(+ 7s:alarm 0.5d)] = 7s
    self.image_xscale = (/ self.speed (double 2s))
    self.image_yscale = (/ self.speed (double 2s))
0x0000D8:
    if !(< global.turntimer 1s) goto 0x0000F8
0x0000EC:
    global.mnfight = 3s
0x0000F8:
    push -1s
    if !(< 7s:alarm 10s) goto 0x000134
0x000114:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000134:
    exit
