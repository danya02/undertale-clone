0x000000:
    if !(< global.plot 19.9d) goto 0x000070
0x00001C:
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x000048
0x000034:
    self.image_index = 765.image_index
    goto 0x000054
0x000048:
    self.image_index = 0s
0x000054:
    call (script_execute[]:int32 (var 2s) (var 106s))
0x000070:
    if !(== global.plot 19.9d) goto 0x0000A8
0x00008C:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000F4
0x0000B0:
    self.sprite_index = 1120s
    self.image_index = 0s
    self.image_speed = 0.2d
    global.interact = 1s
    global.plot = 20s
0x0000F4:
    exit
