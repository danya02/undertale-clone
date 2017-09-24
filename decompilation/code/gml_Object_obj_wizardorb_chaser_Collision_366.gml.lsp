0x000000:
    if !(< self.col 0s) goto 0x00010C
0x000014:
    self.x = (- self.x (random[]:int32 (var 2s)))
    other.x = (+ other.x (random[]:int32 (var 2s)))
    self.y = (- self.y (random[]:int32 (var 2s)))
    other.y = (+ other.y (random[]:int32 (var 2s)))
    self.hspeed = (- self.hspeed)
    other.hspeed = (- other.hspeed)
    self.vspeed = (- self.vspeed)
    other.vspeed = (- other.vspeed)
    self.col = 3s
    other.col = 3s
0x00010C:
    exit
