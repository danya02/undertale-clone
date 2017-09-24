0x000000:
    self.shaken = 0s
    self.bx = 0s
    self.bx2 = 0s
    self.bxspeed = 4s
    self.timer = 0s
    self.image_speed = 0s
    self.shaker = 10s
    self.b_al = 1s
    self.sfx1 = (caster_load[]:int32 (var "music/sfx/sfx_abreak.ogg"))
    self.sfx2 = (caster_load[]:int32 (var "music/sfx/sfx_abreak2.ogg"))
    call (caster_play[]:int32 (var 0.95d) (var 0.8d) self.sfx1)
0x0000CC:
    exit
