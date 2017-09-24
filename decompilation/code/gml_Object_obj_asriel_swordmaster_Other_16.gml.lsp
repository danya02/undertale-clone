0x000000:
    if !(== self.freakcon 0s) goto 0x000078
0x000014:
    call (caster_play[]:int32 (var 1s) (var 1.2d) self.sfx_jafe)
    call (caster_play[]:int32 (var 1.4d) (var 0.7d) self.sfx_cut)
    goto 0x0000F4
0x000078:
    if !(== self.last 0s) goto 0x0000E8
0x00008C:
    call (caster_play[]:int32 (var 1s) (var 0.9d) self.sfx_cut)
    call (caster_play[]:int32 (var 1s) (var 0.7d) self.sfx_spk)
    goto 0x0000F4
0x0000E8:
    self.last = 1s
0x0000F4:
    exit
