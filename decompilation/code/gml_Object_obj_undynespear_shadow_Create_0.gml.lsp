0x000000:
    self.goalx = (+ 1570.x 7s)
    self.goaly = (+ 1570.y 15s)
    call (move_towards_point[]:int32 (var 6s) self.goaly self.goalx)
    self.active = 1s
    self.rot = self.direction
    call (snd_play[]:int32 (var 20s))
    self.r = (/ self.sprite_width (double 2s))
    self.shadowy = (+ self.y 80s)
    self.shadowspeed = (/ self.vspeed 1.5d)
0x0000D8:
    exit
