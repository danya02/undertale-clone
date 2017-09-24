0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(> 1570.y (+ self.y 80s)) goto 0x00008C
0x000054:
    if !(== self.t 0s) goto 0x000088
0x000068:
    stog.alarm[5s] = 30s
    self.t = 1s
0x000088:
    goto 0x000118
0x00008C:
    stog.alarm[5s] = 24s
    self.path_speed = 2s
    if !(< 1570.y (+ self.y 65s)) goto 0x0000D8
0x0000CC:
    self.path_speed = 3s
0x0000D8:
    if !(< 1570.y (+ self.y 50s)) goto 0x000104
0x0000F8:
    self.path_speed = 4s
0x000104:
    self.image_speed = 0.2d
0x000118:
    call (scr_npcdir[]:int32 (var 0s))
0x00012C:
    exit
