0x000000:
    if !(== self.parent 1s) goto 0x00009C
0x000014:
    stog.alarm[4s] = 26s
    self.speed = (+ 2s (random[]:int32 (var 1.5d)))
    self.g = (floor[]:int32 (random[]:int32 (var 2s)))
    self.rotdir = 0s
    self.startdir = (scr_perpendicular[]:int32 )
    self.startspeed = self.speed
0x00009C:
    self.visible = 1s
    self.direction = self.startdir
    self.speed = self.startspeed
0x0000C8:
    exit
