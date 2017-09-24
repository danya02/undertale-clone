0x000000:
    self.siner = (+ self.siner 1s)
    if !(< self.counter 20s) goto 0x00005C
0x00002C:
    self.image_blend = (make_color_hsv[]:int32 (var 244s) (var 100s) (* self.siner 12s))
0x00005C:
    if !(== self.con 2s) goto 0x0000E8
0x000070:
    if !(> self.counter 20s) goto 0x0000A8
0x000084:
    self.image_speed = 0.5d
    self.image_blend = 16777215
0x0000A8:
    self.counter = (+ self.counter 1s)
    if !(>= self.counter 30s) goto 0x0000E8
0x0000D4:
    call (event_user[]:int32 (var 3s))
0x0000E8:
    if !(== self.con 3s) goto 0x0001F0
0x0000FC:
    if !(== self.big 0s) goto 0x000170
0x000110:
    self.image_alpha = (- self.image_alpha 0.05d)
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
0x000170:
    if !(== self.big 1s) goto 0x0001F0
0x000184:
    self.aa = 0s
    self.image_alpha = (- self.image_alpha 0.05d)
    self.image_xscale = (+ self.image_xscale 0.2d)
    self.image_yscale = (+ self.image_yscale 0.2d)
0x0001F0:
    if !(== self.con 4s) goto 0x000210
0x000204:
    call (instance_destroy[]:int32 )
0x000210:
    exit
