0x000000:
    if !(== self.con 2s) goto 0x000038
0x000014:
    self.con = 3s
    self.speedup = 1s
    self.follow = 1s
0x000038:
    if !(== self.con 1s) goto 0x0000A0
0x00004C:
    self.hspeed = 0s
    self.sprite_index = self.usprite
    self.image_index = 0s
    self.image_speed = 0s
    self.con = 2s
    stog.alarm[3s] = 110s
0x0000A0:
    exit
