0x000000:
    if !(< self.col 3s) goto 0x00002C
0x000014:
    push (< self.bbox_bottom 1570.bbox_top)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000044
0x000034:
    call (scr_depth[]:int32 )
    goto 0x000050
0x000044:
    self.depth = 1000s
0x000050:
    self.col = (- self.col 1s)
    if !(< self.col 0s) goto 0x000088
0x00007C:
    self.col = 0s
0x000088:
    exit
