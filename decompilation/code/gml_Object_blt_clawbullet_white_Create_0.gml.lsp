0x000000:
    self.dmg = 0s
    self.l = 0s
    self.parent = 0s
    stog.alarm[3s] = 2s
    self.startspeed = 0s
    self.image_speed = 0.5d
    self.startdir = 0s
    self.limit = (+ 4s (round[]:int32 (random[]:int32 (var 3s))))
    self.startgrav = 0s
    self.rotdir = 0s
    self.x = (- self.x 12s)
    self.y = (- self.y 12s)
0x0000D4:
    exit
