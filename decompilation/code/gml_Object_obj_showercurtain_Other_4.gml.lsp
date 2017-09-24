0x000000:
    push -5s
    if !(== 483s:flag 1s) goto 0x000028
0x00001C:
    self.mode = 2s
0x000028:
    push -5s
    if !(>= 483s:flag 2s) goto 0x000050
0x000044:
    self.mode = 2s
0x000050:
    if !(== self.mode 0s) goto 0x0000D4
0x000064:
    self.dist = (caster_load[]:int32 (var "music/sfx_disturbing.ogg"))
    call (caster_pause[]:int32 global.currentsong)
    call (caster_loop[]:int32 (var 0.7d) (var 0.7d) self.dist)
    self.pit = 1s
0x0000D4:
    exit
