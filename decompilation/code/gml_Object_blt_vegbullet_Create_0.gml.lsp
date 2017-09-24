0x000000:
    if !(bool (instance_exists[]:int32 (var 597s))) goto 0x000024
0x000018:
    self.sprite_index = 53s
0x000024:
    self.dmg = 0s
    self.image_speed = 0s
    self.image_index = (round[]:int32 (random[]:int32 (var 5s)))
    self.graivty_direction = 270s
    self.gravity = 0.2d
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.r 0s) goto 0x0000D8
0x0000B0:
    self.hspeed = (+ 2s (random[]:int32 (var 0.2d)))
0x0000D8:
    if !(== self.r 1s) goto 0x000114
0x0000EC:
    self.hspeed = (- -2s (random[]:int32 (var 0.2d)))
0x000114:
    self.y = (- self.y 8s)
    push self.x
    if !(< -5s (+ 0s:idealborder 20s)) goto 0x00016C
0x000154:
    self.x = (+ self.x 20s)
0x00016C:
    self.green = 0s
0x000178:
    exit
