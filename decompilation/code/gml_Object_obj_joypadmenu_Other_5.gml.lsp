0x000000:
    if !(== self.fun 1s) goto 0x00003C
0x000014:
    call (caster_free[]:int32 self.harp)
    call (caster_free[]:int32 self.weathermusic)
0x00003C:
    exit
