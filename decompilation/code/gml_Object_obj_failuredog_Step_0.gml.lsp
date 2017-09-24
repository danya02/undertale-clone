0x000000:
    if !(== self.fall 1s) goto 0x0000C8
0x000014:
    self.gravity_direction = 90s
    self.vspeed = (+ self.vspeed (+ self.friction 0.3d))
    self.image_angle = (- self.image_angle (* self.speed 2s))
    if !(> self.y self.fally) goto 0x0000C8
0x000088:
    self.hspeed = (- 6s (random[]:int32 (var 12s)))
    self.vspeed = (- self.vspeed)
    self.fall = 2s
0x0000C8:
    if !(== self.fall 2s) goto 0x000158
0x0000DC:
    self.vspeed = (+ self.vspeed (+ self.friction 0.1d))
    self.image_angle = (- self.image_angle (* self.speed 4s))
    if !(> self.y (+ self.fally 7s)) goto 0x000158
0x00014C:
    self.fall = 3s
0x000158:
    if !(== self.fall 3s) goto 0x0001C0
0x00016C:
    self.vspeed = 0s
    self.image_alpha = (- self.image_alpha 0.03d)
    if !(< self.image_alpha 0.06d) goto 0x0001C0
0x0001B4:
    call (instance_destroy[]:int32 )
0x0001C0:
    if !(== self.fall 6s) goto 0x0002A4
0x0001D4:
    self.gravity_direction = 180s
    self.vspeed = (+ self.vspeed (+ self.friction 0.3d))
    self.image_angle = (+ self.image_angle (* self.speed 2s))
    if !(> self.y self.fally) goto 0x0002A4
0x000248:
    self.hspeed = (+ 4s (* (random[]:int32 (var 3s)) (choose[]:int32 (var 1s) (var -1s))))
    self.vspeed = (- self.vspeed)
    self.fall = 2s
0x0002A4:
    exit
