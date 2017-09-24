0x000000:
    self.con = 0s
    self.myinteract = 0s
    self.dt = (scr_marker[]:int32 (var 2132s) (var 0s) (var 175s))
    push 1000s
    stog.depth* = (int32 self.dt)
    self.image_speed = 0.2d
    call (scr_depth[]:int32 )
    push -5s
    if !(> 489s:flag 0s) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    exit
