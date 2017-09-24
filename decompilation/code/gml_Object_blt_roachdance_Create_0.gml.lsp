0x000000:
    self.dmg = 0s
    self.image_speed = 0s
    self.image_speed = 0.16d
    push -5s
    push 0s:idealborder
    push -5s
    self.x = (+ 1s:idealborder (/ (- (- -5s 0s:idealborder) 24s) (double 2s)))
    push -5s
    self.y = (- 3s:idealborder 32s)
    stog.alarm[0s] = 120s
0x0000B4:
    exit
