0x000000:
    self.active = 0s
    if !(== self.room 113s) goto 0x000084
0x000020:
    if !(< global.plot 114s) goto 0x000084
0x000034:
    stog.flag[17s] = 0s
    self.active = 1s
    [obj_mainchara].image_angle = -90s
    [obj_mainchara].y = (+ 1570.y 10s)
    global.facing = 0s
0x000084:
    exit
