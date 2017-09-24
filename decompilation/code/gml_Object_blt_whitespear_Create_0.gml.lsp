0x000000:
    self.dmg = 0s
    self.rr = (round[]:int32 (random[]:int32 (var 1s)))
    push -5s
    self.y = (+ 2s:idealborder 7s)
    if !(== self.rr 1s) goto 0x0000AC
0x000060:
    push -5s
    self.x = (+ 1s:idealborder 20s)
    self.hspeed = -7s
    self.gravity = 0.13d
    self.gravity_direction = 0s
0x0000AC:
    if !(== self.rr 0s) goto 0x00010C
0x0000C0:
    push -5s
    self.x = (- 0s:idealborder 20s)
    self.hspeed = 7s
    self.gravity = 0.13d
    self.gravity_direction = 180s
0x00010C:
    exit
