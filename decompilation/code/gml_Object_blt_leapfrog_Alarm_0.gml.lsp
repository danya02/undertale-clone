0x000000:
    self.direction = (- 145s (random[]:int32 (var 20s)))
    self.gravity_direction = 280s
    self.gravity = 0.4d
    self.speed = (+ 7s (random[]:int32 (var 3s)))
    self.image_index = 1s
    self.dmg = (* self.dmg 1.8d)
0x00008C:
    exit
