0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.pathmode 1s) goto 0x00008C
0x000034:
    if !(== self.path_position 1s) goto 0x000064
0x000048:
    self.image_index = 0s
    self.image_speed = 0s
    goto 0x00008C
0x000064:
    if !(!= self.path_speed 0s) goto 0x00008C
0x000078:
    self.image_speed = 0.2d
0x00008C:
    if !(== self.pathmode 0s) goto 0x0000CC
0x0000A0:
    if !(== self.speed 0s) goto 0x0000CC
0x0000B4:
    self.image_index = 0s
    self.image_speed = 0s
0x0000CC:
    if !(> self.speed 0s) goto 0x0000F4
0x0000E0:
    self.image_speed = 0.2d
0x0000F4:
    if !(== self.fun 0s) goto 0x00011C
0x000108:
    call (scr_npcdir[]:int32 (var 0s))
0x00011C:
    exit
