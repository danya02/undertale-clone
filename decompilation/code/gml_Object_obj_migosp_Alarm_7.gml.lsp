0x000000:
    self.image_speed = 0.5d
    if !(< self.mercymod 0s) goto 0x000068
0x000028:
    stog.alarm[8s] = 10s
    stog.alarm[7s] = (+ 30s (random[]:int32 (var 40s)))
    goto 0x00007C
0x000068:
    self.image_speed = 0.1d
0x00007C:
    exit
