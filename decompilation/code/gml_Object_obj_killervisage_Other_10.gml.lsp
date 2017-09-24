0x000000:
    if !(== self.active 0s) goto 0x000044
0x000014:
    call (caster_play[]:int32 (var 1s) (var 1s) self.chime)
    self.active = 1s
0x000044:
    exit
