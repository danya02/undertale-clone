0x000000:
    self.mys = 0s
    self.mysadd = 0.1d
    self.mysv = 4s
    self.mysf = 4s
    stog.alarm[0s] = 1s
    self.count = 0s
    self.selfspeed = (random[]:int32 (var 1.5d))
    self.selfspeed2 = (+ (- self.selfspeed 0.1d) (random[]:int32 (var 0.1d)))
0x0000B4:
    exit
