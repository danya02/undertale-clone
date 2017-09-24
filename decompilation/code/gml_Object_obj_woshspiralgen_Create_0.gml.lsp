0x000000:
    self.blue = 1s
    self.dmg = 7s
    self.rate = global.firingrate
    stog.alarm[0s] = self.rate
    self.longnote = 0s
    self.direction = 0s
    stog.alarm[0s] = 6s
    self.turn = 5s
    self.green = (+ -1s (random[]:int32 (var 6s)))
    self.cleaner = 0s
    self.backwards = 0s
    self.sum = (scr_monstersum[]:int32 )
    self.siner = (random[]:int32 (var 30s))
    self.siner2 = (random[]:int32 (var 30s))
0x0000F0:
    exit
