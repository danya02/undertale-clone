0x000000:
    self.vol = (- self.vol 0.05d)
    call (caster_set_volume[]:int32 self.vol global.batmusic)
    if !(< self.vol 0.06d) goto 0x000070
0x000058:
    call (caster_free[]:int32 global.batmusic)
    goto 0x000084
0x000070:
    stog.alarm[3s] = 2s
0x000084:
    exit
