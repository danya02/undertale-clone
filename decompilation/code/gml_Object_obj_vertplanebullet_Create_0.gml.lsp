0x000000:
    self.image_speed = 0s
    self.vspeed = (+ 7s (random[]:int32 (var 2s)))
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x000070
0x000050:
    self.vspeed = (+ 6s (random[]:int32 (var 1s)))
0x000070:
    self.y = 50s
    self.parent = 327s
    stog.alarm[0s] = 10s
    self.off = 0s
    self.green = 0s
    self.pop = (scr_monstersum[]:int32 )
0x0000C4:
    exit
