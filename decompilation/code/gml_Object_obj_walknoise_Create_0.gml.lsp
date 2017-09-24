0x000000:
    self.mynoise = (caster_load[]:int32 (var "music/snowwalk.ogg"))
    if !(<= global.plot 35s) goto 0x000078
0x000030:
    call (caster_loop[]:int32 (var 0.8d) (var 1s) self.mynoise)
    call (caster_set_panning[]:int32 (var -1s) self.mynoise)
0x000078:
    exit
