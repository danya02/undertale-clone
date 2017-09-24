0x000000:
    self.r = 20s
    self.rspeed = 0.5d
    self.ang = 0s
    self.angspeed = 0s
    push -5s
    push 0s:idealborder
    push -5s
    self.centerx = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.centery = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
0x0000D0:
    exit
