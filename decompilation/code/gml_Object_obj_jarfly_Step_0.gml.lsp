0x000000:
    self.x = (+ self.x (/ (sin[]:int32 (/ self.siner (double 4s))) (double 2s)))
    self.y = (+ self.y (/ (cos[]:int32 (/ self.siner (double 4s))) (double 2s)))
    self.siner = (+ self.siner 1s)
    if !(bool (instance_exists[]:int32 (var 305s))) goto 0x00021C
0x0000A8:
    self.image_alpha = 305.image_alpha
    if !(> self.x 305.bbox_right) goto 0x000110
0x0000D0:
    self.x = (- self.x 4s)
    if !(> self.hspeed 0s) goto 0x000110
0x0000FC:
    self.hspeed = (- self.hspeed)
0x000110:
    if !(< self.x 305.bbox_left) goto 0x000168
0x000128:
    self.x = (+ self.x 4s)
    if !(< self.hspeed 0s) goto 0x000168
0x000154:
    self.hspeed = (- self.hspeed)
0x000168:
    if !(< self.y 305.bbox_top) goto 0x0001C0
0x000180:
    self.y = (+ self.y 4s)
    if !(< self.vspeed 0s) goto 0x0001C0
0x0001AC:
    self.vspeed = (- self.vspeed)
0x0001C0:
    if !(> self.y 305.bbox_bottom) goto 0x000218
0x0001D8:
    self.y = (- self.y 4s)
    if !(> self.vspeed 0s) goto 0x000218
0x000204:
    self.vspeed = (- self.vspeed)
0x000218:
    goto 0x000228
0x00021C:
    call (instance_destroy[]:int32 )
0x000228:
    exit
