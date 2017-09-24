0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x000084
0x000078:
    self.murder = 1s
0x000084:
    push -5s
    if !(== 27s:flag 1s) goto 0x0000AC
0x0000A0:
    self.murder = 0s
0x0000AC:
    push -5s
    if !(>= 203s:flag 16s) goto 0x0000D4
0x0000C8:
    self.murder = 1s
0x0000D4:
    exit
