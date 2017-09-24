0x000000:
    push -5s
    self.w_l = (+ 0s:idealborder 5s)
    push -5s
    self.w_r = (- 1s:idealborder 30s)
    push -5s
    self.w_u = (+ 2s:idealborder 5s)
    push -5s
    self.w_d = (- 3s:idealborder 30s)
    self.cl = 0s
    self.x = self.w_l
    self.y = self.w_u
    stog.alarm[0s] = 10s
    self.dmg = 8s
    self.alt = 0s
0x0000D8:
    exit
