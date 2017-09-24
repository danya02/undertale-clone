0x000000:
    self.gravity = 1s
    self.vspeed = (- -10s (random[]:int32 (var 6s)))
    if !(> self.y (+ self.room_height 40s)) goto 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    self.image_speed = 0s
    self.aa = (random[]:int32 (var 2s))
    self.image_blend = 0s
0x000088:
    exit
