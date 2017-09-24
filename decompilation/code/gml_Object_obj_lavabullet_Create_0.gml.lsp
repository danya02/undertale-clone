0x000000:
    self.image_speed = 0s
    if !(< self.x 300s) goto 0x000090
0x000020:
    self.type = 0s
    self.hspeed = (+ 6s (random[]:int32 (var 2s)))
    self.gravity = 0.17d
    self.gravity_direction = 180s
    self.vspeed = (+ -1s (random[]:int32 (var 2s)))
    goto 0x000108
0x000090:
    self.type = 1s
    self.image_index = 1s
    self.hspeed = (- -6s (random[]:int32 (var 2s)))
    self.gravity = 0.17d
    self.gravity_direction = 0s
    self.vspeed = (+ -1s (random[]:int32 (var 2s)))
0x000108:
    self.off = 0s
0x000114:
    exit
