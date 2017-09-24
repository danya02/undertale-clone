0x000000:
    self.rotspeed = 32s
    self.x = (+ (- 743.x 4s) (random[]:int32 (var 8s)))
    self.y = (+ (- 743.y 4s) (random[]:int32 (var 8s)))
    self.image_alpha = 0s
    call (snd_play[]:int32 (var 13s))
    self.offsetdir = (point_direction[]:int32 743.y 743.x self.y self.x)
    self.x = (+ self.x (lengthdir_x[]:int32 self.offsetdir (var 140s)))
    self.y = (+ self.y (lengthdir_y[]:int32 self.offsetdir (var 140s)))
    self.direction = self.offsetdir
    self.speed = 4s
    self.friction = 0.2d
    self.dmg = 7s
    self.deactivate = 0s
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x000178
0x00016C:
    self.dmg = 11s
0x000178:
    exit
