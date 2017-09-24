0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(> self.myinteract 0s) goto 0x000098
0x000048:
    self.sprite_index = 1803s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000094
0x00006C:
    if !(== 782.halt 0s) goto 0x000094
0x000080:
    self.image_speed = 0.1d
0x000094:
    goto 0x0000BC
0x000098:
    self.sprite_index = 1802s
    self.image_index = 0s
    self.image_speed = 0s
0x0000BC:
    exit
