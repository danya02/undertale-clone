0x000000:
    if !(== self.active 1s) goto 0x000068
0x000014:
    call (snd_play[]:int32 (var 106s))
    self.hspeed = self.myh
    self.vspeed = self.myv
    self.gravity = 0.5d
    self.active = 2s
0x000068:
    if !(== self.active 2s) goto 0x000110
0x00007C:
    self.image_angle = (- self.image_angle self.mya)
    if !(> self.y (+ self.ystart 55s)) goto 0x000110
0x0000B8:
    self.active = 3s
    self.speed = 0s
    self.gravity = 0s
    self.sprite_index = self.breaksprite
    self.depth = 600000
    call (snd_play[]:int32 (var 11s))
0x000110:
    exit
