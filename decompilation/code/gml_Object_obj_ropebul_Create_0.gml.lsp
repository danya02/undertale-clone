0x000000:
    self.type = 0s
    stog.alarm[0s] = 1s
    self.go = 0s
    self.hspeed = -4s
    push -5s
    self.arb = (- 2s:idealborder 50s)
    push -5s
    self.arb2 = (+ (- 2s:idealborder self.sprite_height) 10s)
0x000084:
    exit
