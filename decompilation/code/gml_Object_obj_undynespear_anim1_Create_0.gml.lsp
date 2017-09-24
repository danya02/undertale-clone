0x000000:
    self.image_xscale = 0.9d
    self.image_alpha = 0.8d
    self.direction = (point_direction[]:int32 (var 130s) (var 210s) self.y self.x)
    self.speed = (/ (point_distance[]:int32 (var 130s) (var 210s) self.y self.x) (double 6s))
    self.image_angle = self.direction
    stog.alarm[3s] = 5s
    call (snd_play[]:int32 (var 20s))
    self.part = 0s
0x0000D8:
    exit
