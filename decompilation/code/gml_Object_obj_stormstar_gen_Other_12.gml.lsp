0x000000:
    call (caster_play[]:int32 (var 1.1d) (var 0.8d) self.expl)
    self.off = 1s
    self.vol = 0.8d
    pushenv 1582s 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    popenv 0x00005C
0x00006C:
    if !(~ (bool (instance_exists[]:int32 (var 184s)))) goto 0x0000AC
0x000088:
    call (scr_shake[]:int32 (var 2s) (var 7s) (var 7s))
0x0000AC:
    exit
