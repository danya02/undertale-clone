0x000000:
    if !(bool (instance_exists[]:int32 (var 597s))) goto 0x000024
0x000018:
    self.sprite_index = 56s
0x000024:
    self.dmg = 0s
    self.image_speed = 0s
    self.image_index = (round[]:int32 (random[]:int32 (var 5s)))
    self.y = (- self.y 8s)
    self.vspeed = -0.5d
    self.gravity = 0.25d
    self.gravity_direction = 270s
    push self.x
    if !(< -5s (+ 0s:idealborder 15s)) goto 0x0000E8
0x0000D0:
    self.x = (+ self.x 15s)
0x0000E8:
    self.green = 0s
0x0000F4:
    exit
