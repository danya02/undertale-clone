0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_speed = 0s
    push -5s
    self.y = (+ (- 3s:idealborder self.sprite_height) 15s)
    push -5s
    self.x = (+ (- 1s:idealborder self.sprite_width) 19s)
    self.walking = 0s
    self.shake = 2s
    self.nowy = self.y
    self.nowx = self.x
    stog.alarm[5s] = 30s
    self.trueindex = 5s
    self.active = 0s
    self.atimer = 0s
    self.dmg = 9s
0x0000F8:
    exit
