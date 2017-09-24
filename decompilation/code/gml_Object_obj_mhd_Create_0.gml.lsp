0x000000:
    stog.r[0s] = 2s
    stog.raspeed[0s] = (* (+ 2s (random[]:int32 (var 2s))) (choose[]:int32 (var -1s) (var 1s)))
    stog.rno[0s] = 10s
    stog.rang[0s] = 20s
    stog.rspeed[0s] = 2s
    stog.alarm[5s] = 130s
    self.image_alpha = 0.1d
    self.spec = 0s
0x0000C8:
    exit
