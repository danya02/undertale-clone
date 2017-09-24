0x000000:
    self.image_speed = 0.1d
    self.lit = 0s
    self.active = 1s
    if !(== self.room 262s) goto 0x00004C
0x000040:
    self.active = 0s
0x00004C:
    push -5s
    if !(== 485s:flag 1s) goto 0x000094
0x000068:
    self.active = 0s
    if !(== self.room 262s) goto 0x000094
0x000088:
    self.active = 2s
0x000094:
    exit
