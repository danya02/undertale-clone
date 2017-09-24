0x000000:
    self.image_index = 0s
    self.image_speed = 0s
    self.vspeed = -4s
    self.friction = 0.1d
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x000070
0x00005C:
    self.vspeed = 4.2d
0x000070:
    self.sinr = 0s
    self.c = 0s
    self.dmg = 6s
    stog.alarm[0s] = 40s
0x0000A8:
    exit
