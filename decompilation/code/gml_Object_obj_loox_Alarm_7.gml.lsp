0x000000:
    self.image_index = 0s
    self.image_speed = 0.5d
    if !(< self.mercymod 0s) goto 0x000040
0x000034:
    self.image_speed = 1s
0x000040:
    stog.alarm[7s] = 30s
    if !(< self.mercymod 0s) goto 0x00007C
0x000068:
    stog.alarm[7s] = 20s
0x00007C:
    exit
