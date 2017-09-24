0x000000:
    self.sum = (scr_monstersum[]:int32 )
    self.vspeed = -5s
    if !(> self.sum 1s) goto 0x00003C
0x000030:
    self.vspeed = -3s
0x00003C:
    self.direction = (+ self.direction (- (random[]:int32 (var 20s)) 10s))
    self.image_angle = self.direction
    self.image_speed = 0.5d
    self.dmg = 0s
    self.off = 0s
0x0000A4:
    exit
