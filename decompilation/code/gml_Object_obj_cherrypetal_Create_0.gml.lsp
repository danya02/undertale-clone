0x000000:
    self.gravity_direction = (+ 330s (random[]:int32 (var 20s)))
    self.gravity = 0.03d
    self.vspeed = (+ 0.1d (random[]:int32 (var 0.8d)))
    if !(> self.x 400s) goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    self.image_angle = (random[]:int32 (var 360s))
    self.angspeed = (+ 3s (random[]:int32 (var 6s)))
0x0000BC:
    exit
