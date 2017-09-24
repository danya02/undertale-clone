0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(< 1570.x (- self.x 40s)) goto 0x00008C
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
    if !(> 1570.x (- self.x 25s)) goto 0x0000D8
0x0000CC:
    self.path_speed = 3s
0x0000D8:
    if !(> 1570.x (- self.x 10s)) goto 0x000104
0x0000F8:
    self.path_speed = 5s
0x000104:
    self.image_speed = 0.2d
0x000118:
    call (scr_npcdir[]:int32 (var 0s))
    if !(== self.path_position 1s) goto 0x000170
0x000140:
    call (instance_create[]:int32 (var 873s) self.y self.x)
    call (instance_destroy[]:int32 )
0x000170:
    exit
