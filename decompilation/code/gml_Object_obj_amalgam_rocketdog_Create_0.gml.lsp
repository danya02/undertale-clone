0x000000:
    self.con = 0s
    stog.alarm[4s] = 10s
    self.image_speed = 0s
    self.image_xscale = 3s
    self.image_yscale = 3s
    push -5s
    self.y = (- (- 3s:idealborder self.sprite_height) 2s)
    push -5s
    self.x = (- 1s:idealborder self.sprite_width)
    self.shake = 0s
    self.nowx = self.x
    self.nowy = self.y
    self.dmg = 9s
0x0000CC:
    exit