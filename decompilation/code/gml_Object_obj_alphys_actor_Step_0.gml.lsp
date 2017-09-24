0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.fun 0s) goto 0x000158
0x000034:
    if !(bool (instance_exists[]:int32 (var 770s))) goto 0x000060
0x00004C:
    self.image_index = 770.image_index
    goto 0x000158
0x000060:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x000094
0x000080:
    push (== self.path_speed 0s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B4
0x00009C:
    self.image_index = 0s
    self.image_speed = 0s
0x0000B4:
    if !(> self.speed 0s) goto 0x0000DC
0x0000C8:
    self.image_speed = 0.2d
0x0000DC:
    if !(> self.path_speed 0s) goto 0x000104
0x0000F0:
    self.image_speed = 0.2d
0x000104:
    if !(== self.path_position 1s) goto 0x000130
0x000118:
    self.image_index = 0s
    self.image_speed = 0s
0x000130:
    if !(== self.npcdir 1s) goto 0x000158
0x000144:
    call (scr_npcdir[]:int32 (var 0s))
0x000158:
    exit
