0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000D4
0x000048:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000074
0x000060:
    self.image_index = 775.image_index
    goto 0x0000D4
0x000074:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x0000AC
0x000094:
    self.image_index = 0s
    self.image_speed = 0s
0x0000AC:
    if !(> self.speed 0s) goto 0x0000D4
0x0000C0:
    self.image_speed = 0.2d
0x0000D4:
    exit
