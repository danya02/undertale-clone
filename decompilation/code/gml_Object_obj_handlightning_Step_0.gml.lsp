0x000000:
    self.image_alpha = (+ self.image_alpha 0.3d)
    self.timer = (+ self.timer 1s)
    self.siner = (+ self.siner 1s)
    if !(> self.timer 5s) goto 0x0000A4
0x000064:
    self.image_alpha = (- self.image_alpha 0.5d)
    if !(< self.image_alpha 0s) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 150s) (* self.siner 8s))
    if !(== self.type 0s) goto 0x000140
0x0000E8:
    self.image_angle = (+ self.image_angle 12s)
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
0x000140:
    if !(== self.type 1s) goto 0x000174
0x000154:
    self.image_xscale = (+ self.image_xscale 0.1d)
0x000174:
    exit
