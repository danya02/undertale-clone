0x000000:
    self.gravity = (+ 0.2d (random[]:int32 (var 0.2d)))
    self.hspeed = (random[]:int32 (var 2s))
    if !(> self.x 100s) goto 0x000074
0x00005C:
    self.hspeed = (- self.hspeed 1s)
0x000074:
    self.ang = (- 3s (random[]:int32 (var 6s)))
    self.maxy = (+ 130s (random[]:int32 (var 20s)))
0x0000B4:
    exit
