0x000000:
    self.dmg = 0s
    self.vspeed = (- (+ 0.2d (random[]:int32 (var 2s))))
    self.friction = -0.1d
    self.image_speed = 0.25d
    self.image_angle = 90s
    push self.x
    if !(< -5s 0s:idealborder) goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    push self.x
    if !(> -5s (- 1s:idealborder 16s)) goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
