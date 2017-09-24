0x000000:
    self.myinteract = 0s
    self.read = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    call (scr_depth[]:int32 )
    self.dooract = 0s
    self.touched = 0s
    push -5s
    if !(> 88s:flag 2s) goto 0x00007C
0x000070:
    self.dooract = 1s
0x00007C:
    exit
