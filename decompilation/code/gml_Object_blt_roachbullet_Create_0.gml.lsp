0x000000:
    self.dmg = 0s
    self.image_speed = 0.5d
    self.grchoice = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.grchoice 1s) goto 0x000060
0x000054:
    self.gravity_direction = 90s
0x000060:
    if !(== self.grchoice 0s) goto 0x000080
0x000074:
    self.graivty_direction = 270s
0x000080:
    self.gravity = (+ 0.2d (random[]:int32 (var 0.1d)))
    self.friction = 0.15d
    push self.x
    if !(< -5s (+ 0s:idealborder 10s)) goto 0x00010C
0x0000EC:
    self.hspeed = (+ 1s (random[]:int32 (var 2s)))
0x00010C:
    push self.x
    if !(> -5s (- 1s:idealborder 10s)) goto 0x000154
0x000134:
    self.hspeed = (- -1s (random[]:int32 (var 2s)))
0x000154:
    exit
