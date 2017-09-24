0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    push -5s
    if !(== 7s:flag 1s) goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    exit
