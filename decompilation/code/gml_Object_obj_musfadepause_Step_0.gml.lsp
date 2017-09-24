0x000000:
    if !(== self.resume 0s) goto 0x00009C
0x000014:
    self.volume = (- self.volume self.fadespeed)
    if !(< self.volume 0.05d) goto 0x000058
0x00004C:
    self.volume = 0s
0x000058:
    call (caster_set_volume[]:int32 self.volume self.mysong)
    if !(== self.volume 0s) goto 0x00009C
0x000088:
    call (caster_pause[]:int32 self.mysong)
0x00009C:
    if !(== self.resume 1s) goto 0x0000DC
0x0000B0:
    call (caster_resume[]:int32 self.mysong)
    self.volume = 0s
    self.resume = 2s
0x0000DC:
    if !(== self.resume 2s) goto 0x00015C
0x0000F0:
    self.volume = (+ self.volume self.fadespeed)
    call (caster_set_volume[]:int32 self.volume self.mysong)
    if !(> self.volume self.fvolume) goto 0x00015C
0x000140:
    self.volume = self.fvolume
    call (instance_destroy[]:int32 )
0x00015C:
    exit
