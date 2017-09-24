0x000000:
    self.xx = 0s
    self.yy = 0s
    self.xxspeed = 0.5d
    self.yyspeed = 0.25d
    self.image_alpha = 0.25d
    self.sprite_index = 2142s
    if !(== self.room 260s) goto 0x000088
0x000074:
    self.image_alpha = 0.6d
0x000088:
    if !(== self.room 258s) goto 0x0000A8
0x00009C:
    self.image_alpha = 1s
0x0000A8:
    push -5s
    if !(== 490s:flag 1s) goto 0x0000D0
0x0000C4:
    self.image_alpha = 0s
0x0000D0:
    exit
