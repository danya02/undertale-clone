0x000000:
    self.volume = (+ self.volume self.fadespeed)
    if !(> self.volume 0.95d) goto 0x000044
0x000038:
    self.volume = 1s
0x000044:
    call (caster_set_volume[]:int32 self.volume self.mysong)
    if !(== self.volume 1s) goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    exit
