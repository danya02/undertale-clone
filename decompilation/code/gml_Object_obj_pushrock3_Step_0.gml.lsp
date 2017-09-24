0x000000:
    call (scr_depth[]:int32 )
    push -5s
    if !(== 35s:flag 1s) goto 0x000040
0x000028:
    self.x = (+ self.xstart 60s)
0x000040:
    exit
