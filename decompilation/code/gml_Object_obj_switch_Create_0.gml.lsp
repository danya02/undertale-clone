0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0s
    if !(> global.plot 90s) goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    exit
