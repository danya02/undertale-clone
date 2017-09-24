0x000000:
    self.image_alpha = 0.2d
    self.active = 4s
    self.friction = 0.1d
    stog.alarm[3s] = (+ 30s (random[]:int32 (var 4s)))
    self.ramt = (+ 36s (floor[]:int32 (random[]:int32 (var 9s))))
    self.r = (/ self.sprite_width (double 2s))
    self.rot = (random[]:int32 (var 360s))
    self.goalx = (+ 1570.x 7s)
    self.goaly = (+ 1570.y 15s)
    if !(== self.room 93s) goto 0x000114
0x0000FC:
    self.goalx = (+ 1570.x 300s)
0x000114:
    self.gax = (+ -2s (random[]:int32 (var 4s)))
    call (move_towards_point[]:int32 (var 0.2d) self.goaly (+ self.goalx self.gax))
    self.idealrot = self.direction
    self.speed = 0s
    self.direction = (random[]:int32 (var 360s))
    self.speed = 3.2d
    self.move = 0s
    self.stop = 0s
    self.i = 0s
    if !(< (* self.i 2s) self.ramt) goto 0x000244
0x0001F8:
    self.stop = (+ self.stop (- self.ramt (* self.i 2s)))
    self.i = (+ self.i 1s)
    goto 0x0001D8
0x000244:
    self.rot = (- (- self.idealrot self.stop) 12s)
    self.col = 0s
0x000274:
    exit
