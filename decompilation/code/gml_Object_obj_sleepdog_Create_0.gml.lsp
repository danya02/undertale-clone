0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    push -5s
    self.y = (- 3s:idealborder self.sprite_height)
    push -5s
    push 0s:idealborder
    self.x = (- (/ (+ -5s 1s:idealborder) (double 2s)) (/ self.sprite_width (double 2s)))
    self.image_speed = 0.1d
    self.dmg = 5s
    self.myself = 0s
    self.hmove = 0s
0x0000C4:
    exit
