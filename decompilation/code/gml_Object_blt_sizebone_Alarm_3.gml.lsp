0x000000:
    if !(> self.vol 0.01d) goto 0x000070
0x00001C:
    call (caster_set_volume[]:int32 self.vol global.batmusic)
    self.vol = (- self.vol 0.01d)
    stog.alarm[3s] = 1s
    goto 0x000084
0x000070:
    call (caster_free[]:int32 global.batmusic)
0x000084:
    exit
