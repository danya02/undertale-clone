0x000000:
    call (instance_create[]:int32 (var 180s) (var 0s) (var 0s))
    stog.alarm[3s] = 80s
    self.ll = (+ global.floss 1s)
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 self.ll (var "D") (var "FFFFF"))
    call (ini_close[]:int32 )
    if !(> self.ll 2s) goto 0x0000C4
0x0000B4:
    call (game_end[]:int32 )
    goto 0x0001C0
0x0000C4:
    self.gm1 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.25d) self.gm1)
    self.gm2 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.5d) self.gm2)
    self.gm3 = (caster_loop[]:int32 (var 1s) (var 0.45d) self.gmusic)
    call (caster_set_panning[]:int32 (var 0.75d) self.gm3)
0x0001C0:
    exit
