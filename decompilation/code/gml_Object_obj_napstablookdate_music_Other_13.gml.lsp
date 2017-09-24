0x000000:
    if !(== self.songplaying 2s) goto 0x00002C
0x000014:
    self.fadeout = 1s
    self.curvol = 1s
0x00002C:
    if !(!= self.songplaying 2s) goto 0x000054
0x000040:
    push (== self.fadeout 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x0000C8
0x00005C:
    self.songplaying = 2s
    self.curvol = 0s
    self.fadeout = 2s
    if !(== (caster_is_playing[]:int32 self.napstachords) 0s) goto 0x0000C8
0x00009C:
    call (caster_loop[]:int32 (var 0.4d) (var 0s) self.napstachords)
0x0000C8:
    exit
