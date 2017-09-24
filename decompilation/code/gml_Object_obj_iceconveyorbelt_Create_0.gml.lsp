0x000000:
    stog.alarm[0s] = 1s
    self.stage = 0s
    self.icex = 0s
    self.image_speed = 0.334d
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000068
0x000054:
    stog.alarm[0s] = -1s
0x000068:
    push -5s
    if !(== 7s:flag 1s) goto 0x000098
0x000084:
    stog.alarm[0s] = -1s
0x000098:
    exit
