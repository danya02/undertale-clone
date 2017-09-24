0x000000:
    if !(== self.active 1s) goto 0x0001F4
0x000014:
    push (caster_get_volume[]:int32 global.currentsong)
    if !(> -1s 0s:idealvolume) goto 0x000078
0x00003C:
    self.curvol1 = (- self.curvol1 0.05d)
    call (caster_set_volume[]:int32 self.curvol1 global.currentsong)
0x000078:
    push (caster_get_volume[]:int32 global.currentsong)
    if !(< -1s 0s:idealvolume) goto 0x0000DC
0x0000A0:
    self.curvol1 = (+ self.curvol1 0.05d)
    call (caster_set_volume[]:int32 self.curvol1 global.currentsong)
0x0000DC:
    push (caster_get_volume[]:int32 global.currentsong2)
    if !(> -1s 1s:idealvolume) goto 0x000140
0x000104:
    self.curvol2 = (- self.curvol2 0.05d)
    call (caster_set_volume[]:int32 self.curvol2 global.currentsong2)
0x000140:
    push (caster_get_volume[]:int32 global.currentsong2)
    if !(< -1s 1s:idealvolume) goto 0x0001A4
0x000168:
    self.curvol2 = (+ self.curvol2 0.05d)
    call (caster_set_volume[]:int32 self.curvol2 global.currentsong2)
0x0001A4:
    if !(< self.curvol1 0s) goto 0x0001CC
0x0001B8:
    self.curvol1 = 0.051d
0x0001CC:
    if !(< self.curvol2 0s) goto 0x0001F4
0x0001E0:
    self.curvol2 = 0.051d
0x0001F4:
    exit
