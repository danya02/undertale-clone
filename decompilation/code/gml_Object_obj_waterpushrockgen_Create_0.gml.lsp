0x000000:
    stog.alarm[0s] = 15s
    self.falling = 0s
    self.fell = 0s
    self.rate = 0s
    self.colliding = 0s
    self.rate_time = 90s
    if !(== self.room 84s) goto 0x0000A0
0x000064:
    self.x1 = 220s
    self.y1 = 180s
    self.x2 = 380s
    self.y2 = 260s
    self.triggery = 283s
0x0000A0:
    if !(== self.room 91s) goto 0x0000F0
0x0000B4:
    self.x1 = 80s
    self.x2 = 240s
    self.y1 = 180s
    self.y2 = 200s
    self.triggery = 263s
0x0000F0:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000120
0x000104:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x00013C
0x000128:
    stog.alarm[0s] = -1s
0x00013C:
    exit
