0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.dt = 0s
    push -5s
    if !(== 253s:flag 1s) goto 0x000098
0x000080:
    self.sprite_index = 1297s
    self.image_index = 0s
0x000098:
    push -5s
    if !(== 253s:flag 2s) goto 0x0000CC
0x0000B4:
    self.sprite_index = 1297s
    self.image_index = 1s
0x0000CC:
    push -5s
    if !(>= 253s:flag 3s) goto 0x000100
0x0000E8:
    self.sprite_index = 1297s
    self.image_index = 2s
0x000100:
    exit
