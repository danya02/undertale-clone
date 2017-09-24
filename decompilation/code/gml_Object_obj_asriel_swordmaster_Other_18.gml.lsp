0x000000:
    if !(== self.never 0s) goto 0x000038
0x000014:
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_grab)
0x000038:
    self.never = 1s
0x000044:
    exit
