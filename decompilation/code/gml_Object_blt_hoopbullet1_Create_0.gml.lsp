0x000000:
    self.dmg = 0s
    self.bullettype = 0s
    push self.x
    if !(< -5s (+ 0s:idealborder 20s)) goto 0x000050
0x000040:
    self.hspeed = 2s
    goto 0x00005C
0x000050:
    self.hspeed = -2s
0x00005C:
    self.gravitystart = (+ 0.1d (random[]:int32 (var 0.2d)))
    self.gravity = self.gravitystart
    self.gravitywave = 1s
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.r 0s) goto 0x0000E8
0x0000DC:
    self.gravity_direction = 270s
0x0000E8:
    if !(== self.r 1s) goto 0x000108
0x0000FC:
    self.gravity_direction = 90s
0x000108:
    stog.alarm[0s] = 10s
    stog.alarm[1s] = 1s
    stog.alarm[2s] = 4s
    stog.alarm[3s] = 8s
    self.sterile = 0s
    push self.y
    if !(> -5s (- 3s:idealborder 20s)) goto 0x0001A4
0x00018C:
    self.y = (- self.y 20s)
0x0001A4:
    push self.y
    if !(< -5s (+ 2s:idealborder 20s)) goto 0x0001E4
0x0001CC:
    self.y = (+ self.y 20s)
0x0001E4:
    exit
