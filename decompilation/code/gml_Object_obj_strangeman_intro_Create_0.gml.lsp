0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_speed = 0.1d
    push -5s
    self.y = (+ (- 3s:idealborder self.sprite_height) 15s)
    push -5s
    self.x = (+ (- 1s:idealborder self.sprite_width) 19s)
    self.con = 0s
    self.hspeed = -1s
    self.shake = 0s
    self.nowx = 0s
    self.nowy = 0s
0x0000C0:
    exit
