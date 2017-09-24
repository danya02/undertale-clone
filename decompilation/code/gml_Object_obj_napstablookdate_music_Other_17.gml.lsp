0x000000:
    if !(== self.songplaying 1s) goto 0x00002C
0x000014:
    self.fadeout = 1s
    self.curvol = 1s
0x00002C:
    if !(!= self.songplaying 1s) goto 0x000098
0x000040:
    self.songplaying = 1s
    self.curvol = 0.5d
    self.fadeout = 2s
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
0x000098:
    exit
