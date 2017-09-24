0x000000:
    stog.alarm[5s] = 1s
    self.gm1 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.25d) self.gm1)
    self.gm2 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.5d) self.gm2)
    self.gm3 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.75d) self.gm3)
    self.con = 6s
    self.str = "HAHAHAHAHAHAHAHAHAHAHAHAHA#HAHAHAHAHAHAHAHAHAHAHAHAHA"
    stog.alarm[6s] = 190s
    call (snd_play[]:int32 (var 52s))
0x000154:
    exit
