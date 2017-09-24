0x000000:
    self.hspeed = (+ (random[]:int32 (var 4s)) 0.1d)
    self.hspeed = (* self.hspeed (choose[]:int32 (var 1s) (var -1s)))
    self.vspeed = 0s
    self.gravity_direction = 270s
    self.gravity = 0.1d
0x000080:
    exit
