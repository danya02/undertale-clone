0x000000:
    if !(== self.active 0s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(== self.active 1s) goto 0x000054
0x000034:
    self.active = 2s
    stog.alarm[2s] = 60s
0x000054:
    if !(== self.active 2s) goto 0x000074
0x000068:
    global.interact = 1s
0x000074:
    if !(== self.active 3s) goto 0x0000A8
0x000088:
    self.active = 4s
    stog.alarm[2s] = 10s
0x0000A8:
    if !(== self.active 5s) goto 0x00015C
0x0000BC:
    [obj_mainchara].image_angle = (+ 1570.image_angle 18s)
    [obj_mainchara].y = (- 1570.y 4s)
    [obj_mainchara].x = (- 1570.x 8s)
    if !(>= 1570.image_angle -1s) goto 0x00015C
0x000118:
    [obj_mainchara].image_angle = 0s
    if !(== self.room 113s) goto 0x000144
0x000138:
    global.plot = 115s
0x000144:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00015C:
    exit
