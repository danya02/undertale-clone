0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000A8
0x000048:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x000080
0x000068:
    self.image_index = 0s
    self.image_speed = 0s
0x000080:
    if !(> self.speed 0s) goto 0x0000A8
0x000094:
    self.image_speed = 0.2d
0x0000A8:
    exit
