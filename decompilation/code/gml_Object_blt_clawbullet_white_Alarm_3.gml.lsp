0x000000:
    if !(== self.parent 1s) goto 0x0001F8
0x000014:
    stog.alarm[4s] = 6s
    self.speed = (+ 1.5d (random[]:int32 (var 0.5d)))
    self.g = (floor[]:int32 (random[]:int32 (var 2s)))
    push self.y
    if !(< -5s 2s:idealborder) goto 0x0000F4
0x000098:
    push self.x
    if !(> -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s)))) goto 0x0000E8
0x0000D8:
    self.g = 0s
    goto 0x0000F4
0x0000E8:
    self.g = 1s
0x0000F4:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000170
0x000114:
    push self.x
    if !(> -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s)))) goto 0x000164
0x000154:
    self.g = 1s
    goto 0x000170
0x000164:
    self.g = 0s
0x000170:
    if !(== self.g 1s) goto 0x0001A4
0x000184:
    self.rotdir = (+ 1s (random[]:int32 (var 1s)))
0x0001A4:
    if !(== self.g 0s) goto 0x0001D8
0x0001B8:
    self.rotdir = (- -1s (random[]:int32 (var 1s)))
0x0001D8:
    self.startdir = (scr_perpendicular[]:int32 )
    self.startspeed = self.speed
0x0001F8:
    self.friction = -0.1d
    self.visible = 1s
    self.direction = self.startdir
    self.speed = self.startspeed
0x000238:
    exit
