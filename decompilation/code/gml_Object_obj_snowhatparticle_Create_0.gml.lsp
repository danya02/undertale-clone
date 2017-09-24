0x000000:
    self.hspeed = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 2s)))
    self.vspeed = 3s
    self.sc = 1s
0x00004C:
    exit
