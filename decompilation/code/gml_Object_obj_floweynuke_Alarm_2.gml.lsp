0x000000:
    self.vspeed = 24s
    call (caster_stop[]:int32 (var 140s))
    call (caster_play[]:int32 (+ 1s (random[]:int32 (var 0.1d))) (var 0.8d) (var 140s))
0x000064:
    exit
