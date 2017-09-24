0x000000:
    self.siner = 0s
    push 1s
    push -1s
    stog.image_index* = (int32 (int32 self.bltx):blt)
    push 1s
    push -1s
    stog.blue* = (int32 (int32 self.bltx):blt)
    [blt_parent].vspeed = -2s
    [blt_parent].hspeed = 0s
    [blt_parent].friction = -0.3d
    if !(== global.hardmode 1s) goto 0x0000B0
0x00009C:
    [blt_parent].friction = -0.5d
0x0000B0:
    if !(== self.rr 2s) goto 0x0000FC
0x0000C4:
    [blt_parent].vspeed = -1s
    [blt_parent].friction = -0.1d
    self.rr = 3s
    self.siner = 1s
0x0000FC:
    exit
