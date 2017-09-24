0x000000:
    if (bool self.path_speed) goto 0x000024
0x000010:
    push (> self.speed 0s)
    goto 0x000028
0x000024:
    push 1s
0x000028:
    if !pop goto 0x000044
0x00002C:
    self.image_speed = 0.2d
    goto 0x00005C
0x000044:
    self.image_index = 0s
    self.image_speed = 0s
0x00005C:
    call (scr_depth[]:int32 )
0x000068:
    exit
