0x000000:
    self.volume = (- self.volume self.fadespeed)
    if !(< self.volume 0.05d) goto 0x000044
0x000038:
    self.volume = 0s
0x000044:
    call (caster_set_volume[]:int32 self.volume self.mysong)
    if !(== self.volume 0s) goto 0x0000A8
0x000074:
    call (caster_stop[]:int32 self.mysong)
    call (caster_free[]:int32 self.mysong)
    call (instance_destroy[]:int32 )
0x0000A8:
    exit
