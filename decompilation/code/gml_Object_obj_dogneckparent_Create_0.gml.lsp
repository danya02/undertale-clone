0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    push -5s
    if (== 55s:flag 1s) goto 0x000090
0x000074:
    push -5s
    push (== 55s:flag 0s)
    goto 0x000094
0x000090:
    push 1s
0x000094:
    if !pop goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    exit
