0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000B0
0x000048:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000074
0x000060:
    self.image_index = 775.image_index
    goto 0x0000B0
0x000074:
    if !(== self.speed 0s) goto 0x00009C
0x000088:
    push (== self.path_speed 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    self.image_index = 0s
0x0000B0:
    if !(== self.dir 1s) goto 0x0000D8
0x0000C4:
    call (scr_npcdir[]:int32 (var 1s))
0x0000D8:
    exit
