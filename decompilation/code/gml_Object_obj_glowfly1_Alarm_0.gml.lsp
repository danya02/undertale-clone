0x000000:
    if !(< self.speed 0.5d) goto 0x0000AC
0x00001C:
    self.friction = -0.04d
    self.speed = (+ self.speed 0.1d)
    call (move_towards_point[]:int32 self.speed (+ (- self.ystart 20s) (random[]:int32 (var 40s))) (+ (- self.xstart 20s) (random[]:int32 (var 40s))))
0x0000AC:
    if !(> self.speed 0.5d) goto 0x0000DC
0x0000C8:
    self.friction = 0.04d
0x0000DC:
    self.gravity = 0.03d
    self.gravity_direction = (random[]:int32 (var 360s))
    stog.alarm[0s] = (+ 30s (random[]:int32 (var 20s)))
0x000130:
    exit
