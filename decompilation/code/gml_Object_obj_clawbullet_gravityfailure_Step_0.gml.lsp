0x000000:
    push self.y
    if !(> -5s (- 3s:idealborder self.sprite_height)) goto 0x000038
0x00002C:
    self.speed = 0s
0x000038:
    self.shake = (+ self.shake 0.02d)
    self.x = (- (+ self.x (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.y (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x0000C8:
    exit
