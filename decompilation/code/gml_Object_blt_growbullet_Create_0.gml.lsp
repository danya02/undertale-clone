0x000000:
    self.angle = 0s
    self.angleadd = 0s
    self.dmg = 0s
    self.image_speed = 0s
    call (move_towards_point[]:int32 (var 0.5d) (/ self.room_height (double 2s)) (/ self.room_width (double 2s)))
    stog.alarm[7s] = 45s
    self.friction = -0.25d
    self.blue = 0s
0x0000A8:
    exit
