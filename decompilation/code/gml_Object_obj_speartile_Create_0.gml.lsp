0x000000:
    self.con = 0s
    self.duty = 0s
    self.image_alpha = 0s
    self.image_speed = 0s
    self.x = 1570.x
    self.y = 1570.y
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.x = (+ self.x (+ -40s (* (floor[]:int32 (random[]:int32 (var 5s))) 20s)))
    self.y = (+ self.y (+ -40s (* (floor[]:int32 (random[]:int32 (var 5s))) 20s)))
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.facer = 1s
    self.sounded = 0s
    self.active = 1s
0x000124:
    exit
