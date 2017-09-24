0x000000:
    self.y = (- self.yprevious self.vspeed)
    self.vspeed = 0s
    self.gravity = 0s
    self.barked = 1s
    self.friction = 0.2d
    self.sprite_index = 100s
    stog.alarm[3s] = -1s
    stog.alarm[1s] = 6s
0x000088:
    exit
