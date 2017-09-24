0x000000:
    self.hspeed = 5s
    self.vspeed = 5s
    self.direction = (- self.direction (- 15s (random[]:int32 (var 30s))))
    call (instance_create[]:int32 (var 373s) (+ self.y 5s) (+ self.x 5s))
    self.image_alpha = 0.1d
    self.dmg = 8s
0x000098:
    exit
